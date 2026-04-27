using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FaultErrorIndicators;

namespace ConfigurationWebsite.Controllers
{
    public abstract class ApplicationController : Controller
    {
        public ApplicationController()
        {
            if (Faults.Instance.IsSignaled(FaultCodes.RTUStartFailure) || Faults.Instance.IsSignaled(FaultCodes.RTUSerialPortFailure) || Faults.Instance.IsSignaled(FaultCodes.RTUNoRS485Comms))
            {
                ViewData["SPUCommsError"] = true;
            }
            else
            {
                ViewData["SPUCommsError"] = false;
            }
        }
    }
}
