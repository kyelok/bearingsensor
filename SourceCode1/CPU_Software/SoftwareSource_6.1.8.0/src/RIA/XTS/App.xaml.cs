/* 
 * App.xaml.cs
 * 
 * Main class for creating the silverlight applicatin.  Partial implementation, for use with App.xaml.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 26/01/2012
 */

// Expression blend doesn't allow us to define symbols on a configuration basis, so the below
// define can be used to force building for simulator... This is normally set by Solution Configuration
// and used in Application_Startup to determine which type of Data Provider to create.
//#define XTS_SIMULATOR

using System;
using System.Collections.Generic;
using System.Globalization;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media.Imaging;
using Telerik.Windows.Media.Imaging;

namespace XTS
{
    #region ImageDownload Class
    /// <summary>
    /// Class for downloading a bitmap/png/jpeg image from a URI
    /// </summary>
    public class ImageDownload
    {
        /// <summary>
        /// The URI to download the image from
        /// </summary>
        private Uri uri = null;
        /// <summary>
        /// Internal data for the bitmap image
        /// </summary>
        private BitmapImage bitmapImage = null;
        /// <summary>
        /// Public accessor for the image data
        /// </summary>
        /// <remarks>The data may not be ready!  Use Wait() to wait for the data to be completely downloaded</remarks>
        public BitmapImage Image
        {
            get
            {
                return this.bitmapImage;
            }
        }

        /// <summary>
        /// Event for signalling data download is complete
        /// </summary>
        private ManualResetEvent dlComplete = new ManualResetEvent(false);
        /// <summary>
        /// Internal specifying if the DL succeeded
        /// </summary>
        bool dlSuccess = false;
        /// <summary>
        /// Specifies if the image DL succeeded
        /// </summary>
        bool Success
        {
            get
            {
                return this.dlSuccess;
            }
        }

        /// <summary>
        /// Default constructor
        /// </summary>
        /// <param name="uri">Location of the image to DL</param>
        public ImageDownload(Uri uri)
        {
            this.uri = uri;
            GetImage();
        }

        /// <summary>
        /// Starts the DL process from the server
        /// </summary>
        private void GetImage()
        {
            if (this.uri != null)
            {
                if (this.bitmapImage != null)
                {
                    this.bitmapImage = null;
                }

                // Reset events/success
                this.dlSuccess = false;
                this.dlComplete.Reset();

                // Create bitmap at URI location
                BitmapImage imageDL = new BitmapImage();
                // Setting CreateOptions to none will start a DL immediately
                imageDL.CreateOptions = BitmapCreateOptions.None;
                imageDL.ImageOpened += new EventHandler<RoutedEventArgs>(imageDL_ImageOpened);
                imageDL.ImageFailed += new EventHandler<ExceptionRoutedEventArgs>(imageDL_ImageFailed);
                imageDL.UriSource = uri;
            }
        }

        /// <summary>
        /// Callback for bitmap dl complete
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void imageDL_ImageOpened(object sender, RoutedEventArgs e)
        {
            this.bitmapImage = sender as BitmapImage;
            this.bitmapImage.ImageOpened -= imageDL_ImageOpened;
            this.bitmapImage.ImageFailed -= imageDL_ImageFailed;

            this.dlSuccess = true;
            this.dlComplete.Set();
        }

        /// <summary>
        /// Callback for bitmap dl failed
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void imageDL_ImageFailed(object sender, ExceptionRoutedEventArgs e)
        {
            BitmapImage imageDL = sender as BitmapImage;
            imageDL.ImageOpened -= imageDL_ImageOpened;
            imageDL.ImageFailed -= imageDL_ImageFailed;

            this.dlSuccess = false;
            this.dlComplete.Set();
        }

        /// <summary>
        /// Waits for the download to complete/fail/timeout
        /// </summary>
        /// <param name="timeout"></param>
        /// <returns>True if the DL has completed successfully, false on error or timeout</returns>
        public bool Wait(int timeout)
        {
            bool rc = false;
            if (this.dlComplete.WaitOne(timeout))
            {
                if (this.dlSuccess)
                {
                    rc = true;
                }
            }
            return rc;
        }
    }
    #endregion // ImageDownload Class

    #region ScreenCapture class
    /// <summary>
	/// Simple class for static instantiation within templates for screen capture
	/// </summary>
	public class ScreenCapture
    {
        private static string PNG_FILE_FILTER = XTS.LocalizedResources.GetResourceString("XTSStringPngFileFilter");
        private static string PNG_FILE_EXT = XTS.LocalizedResources.GetResourceString("XTSStringPngFileExt");

		public ScreenCapture()
		{}

        private void BLTBitmap(WriteableBitmap dest, BitmapImage src, int offsetX, int offsetY)
        {
            //int remainingDestX = dest.PixelWidth - offsetX;
            //int remainingDestY = dest.PixelHeight - offsetY;

            int totalX = (int)(src.PixelWidth);
            int totalY = (int)(src.PixelHeight);

            WriteableBitmap wbSrc = new WriteableBitmap(src);

            // Foreach row in src, copy the line
            for (int y = 0; y < totalY; y++)
            {
                // We count from 0 in top left of bitmap right, each row starting
                // with an index of PixelWidth

                int destIndex = offsetX+((offsetY+y)*dest.PixelWidth);
                int srcIndex = y * src.PixelWidth;

                for (int x = 0; x < totalX; x++)
                {
                    // Copy pixel data
                    dest.Pixels[destIndex] = wbSrc.Pixels[srcIndex];

                    srcIndex++;
                    destIndex++;
                }
            }
        }

        /// <summary>
        /// Takes a screen capture of the Silverlight application and 
        /// writes it out as a PNG
        /// </summary>
        /// <param name="screens">List of UI elements to render.  The first element is considered the main screen that the resolution of other screens is taken from</param>
        /// <param name="guid">Optional parameter.  Will add an additional screen shot taken from the server</param>
        /// <returns>True if the operation succeeded</returns>
        public bool Capture(UIElement[] screens, BitmapImage extraImage = null)
        {
            if (screens.Length < 1)
            {
                throw new ArgumentException("Requries at least one screen");
            }
            bool rc = false;

            int width = (int) (screens[0].RenderSize.Width * screens.Length);
            int height = (int)(screens[0].RenderSize.Height);
            // Add an additional screen grab if we have a guid to get
            if (extraImage != null)
            {
                width = (int) extraImage.PixelWidth;
                height = (int)extraImage.PixelHeight;
            }
            WriteableBitmap screencap = new WriteableBitmap(width, height);
            if (extraImage == null)
            {
                System.Windows.Media.TranslateTransform transform = new System.Windows.Media.TranslateTransform();
                foreach (UIElement screen in screens)
                {
                    screencap.Render(screen, transform);
                    screencap.Invalidate();
                    transform.X += screens[0].RenderSize.Width;
                }
            }
            else
            {
                BLTBitmap(screencap, extraImage, 0, 0);
            }
 
            PngBitmapEncoder encoder = new PngBitmapEncoder();
            encoder.Frames.Add(screencap);

            MainPage mp = (MainPage)MainPage.GetInstance();

            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.Filter = PNG_FILE_FILTER;
            saveFileDialog.DefaultFileName = mp.GenerateFilename(mp.Header.LabelScreenDescription.Content.ToString(), PNG_FILE_EXT);
            if (saveFileDialog.ShowDialog() == true)
            {
                System.IO.Stream stream = saveFileDialog.OpenFile();
                encoder.Save(stream);
                stream.Close();
                rc = true;
            }
            return rc;
        }
    }
    #endregion // ScreenCapture class

    /// <summary>
	/// Class for retrieving resources
	/// </summary>
	public class LocalizedResources
	{
        /// <summary>
        /// Internal data for UICulture.  Set on startup to the main culture of the system.
        /// </summary>
        private static CultureInfo uiCulture = Thread.CurrentThread.CurrentUICulture;
        /// <summary>
        /// Culture for displaying language strings in.
        /// </summary>
        public static CultureInfo UICulture
        {
            get
            {
                return LocalizedResources.uiCulture;
            }
            set
            {
                LocalizedResources.uiCulture = value;
            }
        }

		/// <summary>
		/// Default Constructor
		/// </summary>
		public LocalizedResources()
		{}
	
		/// <summary>
		/// Internal data for ResourceStrings
		/// </summary>
		private static XTS.Resources.Strings strings = new XTS.Resources.Strings();
		/// <summary>
		/// Access to the string resources
		/// </summary>
		public XTS.Resources.Strings ResourceStrings { get { return strings; } }

        public static string GetResourceString(string resourceId)
        {
            return LocalizedResources.GetResourceString(resourceId, null);
        }
        public static string GetResourceString(string resourceId, object[] args)
        {
            string rc = string.Empty;
            bool error = true;
            System.Resources.ResourceManager rm = new System.Resources.ResourceManager("XTS.Resources.Strings", System.Reflection.Assembly.GetExecutingAssembly());
            if (rm != null)
            {
                try
                {
                    string formatString = rm.GetString(resourceId, LocalizedResources.UICulture);
                    if (args != null)
                    {
                        rc = string.Format(formatString, args);
                    }
                    else
                    {
                        rc = formatString;
                    }
                    error = false;
                }
                catch (Exception ex)
                {
                    // TODO: Handle these exceptions better!
                    System.Diagnostics.Debug.WriteLine(ex.Message);
                }
            }
            if (error)
            {
                // Couldn't get resource so set to ID
                rc = string.Format("[{0}]", resourceId);
            }
            return rc;
        }
	}

    /// <summary>
    /// Main class of the XTS-W Gen II application
    /// </summary>
	public partial class App : Application
	{
        /// <summary>
        /// The system data of the XTS
        /// </summary>
        private IXTSDataProvider xtsData = null;

        /// <summary>
        /// Default constructor
        /// </summary>
		public App()
		{
            // Add callbacks for init/deinit the system data
			this.Startup += this.Application_Startup;
			this.Exit += this.Application_Exit;

			this.UnhandledException += this.Application_UnhandledException;

			InitializeComponent();
		}

        /// <summary>
        /// Callback for application startup
        /// </summary>
        /// <param name="sender">Object that raised the event.</param>
        /// <param name="e">The event data.</param>
		private void Application_Startup(object sender, StartupEventArgs e)
		{
// To aid in debugging from app startup, change to #if DEBUG and
// connect to the silverlight process when the message box is displayed
#if _DEBUG
            MessageBox.Show("Connect debugger if required");
#endif
            // Create the data provider for this build
            string server = null;
#if XTS_SIMULATOR
            // Force simulator
            this.xtsData = new XTSDataProviderSimulator();
            server = "SIMULATOR";
#else
            // Search parameters for XTS Server
            if (e.InitParams != null)
            {
                if (e.InitParams.ContainsKey("xtsserver"))
                {
                    server = e.InitParams["xtsserver"];
                }

                if (e.InitParams.ContainsKey("marketing"))
                {
                    if (e.InitParams["marketing"].Equals("true"))
                    {
                        this.xtsData = new XTSDataProviderSimulator();
                        server = "SIMULATOR";
                    }
                }
            }

            if (this.xtsData == null)
            {
                this.xtsData = new XTSDataProviderWeb();
            }

            if (server == null)
            {
                // No server specified, auto detect based on where .xap is served from.
                server = Application.Current.Host.Source.Host;
                if (string.IsNullOrEmpty(server))
                {
                    //server = "localhost";
                }
            }

#endif
            // Search for auto login parameters
            // Primarily used to aid in debugging
            string user = null;
            string password = null;
            if (e.InitParams != null)
            {
                if ((e.InitParams.ContainsKey("user")) &&
                    (e.InitParams.ContainsKey("password")))
                {
                    user = e.InitParams["user"];
                    password = e.InitParams["password"];
                }
            }

            // Connect to the data
            this.xtsData.Connect(server);

            // Auto login if we have it
            if (user != null)
            {
                foreach(XTSUser currentUser in this.xtsData.UserData.Users)
                {
                    if (user.Equals(currentUser.Username))
                    {
                        this.xtsData.UserLogOn(currentUser, password, null);
                        this.xtsData.UserData.LastPassword = password;
                        break;
                    }
                }
            }

            //Test different language
            //Thread.CurrentThread.CurrentUICulture = new CultureInfo("fr-FR");

            // Add the mainpage to the application
            this.RootVisual = new MainPage(xtsData);
		}

        /// <summary>
        /// Callback for exiting the application
        /// </summary>
        /// <param name="sender">Object that raised the event.</param>
        /// <param name="e">The event data.</param>
		private void Application_Exit(object sender, EventArgs e)
		{
            if (this.xtsData != null)
            {
                this.xtsData.Disconnect();
            }
		}

        /// <summary>
        /// Callback for handling unhandled exceptions within the Silverlight app.
        /// </summary>
        /// <param name="sender">Object that raised the event.</param>
        /// <param name="e">The event data.</param>
		private void Application_UnhandledException(object sender, ApplicationUnhandledExceptionEventArgs e)
		{
            // TODO: See note below re. error handling.  Perhaps add to system log?

			// If the app is running outside of the debugger then report the exception using
			// the browser's exception mechanism. On IE this will display as a yellow alert 
			// icon in the status bar and Firefox will display a script error.
			if (!System.Diagnostics.Debugger.IsAttached)
			{
				// NOTE: This will allow the application to continue running after an exception has been thrown
				// but not handled. 
				// For production applications this error handling should be replaced with something that will 
				// report the error to the website and stop the application.
				e.Handled = true;
				Deployment.Current.Dispatcher.BeginInvoke(delegate { ReportErrorToDOM(e); });


#if false //Disable error message boxes
                MainPage mp = (MainPage)MainPage.GetInstance();
                if (mp != null)
                {
                    try
                    {
                        object[] args = new object[1];
                        args[0] = e.ExceptionObject;
                        mp.ShowErrorMessage(XTSErrors.UnhandledException, args);
                        e.Handled = true;
                    }
                    catch (Exception)
                    {
                        // We don't want to get into an infinite exception loop!
                    }     
                }
#else
                try
                {
                    System.Diagnostics.Debug.WriteLine(e.ToString());
                }
                catch (Exception)
                {
                }
#endif
            }
		}

        /// <summary>
        /// Passes error onto host application (browser).
        /// </summary>
        /// <param name="e">Details the exception.</param>
		private void ReportErrorToDOM(ApplicationUnhandledExceptionEventArgs e)
		{
			try
			{
				string errorMsg = e.ExceptionObject.Message + e.ExceptionObject.StackTrace;
				errorMsg = errorMsg.Replace('"', '\'').Replace("\r\n", @"\n");

				System.Windows.Browser.HtmlPage.Window.Eval("throw new Error(\"Unhandled Error in Silverlight Application " + errorMsg + "\");");
			}
			catch (Exception)
			{
			}
		}

        List<UIElement> displayedChildWindows = new List<UIElement>();

        /// <summary>
        /// Callback when the user clicks on the screen capture button. 
        /// Takes a screen capture of the Silverlight application and 
        /// writes it out as a PNG
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ButtonScreenCapture_Click(object sender, RoutedEventArgs e)
        {
            lock (this.displayedChildWindows)
            {
                ScreenCapture sc = new ScreenCapture();
                UIElement[] screens = new UIElement[this.displayedChildWindows.Count + 1];
                this.displayedChildWindows.CopyTo(screens, 1);
                // Add main screen as first screen to render
                screens[0] = this.RootVisual;
                sc.Capture(screens);
            }
        }

        /// <summary>
        /// Hides or shows the currently displayed child windows
        /// </summary>
        /// <param name="show">True - show the window, False - hide the window</param>
        public void HideChildWindows(bool show = false)
        {
            lock (this.displayedChildWindows)
            {
                foreach (UIElement window in this.displayedChildWindows)
                {
                    if (show)
                    {
                        window.Visibility = Visibility.Visible;
                    }
                    else
                    {
                        window.Visibility = Visibility.Collapsed;
                    }
                }
            }
        }

        private void ChildWindowTemplate_Loaded(object sender, System.Windows.RoutedEventArgs e)
        {
            lock (this.displayedChildWindows)
            {
                UIElement screen = sender as UIElement;
                this.displayedChildWindows.Add(screen);
            }
        }

        private void ChildWindowTemplate_Unloaded(object sender, System.Windows.RoutedEventArgs e)
        {
            lock (this.displayedChildWindows)
            {
                UIElement screen = sender as UIElement;
                this.displayedChildWindows.Remove(screen);
            }
        }
	}
}
