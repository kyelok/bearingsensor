using System.Web.Mvc;

namespace ConfigurationWebsite.Controllers
{
    public class HomeController : ApplicationController
    {
        public ActionResult Index()
        {
            ViewData["SPUCommsError"] = false;
            return View();
        }

        public ActionResult DownloadSilverlight()
        {
            return File("../Files/silverlight.exe", "application\force-download", "silverlight.exe");
        }

        public ActionResult AdvancedMenu()
        {
            return View();
        }


    }
}
