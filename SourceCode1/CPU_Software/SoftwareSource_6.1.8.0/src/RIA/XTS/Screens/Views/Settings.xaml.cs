/* 
 * Settings.xaml.cs
 * 
 * Main page screen for displaying the configuration web pages.
 * C# partial implementation of Settings.xaml silverlight user control screen.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 09/02/2012
 */

using System;
using System.Windows.Controls;
using System.Windows.Browser;
using System.Windows.Media.Imaging;
using System.Threading;

using XTS.ChildWindows;

namespace XTS
{
    public class XTSScriptableUpdateInProgress
    {
        public XTSScriptableUpdateInProgress()
        {
            HtmlPage.RegisterScriptableObject("XTSUpdateInProgress", this);
        }

        [ScriptableMember]
        public void UpdateInProgress(bool inProgress)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.IgnoreCommsErrors = inProgress;
            }
        }
    }

    public class XTSScriptablePageLoaded
    {
        private ManualResetEvent loadedEvent = new ManualResetEvent(false);

        ImageDownload imgDl = null;
        public BitmapImage ScreenCapture
        {
            get
            {
                if (this.imgDl.Wait(20000))
                {
                    return this.imgDl.Image;
                }
                else
                {
                    return null;
                }
            }
        }

        public XTSScriptablePageLoaded()
        {
            HtmlPage.RegisterScriptableObject("XTSLoadedJavascript", this);
        }

        [ScriptableMember]
        public void PageLoaded(string guid)
        {
            System.Diagnostics.Debug.WriteLine("Javascript has called PageLoaded");
            this.loadedEvent.Set();

            InputKeyboard.Hide();

            // Grab screen cap from server.

            // Get host path
            string hostPath = System.Windows.Browser.HtmlPage.Document.DocumentUri.ToString();
            hostPath = hostPath.Remove(hostPath.LastIndexOf('/'));

            // Create URI for image
#if XTS_SIMULATOR
            Uri uri = new Uri(string.Format("{0}/simulator/settingscap.png", hostPath), UriKind.Absolute);
#else
            Uri uri = new Uri(string.Format("{0}/config/pagedump?file={1}&width={2}&height={3}",
                hostPath, guid, App.Current.RootVisual.RenderSize.Width, App.Current.RootVisual.RenderSize.Height*2));
#endif
            this.imgDl = new ImageDownload(uri);
        }

        /// <summary>
        /// Wait 
        /// </summary>
        public void Wait()
        {
            if (!this.loadedEvent.WaitOne(60000))
            {
                throw new TimeoutException("XTSScriptablePageLoaded");
            }
        }

        public void Reset()
        {
            this.loadedEvent.Reset();
        }
    }

    /// <summary>
    /// Interaction logic for Settings.xaml
    /// </summary>
    public partial class Settings : UserControl
    {
        public const string SETTINGS_CONTENTID = "settingsIFrame";

        private static Settings instance;

        private XTSScriptablePageLoaded autoLogin = new XTSScriptablePageLoaded();
        private XTSScriptableUpdateInProgress updateInProgress = new XTSScriptableUpdateInProgress();

        /// <summary>
        /// Returns an image of the current settings screen, captured on page load.
        /// </summary>
        public BitmapImage Capture
        {
            get
            {
                return autoLogin.ScreenCapture;
            }
        }

        public static Settings Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new Settings();
                }

                return instance;
            }
            set { instance = value; }
        }


        public Settings()
        {
            InitializeComponent();
            Settings.Instance = this;
            CheckComms();
        }

        private void Settings_Loaded(object sender, System.Windows.RoutedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.XTSDataSource.Diagnostics.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(Diagnostics_PropertyChanged);
                mp.EnablePopups = false;

                CheckComms();

                // Get the IFrame from the HtmlPresenter
                HtmlElement iframe = (HtmlElement)this.radHTMLSettings.HtmlPresenter.Children[0];
                // Set an ID to the IFrame so that can be used when calling the javascript
                iframe.SetAttribute("id", Settings.SETTINGS_CONTENTID);

                System.Threading.Tasks.Task.Factory.StartNew(() =>
                {
                    try
                    {
                        System.Diagnostics.Debug.WriteLine("Waiting for the Page to be loaded into the iframe.");
                        this.autoLogin.Wait();

                        // Login content if required
                        if (mp.XTSDataSource.UserData.CurrentUser != null)
                        {
                            System.Diagnostics.Debug.WriteLine("Logging in.");
                            string username = mp.XTSDataSource.UserData.CurrentUser.Username;
                            string password = mp.XTSDataSource.UserData.LastPassword;
                            // Code to be executed
                            string code = string.Format("LogIn('{0}', '{1}', '{2}');", Settings.SETTINGS_CONTENTID, username, password);
                            System.Diagnostics.Debug.WriteLine("Evaling {0}", code);

                            //The Javascript can only be eval'ed on the UI thread.
                            if (!Dispatcher.CheckAccess())
                            {
                                Dispatcher.BeginInvoke(() => HtmlPage.Window.Eval(code));
                            }
                            else
                            {
                                HtmlPage.Window.Eval(code);
                            }
                        }
                        else
                        {
                            string code = string.Format("LogOut('{0}');", Settings.SETTINGS_CONTENTID);
                            System.Diagnostics.Debug.WriteLine("Evaling {0}", code);

                            //The Javascript can only be eval'ed on the UI thread.
                            if (!Dispatcher.CheckAccess())
                            {
                                Dispatcher.BeginInvoke(() => HtmlPage.Window.Eval(code));
                            }
                            else
                            {
                                HtmlPage.Window.Eval(code);
                            }

                            System.Diagnostics.Debug.WriteLine("No current user");
                        }
                    }
                    catch (TimeoutException)
                    {
                        System.Diagnostics.Debug.WriteLine("Timed out waiting for page to load");
                    }
                    this.autoLogin.Reset();
                });
            }
        }

        private void Settings_Unloaded(object sender, System.Windows.RoutedEventArgs e)
        {
            // Hide keyboard if we're showing it
            InputKeyboard.Hide();

            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.EnablePopups = true;
                mp.XTSDataSource.Diagnostics.PropertyChanged -= Diagnostics_PropertyChanged;
            }
        }

        void Diagnostics_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName.Equals("CPUCommsNetwork") ||
                e.PropertyName.Equals("SPUComms") ||
                e.PropertyName.Equals("SPU2Comms"))
            {
                CheckComms();
            }
        }

        private void CheckComms()
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                XTSDiagnostics diagnostics = mp.XTSDataSource.Diagnostics;
                XTSEngine engineData = mp.XTSDataSource.EngineData;

                if (diagnostics.CPUCommsNetwork)
                {
                    if (diagnostics.SPUComms.HasValue &&
                        diagnostics.SPUComms.Value)
                    {
                        if (engineData.SPU2Fitted)
                        {
                            if (diagnostics.SPU2Comms.HasValue &&
                                diagnostics.SPU2Comms.Value)
                            {
                                this.stackSPUWarning.Visibility = System.Windows.Visibility.Collapsed;
                            }
                            else
                            {
                                this.stackSPUWarning.Visibility = System.Windows.Visibility.Visible;
                            }
                        }
                        else
                        {
                            this.stackSPUWarning.Visibility = System.Windows.Visibility.Collapsed;
                        }
                    }
                    else
                    {
                        this.stackSPUWarning.Visibility = System.Windows.Visibility.Visible;
                    }
                    this.radHTMLSettings.Visibility = System.Windows.Visibility.Visible;
                }
                else
                {
                    this.stackSPUWarning.Visibility = System.Windows.Visibility.Collapsed;
                    // If we're in the middle of an update, leave window open.
                    if (mp.IgnoreCommsErrors)
                    {
                        this.radHTMLSettings.Visibility = System.Windows.Visibility.Visible;
                    }
                    else
                    {
                        this.radHTMLSettings.Visibility = System.Windows.Visibility.Collapsed;
                    }
                }
            }
        }
    }
}
