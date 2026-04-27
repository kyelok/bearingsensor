/* 
 * MainPage.xaml.cs
 * 
 * Main Page source, C# partial implementation of MainPage.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 26/01/2012
 */

using System;
using System.Collections.Generic;
using System.Windows.Controls;
using System.Windows.Media.Imaging;

using XTS.ChildWindows;
using System.Threading;
using System.ComponentModel;
using System.Text;
using System.Windows.Threading;
using System.Windows.Browser;

namespace XTS
{
    #region SyncState class for swapping states
    /// <summary>
    /// Class to make UI safe callbacks on a schedule
    /// </summary>
    public class SyncState
    {
        /// <summary>
        /// Callback delegate
        /// </summary>
        /// <param name="state"></param>
        public delegate void SyncStateCallback(bool state);

        /// <summary>
        /// The state to set when starting
        /// </summary>
        private bool initialState = true;
        /// <summary>
        /// The current state
        /// </summary>
        private bool currentState = true;
        /// <summary>
        /// The current state
        /// </summary>
        public bool State
        {
            get
            {
                return this.currentState;
            }
        }

        /// <summary>
        /// The timer for triggering changes
        /// </summary>
        private DispatcherTimer timer = null;

        /// <summary>
        /// Collection of callbacks to make on the schedule
        /// </summary>
        public event SyncStateCallback Callback;

        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="initialState">The state when the timer is started</param>
        /// <param name="rateMs">The time period on the timer</param>
        public SyncState(bool initialState, int rateMs)
        {
            this.initialState = initialState;
            this.timer = new DispatcherTimer();
            this.timer.Interval = new TimeSpan(0, 0, 0, 0, rateMs);
            this.timer.Tick += new EventHandler(timer_Tick);
        }

        /// <summary>
        /// Callback for the timer
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void timer_Tick(object sender, EventArgs e)
        {
            // Switch state
            this.currentState = !this.currentState;
            // Notify clients
            if (this.Callback != null)
            {
                this.Callback(this.currentState);
            }
        }

        /// <summary>
        /// Starts the timer
        /// </summary>
        public void Start()
        {
            // If we're already running then restart
            if (this.timer.IsEnabled)
            {
                Stop();
            }
            this.currentState = this.initialState;
            // Notify clients that this has started
            if (this.Callback != null)
            {
                this.Callback(this.currentState);
            }
            this.timer.Start();
        }

        /// <summary>
        /// Stops the timer
        /// </summary>
        public void Stop()
        {
            this.timer.Stop();
        }
    }
    #endregion // SyncState class for swapping states

    #region class to disable mouse right clic
    /// <summary>
    /// Class to disable mouse right click
    /// </summary>
    public class ContextMenuInterceptor
    {
        public ContextMenuInterceptor()
        {
            HtmlPage.Document.AttachEvent("oncontextmenu", this.OnContextMenu);
        }
        private void OnContextMenu(object sender, HtmlEventArgs e)
        {
            e.PreventDefault();
        }
    }
     #endregion // class to disable mouse right click

    /// <summary>
    /// The main screen for the application
    /// </summary>
	public partial class MainPage : UserControl
	{
        BackgroundWorker userActivity;

        object timeoutLock = new object();
        bool mouseEventOccurred = false;

        public readonly int MAX_TRENDS = 28;

        //In MainPage class create an instance of the Class ContextMenuInterceptor
        ContextMenuInterceptor context = new ContextMenuInterceptor();

        /// <summary>
        /// Specifies the main child displayed in the MainPage
        /// </summary>
        public enum ContentScreen
        {
            Mimic,
            Trends,
            BarChart,
            Diagnostics,
            Learning,
            SensorReplace,
            SensorSetup,
            Settings,
            SurveyorTest,
            Reporting,
            Temperature
        }

        /// <summary>
        /// Allow all code access to the main page navigation functions and XTS-W system data.
        /// </summary>
        private static MainPage instance;

        /// <summary>
        /// Internal data for the XTSDataSource.  Will be initialised as a specific object implementing the interface.
        /// </summary>
		private IXTSDataProvider xts;
        /// <summary>
        /// The XTS-W system data
        /// </summary>
        public IXTSDataProvider XTSDataSource
        {
            get
            {
                return this.xts;
            }
        }

        /// <summary>
        /// Internal data for EnablePopups
        /// </summary>
        private bool enablePopups = true;
        /// <summary>
        /// Disable popups if we are showing the settings screen
        /// Workaround due to showing html in iFrame floating on top of silverlight
        /// </summary>
        public bool EnablePopups
        {
            set
            {
                this.Alarm_bar.DisableAlarmPopups = !value;
                this.NavBar.MenuToggle.IsEnabled = value;
                this.BottomBar.ButtonHelp.IsEnabled = value;
                this.BottomBar.UserLogIn.IsEnabled = value;
                // Errors and warnings will send user back to mimic screen.
                this.enablePopups = value;
            }
            get
            {
                return this.enablePopups;
            }
        }

        /// <summary>
        /// Internal data for IgnoreCommsErrors
        /// </summary>
        private bool ignoreCommsErrors = false;
        /// <summary>
        /// Prevents the error dialog from showing when a comms error occurs
        /// </summary>
        public bool IgnoreCommsErrors
        {
            get
            {
                return this.ignoreCommsErrors;
            }
            set
            {
                bool changed = (value != this.ignoreCommsErrors);
                this.ignoreCommsErrors = value;
                if (changed)
                {
                    CheckComms();
                }
            }
        }

        /// <summary>
        /// Internal data for LabelScreenDescription display
        /// </summary>
        private uint currentselectedTrendConfiguration = 0;

        public uint CurrentselectedTrendConfiguration
        {
            get
            {
                return this.currentselectedTrendConfiguration;
            }
            set
            {
                this.currentselectedTrendConfiguration = value;                
            }
        }

        /// <summary>
        /// The current content displayed
        /// </summary>
        private ContentScreen currentContent = ContentScreen.Mimic;
        /// <summary>
        /// Property for accessing the type of content currently displayed.
        /// </summary>
        public ContentScreen CurrentContent
        {
            get
            {
                return this.currentContent;
            }
        }

        private SyncState alarmFlashSync = null;
        public SyncState AlarmFlashSync
        {
            get
            {
                return this.alarmFlashSync;
            }
        }

        /// <summary>
        /// Main constructor
        /// </summary>
        /// <param name="xtsData">The XTS-W system data</param>
		public MainPage(IXTSDataProvider xtsData)
		{
            this.xts = xtsData;
            MainPage.instance = this;

            this.alarmFlashSync = new SyncState(true, 500);
            this.alarmFlashSync.Start();

            this.errorMessageBoxes = new List<AMOTMessageBox>();
            this.errorCodes = new List<XTSErrors>();

            // Required to initialize variables
			InitializeComponent();

            // Connect main screen controls to their data.
            BindData();

            // Add the default child screen.
            RenderControl(MainPage.ContentScreen.Mimic);

#if DEBUG
            this.buttonRestart.Visibility = System.Windows.Visibility.Visible;
#endif
        }

        void UserData_PropertyChanged(object sender, PropertyChangedEventArgs e)
        {
            if (e.PropertyName.Equals("CurrentUser"))
            {
                StartTimeoutThread(); 
            }
        }

        /// <summary>
        /// Global way of detecting mouse events so we know when to timeout the user or not. 
        /// MouseClick could've been used but some controls consume that event such as radiobuttons
        /// and toggle buttons. 
        /// As we are using this on a touchscreen the mouse will only move once in a while anyway. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void MainPage_MouseMove(object sender, System.Windows.Input.MouseEventArgs e)
        {
            lock (timeoutLock)
            {
                mouseEventOccurred = true; 
            }
        }

        /// <summary>
        /// Starts the timeout background worker
        /// </summary>
        public void StartTimeoutThread()
        {
            if (XTSDataSource.UserData.CurrentUser != null)
            {
                if (XTSDataSource.UserData.CurrentUser.Timeout > 0)
                {
                    userActivity = new BackgroundWorker();
                    userActivity.WorkerSupportsCancellation = true;
                    userActivity.DoWork += new DoWorkEventHandler(userActivity_DoWork);
                    userActivity.RunWorkerAsync();
                }
            }
            else
            {
                UserControl screen = (UserControl) this.Main_Window.Children[0];

                if (screen is SurveyorTest ||
                    screen is SensorSetup ||
                    screen is SensorReplace ||
                    screen is Learning)
                {
                    this.RenderControl(ContentScreen.Mimic);
                }
            }
        }

        /// <summary>
        /// Raises a request to cancel the background worker thread
        /// </summary>
        public void CancelTimeoutThread()
        {
            if (userActivity != null)
            {
                if (userActivity.WorkerSupportsCancellation)
                {
                    userActivity.CancelAsync();
                }
            }
        }

        /// <summary>
        /// Readonly value for ONE_MINUTE in seconds
        /// </summary>
        private readonly int ONE_MINUTE = 60;

        /// <summary>
        /// Timeout background worker thread. 
        /// Does all the checking for mousemovement
        /// and resetting timeout values. 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void userActivity_DoWork(object sender, DoWorkEventArgs e)
        {
            XTSUser user = this.XTSDataSource.UserData.CurrentUser;
            bool stopThread = false; 

            int minCount = 0;
            int timeout;

            lock (timeoutLock)
            {
                timeout = (int) user.Timeout;
            }

            do
            {
                minCount = 0;
                do
                {
                    Thread.Sleep(new TimeSpan(0, 0, 1));
                    if (userActivity.CancellationPending)
                    {
                        e.Cancel = true;
                        stopThread = true; 
                        break;
                    }

                    if (mouseEventOccurred)
                    {
                        minCount = 0;
                        lock (timeoutLock)
                        {
                            timeout = (int) user.Timeout;
                        }

                        mouseEventOccurred = false; 
                    }

                    minCount += 1;
                } while (minCount < ONE_MINUTE);

                if (user != null && !stopThread)
                {
                    lock (timeoutLock)
                    {
                        timeout -= 1;

                        if (timeout <= 0)
                        {
                            this.XTSDataSource.UserLogOff(null);
                            stopThread = true; 
                        }
                    }
                }
                else
                {
                    break;
                }

                if (stopThread)
                {
                    break;
                }
            } while (true);
        }

        /// <summary>
        /// Connect main screen user controls to their relevant system data
        /// </summary>
        private void BindData()
        {
            // No controls currently.
        }

        /// <summary>
        /// Creates a new control and adds it to the main window children, after removing the current one.
        /// </summary>
        /// <param name="content">User control type to render in the main area of the main screen.</param>
        public void RenderControl(ContentScreen contentScreen)
        {
            UserControl newPage = null;
            string description = null;

            this.currentContent = contentScreen;

            switch (contentScreen)
            {
                case ContentScreen.BarChart:
                    {
                        description = XTS.LocalizedResources.GetResourceString("XTSStringBarCharts");
                        newPage = new BarGraph();
                        this.XTSDataSource.SetMode(XTSMode.Default);
                        break;
                    }
                case ContentScreen.Diagnostics:
                    {
                        description = XTS.LocalizedResources.GetResourceString("XTSStringDiagnostics");
                        newPage = new Diagnostics();
                        this.XTSDataSource.SetMode(XTSMode.Diagnostics);
                        break;
                    }
                case ContentScreen.Learning:
                    {
                        description = XTS.LocalizedResources.GetResourceString("XTSStringEngineLearning");
                        newPage = new Learning();
                        this.XTSDataSource.SetMode(XTSMode.Learning);
                        break;
                    }
                case ContentScreen.SensorReplace:
                    {
                        description = XTS.LocalizedResources.GetResourceString("XTSStringSensorReplacement");
                        newPage = new SensorReplace();
                        this.XTSDataSource.SetMode(XTSMode.SensorReplace);
                        break;
                    }
                case ContentScreen.SensorSetup:
                    {
                        description = XTS.LocalizedResources.GetResourceString("XTSStringSensorSetup");
                        newPage = new SensorSetup();
                        this.XTSDataSource.SetMode(XTSMode.SensorSetup);
                        break;
                    }
                case ContentScreen.Settings:
                    {
                        description = XTS.LocalizedResources.GetResourceString("XTSStringSettings");
                        newPage = new Settings();
                        this.XTSDataSource.SetMode(XTSMode.Default);
                        break;
                    }
                case ContentScreen.SurveyorTest:
                    {
                        description = XTS.LocalizedResources.GetResourceString("XTSStringSensorSurvey");
                        newPage = new SurveyorTest();
                        this.XTSDataSource.SetMode(XTSMode.SurveyorTest);
                        break;
                    }
                case ContentScreen.Temperature:
                    {
                        description = XTS.LocalizedResources.GetResourceString("XTSStringTemperature");
                        newPage = new Temperature();
                        this.XTSDataSource.SetMode(XTSMode.Temperature);
                        break;
                    }
                case ContentScreen.Trends:
                    {
                        description = XTS.LocalizedResources.GetResourceString("XTSStringTrends");                        
                        newPage = Trends.Instance;
                        //Trends.Instance.UpdateTrendInformation();
                        this.XTSDataSource.SetMode(XTSMode.Trends);
                        break;
                    }
                case ContentScreen.Reporting:
                    {
                        description = XTS.LocalizedResources.GetResourceString("XTSStringReporting");
                        newPage = new Reporting();
                        this.XTSDataSource.SetMode(XTSMode.Reporting);
                        break;
                    }
                case ContentScreen.Mimic:
                default:
                    {
                        description = XTS.LocalizedResources.GetResourceString("XTSStringEngineMimicScreen");
                        newPage = new Mimic();
                        this.XTSDataSource.SetMode(XTSMode.Default);
                        break;
                    }
            }

            this.EnablePopups = (contentScreen != ContentScreen.Settings);

            // Add the page and set the description
            this.Main_Window.Children.Clear();
            this.Main_Window.Children.Add(newPage);
            // TODO: Add this as a property of the header usercontrol rather than modifying the content of the label directly?
            this.Header.LabelScreenDescription.Content = description;

            // May need to remove/show warning if we've changed screens
            CheckComms();
        }

        /// <summary>
        /// Returns the current instance of the main screen to allow
        /// access to setting the main content and system data.
        /// </summary>
        /// <returns>The instance pointer to this main screen.</returns>
        internal static object GetInstance()
        {
            return (MainPage) instance;
        }

        #region Error Handling
        /// <summary>
        /// The current message boxes displayed showing errors.
        /// </summary>
        private List<AMOTMessageBox> errorMessageBoxes;
        /// <summary>
        /// List of error codes associated with the displaed message boxes.
        /// </summary>
        // TODO: Subclass AMOTMessageBox specific to displaying errors so that it includes this info??
        private List<XTSErrors> errorCodes;

        /// <summary>
        /// Display a message to the user that an error has occurred.
        /// </summary>
        /// <param name="errorCode">The error</param>
        /// <param name="parameters">Paramters for formatting the message string</param>
        public void ShowErrorMessage(XTSErrors errorCode, object[] parameters)
        {
            // Check if we are on the main ui thread or not.
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess())
            {
                lock (this.errorCodes)
                {
                    // Don't show popup/change screen if we're set to ignore comms errors
                    if (!(errorCode == XTSErrors.CommsFailure && this.ignoreCommsErrors))
                    {
                        // If popups are disabled send back to mimic before showing.
                        if (!this.enablePopups)
                        {
                            this.RenderControl(ContentScreen.Mimic);
                        }
                        bool showNewMessage = true;
                        // For certain errors, we don't want to show a new message box,
                        // so check if we are already displaying a message box for certain error codes
                        switch (errorCode)
                        {
                            case XTSErrors.CommsFailure:
                            case XTSErrors.UnauthorisedUser:
                                {
                                    if (this.errorCodes.Contains(errorCode))
                                    {
                                        showNewMessage = false;
                                    }
                                    break;
                                }
                            default:
                                {
                                    break;
                                }
                        }
                        if (showNewMessage)
                        {
                            AMOTMessageBox amb = new AMOTMessageBox();
                            amb.Title = XTS.LocalizedResources.GetResourceString("XTSStringMessageBoxTitleError");
                            amb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.OK;
                            switch (errorCode)
                            {
                                case XTSErrors.UnhandledException:
                                    {
                                        Exception e = (Exception)parameters[0];
                                        string message = e.Message;
#if DEBUG
                                        // If debug add extra details.
                                        message += "\n\n" + e.StackTrace;
#endif
                                        message = message.Replace('"', '\'').Replace("\r\n", @"\n");

                                        amb.Message = XTS.LocalizedResources.GetResourceString("XTSStringUnhandledErrorReportAdmin") + message;
                                        break;
                                    }
                                case XTSErrors.CommsFailure:
                                    {
                                        amb.Message = XTS.LocalizedResources.GetResourceString("XTSStringCommsErrorOccurred");
                                        break;
                                    }
                                case XTSErrors.RegistrationError:
                                    {
                                        amb.Message = XTS.LocalizedResources.GetResourceString("XTSStringImoErrorOccurred");
                                        break;
                                    }
                                case XTSErrors.General:
                                    {
                                        if (parameters != null)
                                        {
                                            amb.Message = XTS.LocalizedResources.GetResourceString("XTSStringErrorOccurred0", parameters);
                                        }
                                        else
                                        {
                                            amb.Message = XTS.LocalizedResources.GetResourceString("XTSStringErrorOccurred");
                                        }
                                        break;
                                    }
                                case XTSErrors.EngineLearnVefificationCodeIncorrect:
                                    {
                                        amb.Message = XTS.LocalizedResources.GetResourceString("XTSStringEngineLearnCodeIncorrect");
                                        break;
                                    }
                                case XTSErrors.SensorReplaceImportFileError:
                                    {
                                        amb.Message = XTS.LocalizedResources.GetResourceString("XTSStringSensorImportFileError");
                                        break;
                                    }
                                case XTSErrors.FileDownloadError:
                                    {
                                        amb.Message = XTS.LocalizedResources.GetResourceString("XTSStringFileDownloadError");
                                        break;
                                    }
                                case XTSErrors.UnauthorisedUser:
                                    {
                                        amb.Message = XTS.LocalizedResources.GetResourceString("XTSStringFunctionAccessDenied");
                                        break;
                                    }
                                default:
                                    {
                                        amb.Message = XTS.LocalizedResources.GetResourceString("XTSStringUnknownErrorOccurred");
                                        break;
                                    }
                            }
                            amb.Closed += new EventHandler(amb_Closed);
                            this.errorMessageBoxes.Add(amb);
                            this.errorCodes.Add(errorCode);
                            amb.Show();
                        }
                    }
                }
            }
            else
            {
               System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new XTSErrorDelegate(ShowErrorMessage), errorCode, parameters);
            }
        }

        /// <summary>
        /// Callback for closing error message box.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void amb_Closed(object sender, EventArgs e)
        {
            lock (this.errorCodes)
            {
                AMOTMessageBox amb = sender as AMOTMessageBox;
                int index = this.errorMessageBoxes.IndexOf(amb);
                this.errorMessageBoxes.RemoveAt(index);
                this.errorCodes.RemoveAt(index);
                amb.Closed -= amb_Closed;
            }
        }

        #endregion // Error Handling

        #region Progress Callbacks

        private uint busyRefCount = 0;
        private object busyRefCountLock = new object();

        /// <summary>
        /// Callback for operations that should show a busy indicator.
        /// </summary>
        /// <param name="busy">True will show the busy indicator, false hides it.</param>
        public void ShowBusy(bool busy)
        {
            // Check if we are on the main ui thread or not.
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess())
            {
                lock (this.busyRefCountLock)
                {
                    if (busy)
                    {
                        busyRefCount++;
                    }
                    else if (busyRefCount > 0)
                    {
                        busyRefCount--;
                    }
                    busy = busyRefCount > 0;
                    if (busy)
                    {
                        this.gridBusyIndicator.Visibility = System.Windows.Visibility.Visible;
                    }
                    else
                    {
                        this.gridBusyIndicator.Visibility = System.Windows.Visibility.Collapsed;
                    }
                    this.radBusyIndicator.IsBusy = busy;
                }
            }
            else
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new XTSBusyDelegate(ShowBusy), busy);
            }
        }

        /// <summary>
        /// Callback for operations that should show a progress bar.
        /// </summary>
        /// <param name="percent">How far through the operation it is.  100+ will close the progress bar.</param>
        public void ShowProgress(uint percent)
        {
            // Check if we are on the main ui thread or not.
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess())
            {
                System.Windows.Visibility visible = System.Windows.Visibility.Collapsed;
                if (percent < 100)
                {
                    this.radProgressBar.Value = percent;
                    visible = System.Windows.Visibility.Visible;
                }
                this.gridProgressBar.Visibility = visible;
            }
            else
            {
               System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new XTSProgressDelegate(ShowProgress), percent);
            }
        }
        #endregion // Progress Callbacks

        /// <summary>
        /// Callback for when screen is first shown.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void MainPage_Loaded(object sender, System.Windows.RoutedEventArgs e)
        {
            // Setup the UI callback for errors.
            this.xts.SetErrorCallback(this.ShowErrorMessage);
            this.xts.SetBusyCallbacks(this.ShowBusy, this.ShowProgress);

            this.MouseMove += new System.Windows.Input.MouseEventHandler(MainPage_MouseMove);
            this.XTSDataSource.UserData.PropertyChanged += new PropertyChangedEventHandler(UserData_PropertyChanged);
            this.XTSDataSource.Diagnostics.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(Diagnostics_PropertyChanged);
            this.XTSDataSource.VersionInfo.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(VersionInfo_PropertyChanged);

            CheckComms();
        }

        /// <summary>
        /// Callback for when screen is unloaded.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void MainPage_Unloaded(object sender, System.Windows.RoutedEventArgs e)
        {
            this.xts.SetErrorCallback(null);
            this.xts.SetBusyCallbacks(null, null);

            this.MouseMove -= MainPage_MouseMove;
            this.XTSDataSource.VersionInfo.PropertyChanged -= VersionInfo_PropertyChanged;
            this.XTSDataSource.UserData.PropertyChanged -= UserData_PropertyChanged;
            this.XTSDataSource.Diagnostics.PropertyChanged -= Diagnostics_PropertyChanged;
        }

        /// <summary>
        /// Generates a filename for exporting data. 
        /// </summary>
        /// <param name="description">Description of the file to be saved</param>
        /// <param name="type">File type </param>
        /// <returns></returns>
        public string GenerateFilename(string description, string type)
        {
            string datetime = this.XTSDataSource.General.SPUDateTime.ToString("yyyyMMddHHmmss");

            StringBuilder sb = new StringBuilder(); 

            sb.Append(datetime);
            sb.Append("-");
            sb.Append(description); 
            sb.Append(".");
            sb.Append(type);

            return sb.ToString(); 
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
                            this.gridNoComms.Visibility = System.Windows.Visibility.Collapsed;
                        }
                        else
                        {
                            if ((this.currentContent == ContentScreen.Settings) ||
                                (this.currentContent == ContentScreen.Trends))
                            {
                                this.gridNoComms.Visibility = System.Windows.Visibility.Collapsed;
                            }
                            else if (this.currentContent == ContentScreen.Temperature)
                            {
                            }
                            else
                            {
                                this.gridNoComms.Visibility = System.Windows.Visibility.Visible;
                            }
                        }
                    }
                    else
                    {
                        this.gridNoComms.Visibility = System.Windows.Visibility.Collapsed;
                    }
                    this.Alarm_bar.CommsOK = true;
                    this.BottomBar.SetComms(true, true);
                }
                else
                {
                    if ((this.currentContent == ContentScreen.Settings) ||
                        (this.currentContent == ContentScreen.Trends))
                    {
                        this.gridNoComms.Visibility = System.Windows.Visibility.Collapsed;
                    }
                    else if (this.currentContent == ContentScreen.Temperature)
                    {
                    }
                    else
                    {
                        this.gridNoComms.Visibility = System.Windows.Visibility.Visible;
                    }
                    this.Alarm_bar.CommsOK = false;
                    this.BottomBar.SetComms(true, false);
                }

                if (diagnostics.PLCComms.HasValue && diagnostics.PLCComms.Value)
                {
                    if (this.currentContent == ContentScreen.Temperature)
                    {
                        this.gridNoComms.Visibility = System.Windows.Visibility.Collapsed;
                        this.Alarm_bar.CommsOK = true;
                        this.BottomBar.SetComms(true, true);
                    }
                }
                else
                {
                    if (this.currentContent == ContentScreen.Temperature)
                    {
                        this.gridNoComms.Visibility = System.Windows.Visibility.Visible;                        
                        this.Alarm_bar.CommsOK = false;
                        this.BottomBar.SetComms(false, false);
                    }
                }
            }
            else
            {               
                if (this.currentContent == ContentScreen.Temperature)
                {
                    if (diagnostics.PLCComms.HasValue && diagnostics.PLCComms.Value)
                    {
                        this.gridNoComms.Visibility = System.Windows.Visibility.Collapsed;
                        this.Alarm_bar.CommsOK = true;
                        this.BottomBar.SetComms(true, true);
                    }
                    else
                    {                        
                        this.gridNoComms.Visibility = System.Windows.Visibility.Visible;
                        this.Alarm_bar.CommsOK = false;
                        this.BottomBar.SetComms(false, false);
                    }
                }
                else
                {
                    if ((this.ignoreCommsErrors && (this.currentContent == ContentScreen.Settings)))
                    {
                        this.gridNoComms.Visibility = System.Windows.Visibility.Collapsed;
                    }
                    else
                    {
                        this.gridNoComms.Visibility = System.Windows.Visibility.Visible;
                    }
                    this.Alarm_bar.CommsOK = false;
                    this.BottomBar.SetComms(false, false);
                }
            }
        }

        void VersionInfo_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName.Equals("RefreshRequired"))
            {
                XTSVersion version = sender as XTSVersion;
                if (version.RefreshRequired)
                {
                    // If popups are disabled send back to mimic before showing.
                    if (!this.enablePopups)
                    {
                        this.RenderControl(ContentScreen.Mimic);
                        this.Alarm_bar.CallPopupHandlers();
                    }

                    AMOTMessageBox amb = new AMOTMessageBox();
                    amb.Message =  XTS.LocalizedResources.GetResourceString("XTSStringRestartRequired");
                    amb.Buttons = AMOTMessageBox.AMOTMessageBoxButtons.OKCancel;
                    amb.Title = XTS.LocalizedResources.GetResourceString("XTSStringRestartRequiredTitle");
                    amb.Closed += new EventHandler(RestartMessageBox_Closed);
                    amb.Show();
                }
            }
        }

        void RestartMessageBox_Closed(object sender, EventArgs e)
        {
            AMOTMessageBox amb = sender as AMOTMessageBox;
            amb.Closed -= RestartMessageBox_Closed;
            if (amb.DialogResult.HasValue)
            {
                if (amb.DialogResult.Value)
                {
                    ((App)App.Current).HideChildWindows();
                    this.gridRestarting.Visibility = System.Windows.Visibility.Visible;

                    // We need the sleep in a separate thread so we don't lock up the UI
                    System.Threading.Thread restartThread = new System.Threading.Thread
                    (delegate()
                    {
                        Thread.Sleep(500);

                        // Refresh the browser!  Needs to be done on UI thread.
                        Dispatcher.BeginInvoke(() => System.Windows.Browser.HtmlPage.Window.Eval("Reload()"));
                    });
                    restartThread.Start();
                }
            }
        }

        private void buttonRestart_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            this.xts.VersionInfo.RefreshRequired = true;
        }
	}
}
