using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.Net.Sockets;


namespace SendRandomData
{
    class Program
    {
        static void Main(string[] args)
        {
            foreach (String arg in args)
            {
                Console.WriteLine(arg);
            }
            IPAddress ipAddress = IPAddress.Parse(args[0]);
            int port = int.Parse(args[1]);

            TcpClient tcpClient = new TcpClient();

            tcpClient.Connect(ipAddress, port);

            Random random = new Random();
            NetworkStream networkStream;
            byte[] data;

            String[] file = System.IO.File.ReadAllLines(args[2]);
            while (true)
            {
                //Iter lines in file
                //Separate bytes with spaces on a line. Each line is one byte array
                foreach (String line in file)
                {
                    //Create packet
                    networkStream = tcpClient.GetStream();
                    String[] splitLine = line.Split(' ');
                    data = new byte[splitLine.Length];

                    //Iter blocks in line
                    for (int i = 0; i > splitLine.Length; i++)
                    {
                        Console.Write(data[i]);
                        data[i] = byte.Parse(splitLine[i]);
                    }

                    Console.Write("CanWrite = " + networkStream.CanWrite + "|");
                    //Console.Write("Writing...");
                    networkStream.Write(data, 0, data.Length);
                    networkStream.Flush();
                }
            }

        }
    }
}
