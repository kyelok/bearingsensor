using System;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Reflection;
using System.Threading;
using log4net;
using Modbus.IO;
using Modbus.Message;
using Unme.Common;

namespace Modbus.Device
{
	internal class ModbusMasterTcpConnection : ModbusDevice, IDisposable
	{
		private readonly ILog _log = LogManager.GetLogger(Assembly.GetCallingAssembly(),
			String.Format(CultureInfo.InvariantCulture, "{0}.Instance{1}", typeof(ModbusMasterTcpConnection).FullName, Interlocked.Increment(ref _instanceCounter)));

		private readonly TcpClient _client;		
		private readonly string _endPoint;
		private readonly Stream _stream;
		private readonly ModbusTcpSlave _slave;
		private static int _instanceCounter;
		private byte[] _mbapHeader = new byte[6];
		private byte[] _messageFrame;

		public ModbusMasterTcpConnection(TcpClient client, ModbusTcpSlave slave)
			: base(new ModbusIpTransport(new TcpClientAdapter(client)))
		{
			if (client == null)
				throw new ArgumentNullException("client");
			if (slave == null)
				throw new ArgumentException("slave");

			_client = client;
			_endPoint = client.Client.RemoteEndPoint.ToString();
			_stream = client.GetStream();
			_slave = slave;
			_log.DebugFormat("Creating new Master connection at IP:{0}", EndPoint);

			_log.Debug("Begin reading header.");

			Stream.BeginRead(_mbapHeader, 0, 6, ReadHeaderCompleted, null);
		}

		/// <summary>
		/// Occurs when a Modbus master TCP connection is closed.
		/// </summary>
		public event EventHandler<TcpConnectionEventArgs> ModbusMasterTcpConnectionClosed;

		public string EndPoint
		{
			get
			{
				return _endPoint;
			}
		}

		public Stream Stream
		{
			get
			{
				return _stream;
			}
		}

		public TcpClient TcpClient
		{
			get
			{
				return _client;
			}
		}

		internal void ReadHeaderCompleted(IAsyncResult ar)
		{
			_log.Debug("Read header completed.");

			CatchExceptionAndRemoveMasterEndPoint(() =>
			{
				// this is the normal way a master closes its connection
				if (Stream.EndRead(ar) == 0)
				{
					_log.Debug("0 bytes read, Master has closed Socket connection.");
					ModbusMasterTcpConnectionClosed.Raise(this, new TcpConnectionEventArgs(EndPoint));
					return;
				}

				_log.DebugFormat("MBAP header: {0}", _mbapHeader.Join(", "));
				ushort frameLength = (ushort) IPAddress.HostToNetworkOrder(BitConverter.ToInt16(_mbapHeader, 4));
				_log.DebugFormat("{0} bytes in PDU.", frameLength);
				_messageFrame = new byte[frameLength];

				Stream.BeginRead(_messageFrame, 0, frameLength, ReadFrameCompleted, null);
			}, EndPoint);
		}

		internal void ReadFrameCompleted(IAsyncResult ar)
		{
			CatchExceptionAndRemoveMasterEndPoint(() =>
			{
				_log.DebugFormat("Read Frame completed {0} bytes", Stream.EndRead(ar));
				byte[] frame = _mbapHeader.Concat(_messageFrame).ToArray();
                _log.DebugFormat("RX: {0}", frame.Join(", "));

				IModbusMessage request = ModbusMessageFactory.CreateModbusRequest(frame.Slice(6, frame.Length - 6).ToArray());
				request.TransactionId = (ushort) IPAddress.NetworkToHostOrder(BitConverter.ToInt16(frame, 0));

				// perform action and build response
				IModbusMessage response = _slave.ApplyRequest(request);
				response.TransactionId = request.TransactionId;

				// write response
				byte[] responseFrame = Transport.BuildMessageFrame(response);
                _log.DebugFormat("TX: {0}", responseFrame.Join(", "));
				Stream.BeginWrite(responseFrame, 0, responseFrame.Length, WriteCompleted, null);
			}, EndPoint);
		}

		internal void WriteCompleted(IAsyncResult ar)
		{
			_log.Debug("End write.");

			CatchExceptionAndRemoveMasterEndPoint(() =>
			{
				Stream.EndWrite(ar);
				_log.Debug("Begin reading another request.");
				Stream.BeginRead(_mbapHeader, 0, 6, ReadHeaderCompleted, null);
			}, EndPoint);
		}

		/// <summary>
		/// Catches all exceptions thrown when action is executed and removes the master end point.
		/// The exception is ignored when it simply signals a master closing its connection.
		/// </summary>
		internal void CatchExceptionAndRemoveMasterEndPoint(Action action, string endPoint)
		{
			if (action == null)
				throw new ArgumentNullException("action");
			if (endPoint == null)
				throw new ArgumentNullException("endPoint");
			if (endPoint.IsNullOrEmpty())
				throw new ArgumentException("Argument endPoint cannot be empty.");

			try
			{
				action.Invoke();
			}
			catch (Exception e)
			{
                _log.ErrorFormat("Exception encountered while performing asynchronous socket IO.  Closing the socket to the client.  Exception: {0}", e.Message);
                ModbusMasterTcpConnectionClosed.Raise(this, new TcpConnectionEventArgs(EndPoint));

                try
                {
                    _client.Close();
                }
                catch(Exception) //Catch any exception while trying to close
                { }

                if (e is IOException || e is ObjectDisposedException)
                {
				    SocketException socketException = e.InnerException as SocketException;
				    if (socketException != null)
				    {
                        _log.ErrorFormat("Socket Exception Error Code, Master closed connection.", socketException);
				    }
                    return;
                }
                else
                {
                    _log.ErrorFormat("Unexpected exception encountered", e);
                    return;
                }
			}
		}
	}
}
