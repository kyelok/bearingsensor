using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using IISStarter;
using System.Configuration;
using System.IO;
using System.Diagnostics;
using log4net;

namespace Launcher
{
    /// <summary>
    /// This class launches the executables and hides there
    /// Consoles.
    /// </summary>
    class Launch
    {
        /// <summary>
        /// Logging
        /// </summary>
        private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        NotifyIcon notifyIcon;

        IISExpress webServer;

        /// <summary>
        /// Creates the launch object
        /// </summary>
        /// <param name="notifyIcon">The notify icon to use for the launcher</param>
        public Launch(NotifyIcon notifyIcon)
        {
            this.notifyIcon = notifyIcon;
        }

        /// <summary>
        /// This method starts each application
        /// in turn and hides it's console.
        /// </summary>
        public void ExecuteDataLogger()
        {
            Configuration config = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);


            string dataLogger = @"c:\AMOT\Logger\Framework.exe";            
            bool hideConsole = false;
           
            if (config.AppSettings.Settings["DataLogger"] != null)
            {
                dataLogger = config.AppSettings.Settings["DataLogger"].Value;
            }                       

            if (config.AppSettings.Settings["Hide"] != null)
            {
                try
                {
                    hideConsole = bool.Parse(config.AppSettings.Settings["Hide"].Value);
                }
                catch (System.FormatException)
                {
                    hideConsole = false;
                }
            }
           
            //launch framework
            Process dataLoggerProcess = new Process();
            dataLoggerProcess.StartInfo.FileName = dataLogger;
            dataLoggerProcess.StartInfo.WorkingDirectory = Path.GetDirectoryName(dataLogger);
            dataLoggerProcess.StartInfo.WindowStyle = ProcessWindowStyle.Minimized;

            if (hideConsole)
            {
                dataLoggerProcess.StartInfo.WindowStyle = ProcessWindowStyle.Hidden;
            }

            logger.Info("Starting Data Logger");
            try
            {
                dataLoggerProcess.Start();
            }
            catch (Exception e)
            {
                logger.FatalFormat("Failed to start Data Logger, exception caught: {0}", e.ToString());
            }          
        }

        /// <summary>
        /// This method starts each application
        /// in turn and hides it's console.
        /// </summary>
        public void Execute()
        {
            Configuration config = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
            

            string dataLogger = @"c:\AMOT\Logger\Framework.exe";
            string server = @"c:\AMOT\Server\ModbusServer.exe";
            string mainWebsite = @"c:\AMOT\Website";
            string updateFolder = @"d:\Updates";
            string updateWebsite = @"c:\AMOT\UpdateWebsite";
            string iisConfig = @"c:\AMOT\iisconfig\applicationhost.config";
            string issStarter = @"c:\AMOT\IISStarter.exe";
            bool hideConsole = false;

            if (config.AppSettings.Settings["UpdateFolder"] != null)
            {
                updateFolder = config.AppSettings.Settings["UpdateFolder"].Value;
            }

            if (config.AppSettings.Settings["DataLogger"] != null)
            {
                dataLogger = config.AppSettings.Settings["DataLogger"].Value;
            }

            if (config.AppSettings.Settings["Server"] != null)
            {
                server = config.AppSettings.Settings["Server"].Value;
            }

            if (config.AppSettings.Settings["Website"] != null)
            {
                mainWebsite = config.AppSettings.Settings["Website"].Value;
            }
            
            if (config.AppSettings.Settings["UpdateWebsite"] != null)
            {
                updateWebsite = config.AppSettings.Settings["UpdateWebsite"].Value;
            }
            
            if (config.AppSettings.Settings["IISConfig"] != null)
            {
                iisConfig = config.AppSettings.Settings["IISConfig"].Value;
            }

            if (config.AppSettings.Settings["IISStarter"] != null)
            {
                issStarter = config.AppSettings.Settings["IISStarter"].Value;
            }

            if (config.AppSettings.Settings["Hide"] != null)
            {
                try
                {
                    hideConsole = bool.Parse(config.AppSettings.Settings["Hide"].Value);
                }
                catch (System.FormatException)
                {
                    hideConsole = false;
                }
            }

            try
            {
                if (!Directory.Exists(updateFolder))
                {
                    Directory.CreateDirectory(updateFolder);
                }
            }
            catch (Exception e)
            {
                logger.FatalFormat("Failed to create {0}, exception caught: {1}", updateFolder, e.ToString());
            }

            IEnumerable<string> updatePackages = null;

            logger.InfoFormat("Checking {0} for updates", updateFolder);

            try
            {
                //Check Updates folder
                updatePackages = Directory.EnumerateFiles(updateFolder, "*.pkg");
            }
            catch (Exception e)
            {
                logger.FatalFormat("Could not check folder {0}, exception caught: {1}", updateFolder, e .ToString());
            }

            //If updates found
            if (updatePackages != null && updatePackages.Count() > 0)
            {
                logger.Info("Starting Update Mode");

                Process issProcess = new Process();
                issProcess.StartInfo.FileName = issStarter;
                issProcess.StartInfo.WorkingDirectory = Path.GetDirectoryName(updateWebsite);
                issProcess.StartInfo.WindowStyle = ProcessWindowStyle.Minimized;

                if (hideConsole)
                {
                    issProcess.StartInfo.Arguments = "update " + iisConfig + " Updatewebsite";
                }
                else
                {
                    issProcess.StartInfo.Arguments = "update " + iisConfig + " Updatewebsite show";
                }

                logger.Info("Starting Update Web Server");
                try
                {
                    issProcess.Start();
                }
                catch (Exception e)
                {
                    logger.FatalFormat("Failed to start Update Web Server, exception caught: {0}", e.ToString());
                }
            }
            else
            {
                logger.Info("Starting Normal Mode");
                //launch framework
                Process dataLoggerProcess = new Process();
                dataLoggerProcess.StartInfo.FileName = dataLogger;
                dataLoggerProcess.StartInfo.WorkingDirectory = Path.GetDirectoryName(dataLogger);
                dataLoggerProcess.StartInfo.WindowStyle = ProcessWindowStyle.Minimized;

                if (hideConsole)
                {
                    dataLoggerProcess.StartInfo.WindowStyle = ProcessWindowStyle.Hidden;
                }

                logger.Info("Starting Data Logger");
                try
                {
                    dataLoggerProcess.Start();
                }
                catch (Exception e)
                {
                    logger.FatalFormat("Failed to start Data Logger, exception caught: {0}", e.ToString());
                }

                //launch modbusserver
                Process serverProcess = new Process();
                serverProcess.StartInfo.FileName = server;
                serverProcess.StartInfo.WorkingDirectory = Path.GetDirectoryName(server);
                serverProcess.StartInfo.WindowStyle = ProcessWindowStyle.Minimized;

                if (hideConsole)
                {
                    serverProcess.StartInfo.WindowStyle = ProcessWindowStyle.Hidden;
                }

                logger.Info("Starting Modbus Server");
                
                try
                {
                    serverProcess.Start();
                }
                catch (Exception e)
                {
                    logger.FatalFormat("Failed to start Modbus Server, exception caught: {0}", e.ToString());
                }

                Process issProcess = new Process();
                issProcess.StartInfo.FileName = issStarter;
                issProcess.StartInfo.WorkingDirectory = Path.GetDirectoryName(mainWebsite);
                issProcess.StartInfo.WindowStyle = ProcessWindowStyle.Minimized;

                if (hideConsole)
                {
                    issProcess.StartInfo.Arguments = "website " + iisConfig + " Mainwebsite";
                }
                else
                {
                    issProcess.StartInfo.Arguments = "website " + iisConfig + " Mainwebsite show";
                }

                logger.Info("Starting Web Server");

                try
                {
                    issProcess.Start();
                }
                catch (Exception e)
                {
                    logger.FatalFormat("Failed to start Update Web Server, exception caught: {0}", e.ToString());
                }
            }
        }

        public ToolStripMenuItem ToolStripMenuItemWithHandler(string displayText, EventHandler eventHandler)
        {
            return ToolStripMenuItemWithHandler(displayText, 0, 0, eventHandler);
        }
        
        private ToolStripMenuItem ToolStripMenuItemWithHandler(
          string displayText, int enabledCount, int disabledCount, EventHandler eventHandler)
        {
            var item = new ToolStripMenuItem(displayText);
            if (eventHandler != null) { item.Click += eventHandler; }

            item.Image = (enabledCount > 0 && disabledCount > 0) ? Properties.Resources.signal_yellow
                         : (enabledCount > 0) ? Properties.Resources.signal_green
                         : (disabledCount > 0) ? Properties.Resources.signal_red
                         : null;
            item.ToolTipText = (enabledCount > 0 && disabledCount > 0) ?
                                                 string.Format("{0} enabled, {1} disabled", enabledCount, disabledCount)
                         : (enabledCount > 0) ? string.Format("{0} enabled", enabledCount)
                         : (disabledCount > 0) ? string.Format("{0} disabled", disabledCount)
                         : "";
            return item;
        }
    }
}
