/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ServiceModel;
using System.ServiceModel.Web;
using WebService;

namespace WebServer
{
    class Program
    {
        static void Main(string[] args)
        {
            using (WebServiceHost serviceHost = new WebServiceHost(typeof(WebService.WebService)))
            {
                serviceHost.Open();
                Console.WriteLine("AMOT Web service is running... Hit RETURN to exit.");
                Console.ReadLine();
                serviceHost.Close();
            }
            Console.WriteLine("AMOT Web service has closed, have a nice day...");
        }
    }
}
