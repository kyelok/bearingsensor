using System;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;

using System.IO;
using System.ServiceModel;

namespace XTS.DataProviderTest
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
        CrossDomainPolicy GetSilverlightPolicy();
    }

    public class CrossDomainPolicy : ITest, ITcpPolicyRetriever
    {
        public string Echo(string text)
        {
            return text;
        }
        public CrossDomainPolicy GetSilverlightPolicy()
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

        public CrossDomainPolicy()
        { }

        private ServiceHost host;
        public void Enable(string serverAddress)
        {
            if (this.host == null)
            {
                string baseAddressHttp = "http://" + serverAddress + ":80";
                string baseAddressTcp = "net.tcp://" + serverAddress + ":4504/Service";
                host = new ServiceHost(typeof(CrossDomainPolicy), new Uri(baseAddressHttp), new Uri(baseAddressTcp));
                host.AddServiceEndpoint(typeof(ITest), new NetTcpBinding(SecurityMode.None), "");
                host.AddServiceEndpoint(typeof(ITcpPolicyRetriever), new WebHttpBinding(), "").Behaviors.Add(new WebHttpBehavior());
                ServiceMetadataBehavior smb = new ServiceMetadataBehavior();
                host.Description.Behaviors.Add(smb);
                host.AddServiceEndpoint(typeof(IMetadataExchange), MetadataExchangeBindings.CreateMexTcpBinding(), "mex");
                host.Open();
            }
        }

        public void Disable()
        {
            if (this.host != null)
            {
                this.host.Close();
                this.host = null;
            }
        }
    }
}
