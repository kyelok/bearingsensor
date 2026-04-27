using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using ConfigurationWebsite.Filters;
using System.Configuration;
using System.Web.Configuration;
using HelperClasses;
using System.IO;

namespace ConfigurationWebsite
{
    // Note: For instructions on enabling IIS6 or IIS7 classic mode, 
    // visit http://go.microsoft.com/?LinkId=9394801

    public class MvcApplication : System.Web.HttpApplication
    {
        

        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
#if false
            filters.Add(new HandleErrorAttribute());
#endif
        }

        void Application_BeginRequest(object sender, EventArgs e)
        {
            string dumpDirectory = GetDumpDirectory();
            Response.Filter = new SavePageFilter(dumpDirectory, Response.Filter);
        }

        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            
            routes.MapRoute(
                "Default", // Route name
                "{controller}/{action}/{id}", // URL with parameters
                new { controller = "Home", action = "Index", id = UrlParameter.Optional } // Parameter defaults
            );
            //routes.IgnoreRoute("xtsw/{*path}");

        }

        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();

            //Enable log4net
            log4net.Config.XmlConfigurator.Configure();

            RegisterGlobalFilters(GlobalFilters.Filters);
            RegisterRoutes(RouteTable.Routes);

            //Copy the css files to the dump folder
            string path = Server.MapPath("/config");

            if (!Directory.Exists(GetDumpDirectory()))
            {
                Directory.CreateDirectory(GetDumpDirectory());
            }

            if (Directory.Exists(GetDumpDirectory() + "\\Content"))
            {
                Directory.Delete(GetDumpDirectory() + "\\Content", true);
            }

            if (Directory.Exists(GetDumpDirectory() + "\\Scripts"))
            {
                Directory.Delete(GetDumpDirectory() + "\\Scripts", true);
            }

            DirectoryInfo dir = new DirectoryInfo(GetDumpDirectory());
            
            foreach(FileInfo file in dir.GetFiles())
            {
                file.Delete();
            }

            CopyFolderToFolder(new DirectoryInfo(path + "\\Content"), new DirectoryInfo(GetDumpDirectory() + "\\Content" ));
            CopyFolderToFolder(new DirectoryInfo(path + "\\Scripts"), new DirectoryInfo(GetDumpDirectory() + "\\Scripts"));
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

        public void CopyFolderToFolder(DirectoryInfo source, DirectoryInfo target)
        {
            try
            {
                //check if the target directory exists
                if (Directory.Exists(target.FullName) == false)
                {
                    Directory.CreateDirectory(target.FullName);
                }

                //copy all the files into the new directory

                foreach (FileInfo fi in source.GetFiles())
                {
                    fi.CopyTo(Path.Combine(target.ToString(), fi.Name), true);
                }


                //copy all the sub directories using recursion

                foreach (DirectoryInfo diSourceDir in source.GetDirectories())
                {
                    DirectoryInfo nextTargetDir = target.CreateSubdirectory(diSourceDir.Name);
                    CopyFolderToFolder(diSourceDir, nextTargetDir);
                }
                //success here
            }
            catch (IOException ie)
            {
                //handle it here
            }
        }
    }
}