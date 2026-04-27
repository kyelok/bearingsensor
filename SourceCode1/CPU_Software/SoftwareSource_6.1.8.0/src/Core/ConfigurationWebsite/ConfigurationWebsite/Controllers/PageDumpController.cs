using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Configuration;
using System.Web.Configuration;
using HelperClasses;
using System.Drawing;
using System.IO;

namespace ConfigurationWebsite.Controllers
{
    public class PageDumpController : ApplicationController
    {
        //
        // GET: /PageDump/

        public ActionResult Index(string file, int? width, int? height)
        {
            string url;
            url = GetDumpDirectory() + "\\" + file + ".html";

            if (width == null)
            {
                width = 1024;
            }

            if (height == null)
            {
                height = 768;
            }

            Bitmap image = HtmlToImage.GetWebSiteThumbnail(url, (int)width, (int)height, (int)width, (int)height);
            
            MemoryStream ms = new MemoryStream();
            image.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
            byte []buff = ms.ToArray();

            return File(buff, "image/png");
        }

        /// <summary>
        /// Gets the directory that should be used for dumping the html into
        /// </summary>
        /// <returns></returns>
        private string GetDumpDirectory()
        {
            string dumpDirectory;

            ModuleConfiguration appConfig = ModuleConfiguration.GetWebConfiguration();

            AppSettingsSection appSettingSection = (AppSettingsSection)appConfig.GetSection("appSettings");

            if (appSettingSection.Settings["PageDumpFolder"] != null)
            {
                dumpDirectory = appSettingSection.Settings["PageDumpFolder"].Value;
            }
            else
            {
                dumpDirectory = @"d:\dumps";
            }

            return dumpDirectory;

        }

    }
}
