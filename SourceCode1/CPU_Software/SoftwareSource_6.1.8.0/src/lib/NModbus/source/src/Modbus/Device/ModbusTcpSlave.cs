using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Globalization;
using System.Linq;
using System.Net.Sockets;
using System.IO;
using log4net;
using Modbus.IO;
using Unme.Common;
using Unme.Common.NullReferenceExtension;

namespace Modbus.Device
{
	/// <summary>
	/// Modbus TCP slave device.
	/// </summary>
	public class ModbusTcpSlave : ModbusSlave
	{
		private readonly object _mastersLock = new object();
		private readonly object _serverLock = new object();
		private readonly ILog _logger = LogManager.GetLogger(typeof(ModbusTcpSlave));
		private readonly Dictionary<string, ModbusMasterTcpConnection> _masters = new Dictionary<string, ModbusMasterTcpConnection>();
		private TcpListener _server;
        
        /// <summary>
        /// The maximum number of concurrent connections
        /// </summary>
        int MaxNumberConnections = 30;

		private ModbusTcpSlave(byte unitId, TcpListener tcpListener)
			: base(unitId, new EmptyTransport())
		{
			if (tcpListener == null)
				throw new ArgumentNullException("tcpListener");

			_server = tcpListener;
		}

		/// <summary>
		/// Gets the Modbus TCP Masters connected to this Modbus TCP Slave.
		/// </summary>
		public ReadOnlyCollection<TcpClient> Masters
		{
			get
			{
				lock (_mastersLock)
					return new ReadOnlyCollection<TcpClient>(_masters.Values.Select(mc => mc.TcpClient).ToList());
			}
		}

		/// <summary>
		/// Gets the server.
		/// </summary>
		/// <value>The server.</value>
		/// <remarks>
		/// This property is not thread safe, it should only be consumed within a lock.
		/// </remarks>
		private TcpListener Server
		{
			get
			{
				if (_server == null)
					throw new ObjectDisposedException("Server");

				return _server;
			}
		}

		/// <summary>
		/// Modbus TCP slave factory method.
		/// </summary>
		public static ModbusTcpSlave CreateTcp(byte unitId, TcpListener tcpListener)
		{
			return new ModbusTcpSlave(unitId, tcpListener);
		}

		/// <summary>
		/// Start slave listening for requests.
		/// </summary>
		public override void Listen()
		{
			_logger.Debug("Start Modbus Tcp Server.");

			lock (_serverLock)
			{
				try
				{
					Server.Start();

					// use Socket async API for compact framework compat
					Server.Server.BeginAccept(AcceptCompleted, this);
				}
				catch (ObjectDisposedException)
				{
					// this happens when the server stops
				}
			}
		}

		internal void RemoveMaster(string endPoint)
		{
            if (endPoint != null)
            {
                lock (_mastersLock)
                {
                    if (!_masters.Remove(endPoint))
                    {
                        _logger.ErrorFormat("Tried to removed endpoint {0} from master list but it does not exist.", endPoint);
                    }
                }
                _logger.DebugFormat("Removed Master {0}", endPoint);
            }
            else
            {
                _logger.ErrorFormat("Tried to remove a null endpoint from master list.");
            }
		}

		internal void AcceptCompleted(IAsyncResult ar)
		{
			ModbusTcpSlave slave = (ModbusTcpSlave) ar.AsyncState;
            int numberOfConnections;

            try
            {
                // use Socket async API for compact framework compat
                Socket socket = null;
                lock (_serverLock)
                    socket = Server.Server.EndAccept(ar);

                lock (_mastersLock)
                    numberOfConnections = _masters.Count();

                if (numberOfConnections < MaxNumberConnections)
                {
                    TcpClient client = new TcpClient { Client = socket };
                    var masterConnection = new ModbusMasterTcpConnection(client, slave);
                    masterConnection.ModbusMasterTcpConnectionClosed += (sender, eventArgs) => RemoveMaster(eventArgs.EndPoint);

                    lock (_mastersLock)
                        _masters.Add(client.Client.RemoteEndPoint.ToString(), masterConnection);

                    _logger.DebugFormat("Accept Connection {0} of {1}", numberOfConnections+1,MaxNumberConnections);
                }
                else
                {
                    _logger.ErrorFormat("Rejected connections. {0} out of {1} connections in use",numberOfConnections,MaxNumberConnections);
                    socket.Shutdown(SocketShutdown.Both);
                    socket.Close();
                }

                // Accept another client
                // use Socket async API for compact framework compat
                lock (_serverLock)
                    Server.Server.BeginAccept(AcceptCompleted, slave);
            }
            catch (ObjectDisposedException)
            {
                // this happens when the server stops
            }
            catch (SocketException)
            {
                // this happens when a client shuts the remote end
            }
            catch(IOException)
            {
                //This happens when trying to start a BeginRead on a closed socket
            }
		}

		/// <summary>
		/// Releases unmanaged and - optionally - managed resources
		/// </summary>
		/// <param name="disposing"><c>true</c> to release both managed and unmanaged resources; <c>false</c> to release only unmanaged resources.</param>
		/// <remarks>Dispose is thread-safe.</remarks>
		protected override void Dispose(bool disposing)
		{
			if (disposing)
			{
				// double-check locking
				if (_server != null)
				{
					lock (_serverLock)
					{
						if (_server != null)
						{
							_server.Stop();
							_server = null;
						}
					}
				}
			}
		}
	}
}
