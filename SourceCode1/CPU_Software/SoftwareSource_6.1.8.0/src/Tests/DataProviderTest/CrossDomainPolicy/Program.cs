using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.ServiceModel;
using System.ServiceModel.Web;
using System.ServiceModel.Description;
using System.IO;

namespace CrossDomainPolicy
{
    [ServiceContract]
    public interface ITest
    {
        [OperationContract]
        string Echo(string text);
    }
    [ServiceContract]
    public interface ITcpPolicyRetriever
    {
        [OperationContract, WebGet(UriTemplate = "/clientaccesspolicy.xml")]
        Stream GetSilverlightPolicy();
    }
    public class Service : ITest, ITcpPolicyRetriever
    {
        public string Echo(string text)
        {
            return text;
        }
        public Stream GetSilverlightPolicy()
        {
            string result = @"<?xml version=""1.0"" encoding=""utf-8""?>
<access-policy>
    <cross-domain-access>
        <policy>
            <allow-from http-request-headers=""*"">
                <domain uri=""*""/>
            </allow-from>
            <grant-to>
                <socket-resource port=""4504"" protocol=""tcp"" />
            </grant-to>
        </policy>
    </cross-domain-access>
</access-policy>";
            WebOperationContext.Current.OutgoingResponse.ContentType = "application/xml";
            return new MemoryStream(Encoding.UTF8.GetBytes(result));
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            //string baseAddressHttp = "http://" + Environment.MachineName + ":80";
            //string baseAddressTcp = "net.tcp://" + Environment.MachineName + ":4504/Service";
            string baseAddressHttp = "http://localhost:80";
            string baseAddressTcp = "net.tcp://localhost:4504/Service";
            ServiceHost host = new ServiceHost(typeof(Service), new Uri(baseAddressHttp), new Uri(baseAddressTcp));
            host.AddServiceEndpoint(typeof(ITest), new NetTcpBinding(SecurityMode.None), "");
            host.AddServiceEndpoint(typeof(ITcpPolicyRetriever), new WebHttpBinding(), "").Behaviors.Add(new WebHttpBehavior());
            ServiceMetadataBehavior smb = new ServiceMetadataBehavior();
            host.Description.Behaviors.Add(smb);
            host.AddServiceEndpoint(typeof(IMetadataExchange), MetadataExchangeBindings.CreateMexTcpBinding(), "mex");
            host.Open();
            Console.WriteLine("Host opened");
            Console.Write("Press ENTER to close");
            Console.ReadLine();
            host.Close();
        }
    }
}
