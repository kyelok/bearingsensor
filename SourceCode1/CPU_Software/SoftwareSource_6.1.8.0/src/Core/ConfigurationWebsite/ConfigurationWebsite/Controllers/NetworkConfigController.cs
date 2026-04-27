using System.Web.Mvc;
using ConfigurationWebsite.Models;
using IpConfig;
using System.Collections.Generic;

namespace ConfigurationWebsite.Controllers
{
    public class NetworkConfigController : ApplicationController
    {
        private static Dictionary<string, string[]> methodRoles = GetMethodRolesHelper.GetMethodRoles(typeof(NetworkConfigController).GetMethods());

        public ActionResult Network()
        {
            string[] nicNames = IpConfigTools.GetNicNames();

            IpData currentIpData = IpConfigTools.GetCurrentIpData(nicNames[0]);
            IpDataModel model; //Model to return once populated

            model = new IpDataModel()
            {
                NetworkInterface = nicNames[0],
                UsesDHCP = currentIpData.UsesDHCP,
                IpAddress = currentIpData.IpAddress[0],
                NetMask = currentIpData.NetMask[0],
                Dns0 = currentIpData.Dns[0],
                Dns1 = currentIpData.Dns[1],
                GateWay = currentIpData.GateWay[0]
            };

            model.CanSave = GetMethodRolesHelper.CanUserPerformMethod("UpdateNic", User, methodRoles);
            ViewBag.Nics = new SelectList(nicNames);

            return View(model);
        }

        public ViewResult SelectAnotherNic(IpDataModel model)
        {
            IpData currentIpData = IpConfigTools.GetCurrentIpData(model.NetworkInterface);
            IpDataModel result = new IpDataModel()
            {
                NetworkInterface = model.NetworkInterface,
                UsesDHCP = currentIpData.UsesDHCP,
                IpAddress = currentIpData.IpAddress[0],
                NetMask = currentIpData.NetMask[0],
                Dns0 = currentIpData.Dns[0],
                Dns1 = currentIpData.Dns[1],
                GateWay = currentIpData.GateWay[0]
            };
            ViewBag.Nics = new SelectList(IpConfigTools.GetNicNames());
            result.CanSave = GetMethodRolesHelper.CanUserPerformMethod("UpdateNic", User, methodRoles);

            //Remove validation errors if they exist. They do not apply at this point
            ModelState.Clear();
            return View("Network", result);
        }

        [Authorize(Roles="NetworkSettings")]
        public ActionResult UpdateNic(IpDataModel model)
        {
            bool subnetNotUsed;
            model.CanSave = GetMethodRolesHelper.CanUserPerformMethod("UpdateNic", User, methodRoles);
            if (model.ipTypeRadio == "static")
            {
                subnetNotUsed = this.CheckSubnetNotUsed(model.IpAddress, model.NetworkInterface);
                //Check that the NIC IP address is not in the same subnet as another and validity of model data
                if (ModelState.IsValid && subnetNotUsed)
                {
                    
                    
                    //Create an array for DNS here, not when constructing an IpData object
                    string[] dns;
                    if (model.Dns1 != null)
                    {
                        dns = new string[2] { model.Dns0, model.Dns1 };
                    }
                    else
                    {
                        dns = new string[1] { model.Dns0 };
                    }
                    IpConfigTools.SetNewIpData(
                        new IpData()
                        {
                            IpAddress = new string[1] { model.IpAddress },
                            Dns = dns,
                            GateWay = new string[1] { model.GateWay },
                            NetMask = new string[1] { model.NetMask },
                            UsesDHCP = false
                        },
                        model.NetworkInterface,
                        false);
                }
                else
                {
                    ViewBag.Nics = new SelectList(IpConfigTools.GetNicNames());
                    
                    //Add error message if subnet is in use
                    if (!subnetNotUsed)
                    {
                        ModelState.AddModelError("IpAddress", "Subnet is already in use");
                    }
                    return View("Network", model);
                }
            }
            else if (model.ipTypeRadio == "dhcp")
            {
                IpConfigTools.SetNewIpData(new IpData()
                {
                    IpAddress = null,
                    Dns = null,
                    GateWay = null,
                    NetMask = null,
                    UsesDHCP = true
                },
                    model.NetworkInterface,
                    true);
            }
            ViewBag.Nics = new SelectList(IpConfigTools.GetNicNames());
            return RedirectToAction("Network");

        }

        /// <summary>
        /// Checks that an IP address in the same subnet in a given IP address is not already set
        /// </summary>
        /// <param name="ipAddress">The ipaddress to check</param>
        /// <param name="ignoreNic">NIC to ignore (use for NIC which details being set for)</param>
        /// <returns>TRUE if subnet is not used, safe to set new IP address. FALSE if subnet used by another NIC</returns>
        private bool CheckSubnetNotUsed(string ipAddress, string ignoreNic = null)
        {
            //Iterate through each nic, checking ipaddress
            string[] nics = IpConfigTools.GetNicNames();
            foreach (string nic in nics)
            {
                if (nic != ignoreNic)
                {
                    if (this.IsSameSubnet(ipAddress, IpConfigTools.GetCurrentIpData(nic).IpAddress[0]))
                    {
                        //IP address cannot be used
                        return false;
                    }
                }
            }
            //Loop completes when no match found
            return true;
        }

        /// <summary>
        /// Checks if two given IP addresses are in the same subnet
        /// </summary>
        /// <param name="ip1"></param>
        /// <param name="ip2"></param>
        /// <returns>True if IP subnets match, False if not</returns>
        private bool IsSameSubnet(string ip1, string ip2)
        {
            string[] ip1Arr = ip1.Split('.');
            string[] ip2Arr = ip2.Split('.');

            if (ip1Arr[2] == ip2Arr[2])
            {
                return true;
            }
            else return false;
        }
    }
}
