using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using schemas.glgroup.com.glmm._1._01;
using System.IO;
using System.ServiceModel;

namespace GLMM
{
    class Program
    {
        static void Main(string[] args)
        {
            string token;
            string updateToken;
            ServiceResult result;
            byte[] buffer = null;
            EndpointAddress clientEndPoint;

            //Create the end point with the actual server address
            clientEndPoint = new EndpointAddress("http://46.254.120.88/glmm/BaseCbmService.asmx");

            BasicHttpBinding binding = new BasicHttpBinding();
            if (clientEndPoint.Uri.Scheme == Uri.UriSchemeHttps)
            {
                BasicHttpSecurity security = new BasicHttpSecurity();
                security.Mode = BasicHttpSecurityMode.Transport;
                binding.Security = security;
            }

            BaseCbmServiceWebServiceSoapClient glClient = new BaseCbmServiceWebServiceSoapClient(binding, clientEndPoint);

            result = glClient.Login("testuser", "123", out token);

            if (result.Success)
            {
                using (BinaryReader reader = new BinaryReader(File.Open(@"c:\reports\2012-04-15 to 2012-04-17 Unknown.xml",FileMode.Open)))
                {

                    int length = (int)reader.BaseStream.Length;
                    buffer = reader.ReadBytes(length);
                }

                result = glClient.SendOnlineMeasurement(token, buffer, out updateToken);

                if (!result.Success)
                {
                    Console.WriteLine("Result {0}", result.ErrorMessage);
                    Console.WriteLine("Result {0}", result.DeveloperDetails);
                }
            }
            else
            {
                Console.WriteLine(result.ErrorMessage);
                Console.WriteLine(result.DeveloperDetails);
            }
        }
    }
}
