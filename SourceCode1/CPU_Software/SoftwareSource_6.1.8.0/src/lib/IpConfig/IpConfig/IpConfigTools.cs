using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Management;
using System.Net;

namespace IpConfig
{
    public class IpConfigTools
    {
        /// <summary>
        /// Gets the current IP/network configuration
        /// </summary>
        /// <returns>IpData object encapsulating ip config data</returns>
        public static IpData GetCurrentIpData(string networkInterfaceName)
        {
            ManagementClass managementClass = new ManagementClass("Win32_NetworkAdapterConfiguration");
            ManagementObjectCollection managementObjectCollection = managementClass.GetInstances();
            IpData ipData = new IpData();
            foreach (ManagementObject managementObject in managementObjectCollection)
            {
                if ((bool)managementObject["ipEnabled"])
                {
                    if (managementObject["caption"].Equals(networkInterfaceName))
                    {
                        ipData.IpAddress = (string[])managementObject["ipAddress"];
                        ipData.NetMask = (string[])managementObject["IPSubnet"];
                        
                        //Manage 0, 1 or 2 DNS addresses
                        string[] dns = (string[])managementObject["DNSServerSearchOrder"];
                        if (dns == null || dns.Length == 0)
                        {
                            ipData.Dns = new string[2] { String.Empty, String.Empty };
                        }
                        else if (dns.Length == 1)
                        {
                            ipData.Dns = new string[2] { dns[0], String.Empty };
                        }
                        else
                        {
                            ipData.Dns = dns;
                        }
                        
                        string[] gateway =  (string[])managementObject["DefaultIPGateway"];
                        if (gateway != null)
                        {
                            ipData.GateWay = gateway;
                        }
                        else ipData.GateWay = new string[1] { String.Empty };

                        ipData.UsesDHCP = (bool)managementObject["DHCPEnabled"];

                        break;
                    }
                }

            }

            return ipData;
        }

        /// <summary>
        /// Sets the current IP/network configuration. Returns TRUE on completion, FALSE on unable to complete. Failure should throw exception(?)
        /// </summary>
        /// <param name="ipData">IpData object encapsulating ip config data</param>
        public static bool SetNewIpData(IpData ipData, string networkInterfaceName, bool useDHCP)
        {
            if (!useDHCP)
            {
                //Check that ip addresses are valid by trying to create IP Address objects. Invalid data will cause exception to be thrown
                try
                {
                    IPAddress ipAddress = IPAddress.Parse(ipData.IpAddress[0]);
                    IPAddress dns0Address = IPAddress.Parse(ipData.Dns[0]);
                    if (ipData.Dns.Length >1 && ipData.Dns[1] != null)
                    {
                        IPAddress dns1Address = IPAddress.Parse(ipData.Dns[1]);
                    }

                    if (ipData.GateWay[0] != null)
                    {
                        IPAddress gateWayAddress = IPAddress.Parse(ipData.GateWay[0]);
                    }
                    IPAddress netMask = IPAddress.Parse(ipData.NetMask[0]);
                }
                catch (ArgumentNullException)
                {
                    return false;
                }
                catch (FormatException)
                {
                    return false;
                }
            }
            
            ManagementClass managementClass = new ManagementClass("Win32_NetworkAdapterConfiguration");
            ManagementObjectCollection managementObjectCollection = managementClass.GetInstances();

            foreach (ManagementObject managementObject in managementObjectCollection)
            {
                if ((bool)managementObject["ipEnabled"])
                {
                    if (managementObject["caption"].Equals(networkInterfaceName))
                    {
                        if (useDHCP)
                        {
                            ManagementBaseObject newDHCPIP = managementObject.GetMethodParameters("EnableDHCP");
                            managementObject.InvokeMethod("EnableDHCP", newDHCPIP, null);
                            ManagementBaseObject newDHCPDNS = managementObject.GetMethodParameters("SetDNSServerSearchOrder");
                            newDHCPDNS["DNSServerSearchOrder"] = null;
                            managementObject.InvokeMethod("SetDNSServerSearchOrder", newDHCPDNS, null);
                            ManagementBaseObject newDHCPRenew = managementObject.GetMethodParameters("RenewDHCPLease");
                            managementObject.InvokeMethod("RenewDHCPLease", newDHCPRenew, null);
                        }
                        else
                        {
                            ManagementBaseObject newIP = managementObject.GetMethodParameters("EnableStatic");
                            ManagementBaseObject newGate = managementObject.GetMethodParameters("SetGateways");
                            ManagementBaseObject newDNS = managementObject.GetMethodParameters("SetDNSServerSearchOrder");

                            if (ipData.GateWay[0] != null)
                            {
                                newGate["DefaultIPGateway"] = ipData.GateWay;
                                newGate["GatewayCostMetric"] = new int[] { 1 };
                            }

                            newIP["IPAddress"] = ipData.IpAddress;
                            newIP["SubnetMask"] = ipData.NetMask;

                            newDNS["DNSServerSearchOrder"] = ipData.Dns;

                            ManagementBaseObject setIP = managementObject.InvokeMethod("EnableStatic", newIP, null);
                            ManagementBaseObject setGateways = managementObject.InvokeMethod("SetGateways", newGate, null);
                            ManagementBaseObject setDNS = managementObject.InvokeMethod("SetDNSServerSearchOrder", newDNS, null);
                        }
                        return true;                        
                    }
                }
            }
            return false;
        }

        public static string[] GetNicNames()
        {
            ManagementClass managementClass = new ManagementClass("Win32_NetworkAdapterConfiguration");
            ManagementObjectCollection managementObjectCollection = managementClass.GetInstances();
            List<String> result = new List<String>();
            foreach (ManagementObject managementObject in managementObjectCollection)
            {
                if ((bool)managementObject["ipEnabled"])
                {
                    result.Add((string)managementObject["caption"]);
                }

            }

            return result.ToArray();

        }


    }
}
