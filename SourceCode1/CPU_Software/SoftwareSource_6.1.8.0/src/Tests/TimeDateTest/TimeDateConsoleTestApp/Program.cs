using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataCollectionSDK;

namespace TimeDateConsoleTestApp
{
    class Program
    {
        static void Main(string[] args)
        {
            ModbusSDK modbusSDK = new ModbusSDK("10.150.225.126", 502, 5000);
            SPUSDK.SetTimeAndDate(modbusSDK, DateTime.UtcNow);

            for (int i = 0; i < 10; i++)
            {
                Console.WriteLine(SPUSDK.GetTimeAndDate(modbusSDK));
                System.Threading.Thread.Sleep(10 * 1000);
            }
            Console.ReadLine();
        }
    }
}
