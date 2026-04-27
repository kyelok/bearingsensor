/* 
 * Mimic.xaml.cs
 * 
 * Main page screen for displaying the engine components graphically to the user
 * and their sensor readings.
 * C# partial implementation of Mimic.xaml silverlight user control screen.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 25/01/2012
 */

using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Media;

using XTS.Controls;

namespace XTS
{
	/// <summary>
	/// Interaction logic for Mimic.xaml
	/// </summary>
	public partial class Mimic : UserControl
	{
        private static Mimic instance;

        public static Mimic Instance
        {
            get
            {
                if(instance == null)
                {
                    instance = new Mimic(); 
                }

                return instance; 
            }
            set
            {
                instance = value; 
            }
        }

        private int[] temperature = new int[64];
        private int[] mainBearingTemperature = new int[32];
        private int[] crossheadBearingTemperature = new int[28];
        private int[] crankpinBearingTemperature = new int[28];
        private int[] thrustBearingTemperature = new int[14];

        private bool[] mainBearingTemperatureAlarm = new bool[32];
        private bool[] crossheadBearingTemperatureAlarm = new bool[28];
        private bool[] crankpinBearingTemperatureAlarm = new bool[28];
        private bool[] thrustBearingTemperatureAlarm = new bool[14];
      
        private string[] mainBearingSensorName = new string[32];
        private string[] crossheadBearingSensorName = new string[28];
        private string[] crankpinBearingSensorName = new string[28];
        private string[] thrustBearingSensorName = new string[14];

        private List<Cylinder> cylinderControls = new List<Cylinder>();
        private List<MainBearing> MainbearingControls = new List<MainBearing>();

        /// <summary>
        /// Default constructor
        /// </summary>
		public Mimic()
		{
			InitializeComponent();

			// Insert code required on object creation below this point.
            Instance = this;

            this.GridEngine.Visibility = Visibility.Collapsed;
            this.GridWaiting.Visibility = Visibility.Visible;
        }

        /// <summary>
        /// Callback for when our engine data has been updated.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void EngineData_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (e.PropertyName.Equals("Beraingtemperature"))
            {
                UpdateTempDisplay();
            }

            if (e.PropertyName.Equals("WIO"))
            {
                if (mp.XTSDataSource.EngineData.WIO != null)
                {
                    mp.XTSDataSource.EngineData.WIO.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(EngineDataWIO_PropertyChanged);
                    CheckComms();
                }
                else
                {
                    // NOTE: We should remove the property changed handler from the WIO object, however, it is no longer
                    // referenced in the engine data so we have no way of doing so!
                    // In practice WIO is only added once and never removed if it exists so this case will likely never occur.
                    //mp.XTSDataSource.EngineData.WIO.PropertyChanged -= EngineDataWIO_PropertyChanged;
                }
            }
            if (e.PropertyName.Equals("SEDM"))
            {
                if (mp.XTSDataSource.EngineData.SEDM != null)
                {
                    mp.XTSDataSource.EngineData.SEDM.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(EngineDataSEDM_PropertyChanged);
                    CheckComms();
                }
                else
                {
                    // NOTE: We should remove the property changed handler from the SEDM object, however, it is no longer
                    // referenced in the engine data so we have no way of doing so!
                    // In practice SEDM is only added once and never removed if it exists so this case will likely never occur.
                    //mp.XTSDataSource.EngineData.SEDM.PropertyChanged -= EngineDataSEDM_PropertyChanged;
                }
            }
            // Determine which property was changed.
            if ((e.PropertyName.Equals("Cylinders")) ||
                (e.PropertyName.Equals("WIO")) ||
                (e.PropertyName.Equals("SEDM")))
            {
                //UpdateTempDisplay();
                BindData();                
            }
            else if (e.PropertyName.Equals("SPU2Fitted"))
            {
                if (mp != null)
                {
                    if (!mp.XTSDataSource.EngineData.SPU2Fitted)
                    {
                        this.GridSPU2.Visibility = Visibility.Collapsed;
                        this.PathSPU2.Visibility = Visibility.Collapsed;
                    }
                    else
                    {
                        this.GridSPU2.Visibility = Visibility.Visible;
                        this.PathSPU2.Visibility = Visibility.Visible;
                    }
                }
            }            
        }

        void EngineDataWIO_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName.Equals("Connection"))
            {
                CheckComms();
            }
        }

        void EngineDataSEDM_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName.Equals("Connection"))
            {
                CheckComms();
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
            if (e.PropertyName.Equals("CPUComms") ||
                e.PropertyName.Equals("CPUCommsNetwork"))
            {
                UpdateCPUComms((XTSDiagnostics) sender);
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
                        this.PathSPU2.Opacity = 1.0;
                        if (diagnostics.SPU2Comms.HasValue &&
                            diagnostics.SPU2Comms.Value)
                        {
                            this.GridSPU2.Opacity = 1.0;
                            this.Popup.SPUCommsOK = true;
                            this.StackEngine.Opacity = 1.0;
                        }
                        else
                        {
                            this.GridSPU2.Opacity = 0.5;
                            this.Popup.SPUCommsOK = false;
                            this.StackEngine.Opacity = 0.5;
                        }
                    }
                    else
                    {
                        this.Popup.SPUCommsOK = true;
                        this.StackEngine.Opacity = 1.0;
                    }
                    this.GridSPU.Opacity = 1.0;
                    this.GridIF.Opacity = 1.0;
                    this.GridIFComms.Opacity = 1.0;
                    this.GridAlarms.Opacity = 1.0;
                    if (engineData.WIO != null)
                    {
                        if (engineData.WIO.Connection.HasValue &&
                            engineData.WIO.Connection.Value)
                        {
                            this.wio.Opacity = 1.0;
                            this.wio.IsEnabled = true;
                        }
                        else
                        {
                            this.wio.Opacity = 0.5;
                            this.wio.IsEnabled = false;
                        }
                    }
                    if (engineData.SEDM != null)
                    {
                        if (engineData.SEDM.Connection.HasValue &&
                            engineData.SEDM.Connection.Value)
                        {
                            this.sedm.Opacity = 1.0;
                            this.sedm.IsEnabled = true;
                        }
                        else
                        {
                            this.sedm.Opacity = 0.5;
                            this.sedm.IsEnabled = false;
                        }
                    }
                    this.GridWIOSEDMComms.Opacity = 1.0;
                }
                else
                {
                    // No SPU comms, grey out all to do with SPU
                    if (engineData.SPU2Fitted)
                    {
                        this.GridSPU2.Opacity = 0.5;
                        this.PathSPU2.Opacity = 0.5;
                    }
                    this.GridSPU.Opacity = 0.5;
                    this.GridIF.Opacity = 0.5;
                    this.GridIFComms.Opacity = 0.5;
                    this.GridAlarms.Opacity = 0.5;
                    this.wio.Opacity = 0.5;
                    this.wio.IsEnabled = false;
                    this.sedm.Opacity = 0.5;
                    this.sedm.IsEnabled = false;
                    this.GridWIOSEDMComms.Opacity = 0.5;
                    this.StackEngine.Opacity = 0.5;
                    this.Popup.SPUCommsOK = false;
                }
                this.GridSPUComms.Opacity = 1.0;
                this.Popup.CommsOK = true;
            }
            else
            {
                // No Network!  Grey out everything!
                if (engineData.SPU2Fitted)
                {
                    this.GridSPU2.Opacity = 0.5;
                    this.PathSPU2.Opacity = 0.5;
                }
                this.GridSPU.Opacity = 0.5;
                this.GridIF.Opacity = 0.5;
                this.GridIFComms.Opacity = 0.5;
                this.GridAlarms.Opacity = 0.5;
                this.wio.Opacity = 0.5;
                this.wio.IsEnabled = false;
                this.sedm.Opacity = 0.5;
                this.sedm.IsEnabled = false;
                this.GridWIOSEDMComms.Opacity = 0.5;
                this.StackEngine.Opacity = 0.5;
                this.GridSPUComms.Opacity = 0.5;
                this.Popup.CommsOK = false;
                this.Popup.SPUCommsOK = false;
            }
        }

        /// <summary>
        /// Displays the popup with cylinders adjacent to the one that is indicated
        /// </summary>
        /// <param name="cylinder">Cylinder control to show</param>
        public void ShowCylinderPopup(uint cylinderIndex, uint popupType)
        {
            // Find cylinder in stack
            foreach (UserControl uc in this.StackEngine.Children)
            {
                if (uc is Cylinder)
                {
                    Cylinder cylinder = uc as Cylinder;
                    if (cylinder.Index == cylinderIndex)
                    {
                        ShowCylinderPopup(cylinder, popupType);
                        break;
                    }
                }
            }
        }

        /// <summary>
        /// Displays the popup with cylinders adjacent to the one that was pressed
        /// </summary>
        /// <param name="cylinder">Cylinder control that was pressed</param>
        public void ShowCylinderPopup(Cylinder cylinder, uint popupType)
        {
            // Calculate width and position of popup
            int component_count = this.StackEngine.Children.Count;

            int cylinder_left = -1;
            int cylinder_right = -1;
            int cylinder_middle = -1;

            double left_offset = 0;
            double right_offset = 0;

            bool noPrev = false;
            bool noNext = false;

            //Find what position the selected cylinder is at. 
            for (int i = 0; i < component_count; i++)
            {
                if (this.StackEngine.Children[i] == cylinder)
                {
                    cylinder_middle = i;
                    break;
                }
            }

            //Attempt to find one on the left
            for (int i = (cylinder_middle - 1); i > 0; i--)
            {
                if (this.StackEngine.Children[i] is TimingChain)
                {
                    break;
                }

                if (this.StackEngine.Children[i] is Cylinder)
                {
                    cylinder_left = i;
                    break;
                }
            }

            //Attempt to find one on the right
            for (int i = (cylinder_middle + 1); i < component_count; i++)
            {
                if (this.StackEngine.Children[i] is TimingChain)
                {
                    break;
                }

                if (this.StackEngine.Children[i] is Cylinder)
                {
                    cylinder_right = i;
                    break;
                }
            }


            int cylinder_first = cylinder_left;
            int cylinder_last = cylinder_right;
            if (cylinder_left == -1)
            {
                noPrev = true;
                cylinder_first = cylinder_middle;
            }

            if (cylinder_right == -1)
            {
                noNext = true;
                cylinder_last = cylinder_middle;
            }

            double spacer = 12;
            // We're almost there, now we need to find the offset from the left
            for (int i = 0; i < component_count; i++)
            {
                UserControl component = this.StackEngine.Children[i] as UserControl;

                GeneralTransform gt = component.TransformToVisual(Application.Current.RootVisual as UIElement);
                Point offset = gt.Transform(new Point(0, 0));
                if (i == cylinder_first)
                {
                    left_offset = offset.X;
                }
                else if (i == cylinder_first - 1)
                {
                    spacer = offset.X;
                }
                else if (i == cylinder_last + 1)
                {
                    right_offset = offset.X;
                    break;
                }
            }
            if (right_offset == left_offset)
            {
                // NOTE: There is an odd bug when using IE 7/8 in that sometimes the operations above to
                // get screen coordinates of controls will always return the left most point (stackpanel children
                // not reporting correctly, or it may be reporting the parent??).  When we detect that this has
                // occurred, we simply try displaying again on the UI thread.

                // WARNING: There is a danger that this may cause an infinite cycle, but the problem has yet to
                // be seen to repeat itself.

                MainPage mp = (MainPage)MainPage.GetInstance();
                mp.Dispatcher.BeginInvoke(() =>
                {
                    ShowCylinderPopup(cylinder.Index, popupType);
                });
            }
            else
            {
                IXTSDataProvider xts = ((MainPage)MainPage.GetInstance()).XTSDataSource;

                // Assume there is always a main bearing before the cylinder
                spacer = left_offset - spacer;

                this.Popup.Visibility = System.Windows.Visibility.Visible;
                this.PopupWio.Visibility = System.Windows.Visibility.Visible;
                this.PopupSedm.Visibility = System.Windows.Visibility.Visible;

                if (popupType == 0)
                {
                    this.PopupWio.ClosePopup();
                    this.PopupSedm.ClosePopup();

                    this.Popup.Margin = new Thickness(left_offset - 4, 0, 0, 0);
                    this.Popup.Width = (right_offset - left_offset + 52 + 4);
                
                    List<uint> cylinders = new List<uint>(3);
                	if (cylinder_left != -1)
                    {
                        cylinders.Add((this.StackEngine.Children[cylinder_left] as Cylinder).Index);
                    }
                    if (cylinder_middle != -1)
                    {
                        cylinders.Add((this.StackEngine.Children[cylinder_middle] as Cylinder).Index);
                    }
                    if (cylinder_right != -1)
                    {
                        cylinders.Add((this.StackEngine.Children[cylinder_right] as Cylinder).Index);
                    }
   
                    this.Popup.ShowNextButton = !noNext;
                    this.Popup.ShowPreviousButton = !noPrev;
                    this.Popup.SelectedCylinder = cylinder.Index;
                    this.Popup.ShowPopup(cylinders, spacer);
                }
                else
                {
                    List<uint> cylinders = new List<uint>(1);
                    
                    if (cylinder_middle != -1)
                    {
                        cylinders.Add((this.StackEngine.Children[cylinder_middle] as Cylinder).Index);
                    }
                    this.Popup.ClosePopup();
                    if (popupType == 1)
                    {                        
                        this.PopupSedm.ClosePopup();
                        this.PopupWio.Margin = new Thickness(left_offset - 4, 0, 0, 0);
                        this.PopupWio.Width = (right_offset - left_offset + 52 + 4);

                        //This gives the position of pop up
                        this.PopupWio.SelectedCylinder = (uint)xts.EngineData.Cylinders.Count - 1;
                        this.PopupWio.ShowPopup(cylinders, spacer);
                    }
                    else
                    {                        
                        this.PopupWio.ClosePopup();
                        this.PopupSedm.Margin = new Thickness(left_offset - 4, 0, 0, 0);
                        this.PopupSedm.Width = (right_offset - left_offset + 52 + 4);

                        //This gives the position of pop up
                        this.PopupSedm.SelectedCylinder = (uint)xts.EngineData.Cylinders.Count - 1;
                        this.PopupSedm.ShowPopup(cylinders, spacer);
                    }
                }                                
            }
        }

        /// <summary>
        /// Add engine components to mimic and bind to engine data
        /// </summary>
        private void BindData()
        {
            // Will only ever get called if MainPage is initialised, so no need to check
            IXTSDataProvider xts = ((MainPage)MainPage.GetInstance()).XTSDataSource;
            bool haveData = false;            
            ClearBindings();
            this.cylinderControls.Clear();
            this.MainbearingControls.Clear();
            this.StackEngine.Children.Clear();
            if (xts.EngineData != null)
            {
                // Only draw mimic if we have cylinder information
                if ((xts.EngineData.Cylinders != null) &&
                    (xts.EngineData.Cylinders.Count > 0))
                {
                    // Cylinder displays
                    int b = 0;
                    int c = 0;
                    foreach (XTSCylinder cylinder in xts.EngineData.Cylinders)
                    {
                        XTSCylinder cylinderTemp = cylinder;
                        
                        bool tcAdded = false;
                        // Do we need to create a timing chain?
                        if (xts.EngineData.TimingChain != null)
                        {
                            if (xts.EngineData.TimingChain == c)
                            {
                                // Need to add a main bearing before timing chain
                                if ((xts.EngineData.MainBearings != null) &&
                                    (xts.EngineData.MainBearings.Count > b))
                                {
                                    this.MainbearingControls.Add(CreateBearing(xts.EngineData.MainBearings[b++], MainBearing.EngineBlockPosition.RightTimingChain));
                                    if (this.MainbearingControls.Count != 0) { this.StackEngine.Children.Add(this.MainbearingControls[this.MainbearingControls.Count - 1]); }
                                }
                                this.StackEngine.Children.Add(this.CreateTimingChain());
                                tcAdded = true;
                            }
                        }
                        // Need to add a main bearing before cylinder
                        if ((xts.EngineData.MainBearings != null) &&
                            (xts.EngineData.MainBearings.Count > b))
                        {
                            MainBearing.EngineBlockPosition pos = MainBearing.EngineBlockPosition.Mid;
                            if (tcAdded)
                            {
                                pos = MainBearing.EngineBlockPosition.LeftTimingChain;
                            }
                            else if (b == 0)
                            {
                                pos = MainBearing.EngineBlockPosition.Left;
                            }

                            this.MainbearingControls.Add(CreateBearing(xts.EngineData.MainBearings[b++], pos));
                            if (this.MainbearingControls.Count != 0) { this.StackEngine.Children.Add(this.MainbearingControls[this.MainbearingControls.Count - 1]); }
                        }

                        this.cylinderControls.Add(CreateCylinder(cylinder));

                        if (this.cylinderControls.Count != 0) { this.StackEngine.Children.Add(this.cylinderControls[this.cylinderControls.Count - 1]); }
                        c++;
                    }
                    
                    /*
                    if (xts.EngineData.TimingChain != null)
                    {
                        if (xts.EngineData.TimingChain == c && xts.EngineData.TimingChain < xts.EngineData.Cylinders.Count)
                        {
                            if ((xts.EngineData.MainBearings != null) &&
                                (xts.EngineData.MainBearings.Count > b))
                            {
                                this.StackEngine.Children.Add(CreateBearing(xts.EngineData.MainBearings[b++], MainBearing.EngineBlockPosition.RightTimingChain));
                            }
                            this.StackEngine.Children.Add(this.CreateTimingChain());
                        }
                    }
                     * */
                    if ((xts.EngineData.MainBearings != null) &&
                        (xts.EngineData.MainBearings.Count > b))
                    {
                        this.MainbearingControls.Add(CreateBearing(xts.EngineData.MainBearings[b], MainBearing.EngineBlockPosition.Right));
                        if (this.MainbearingControls.Count != 0) { this.StackEngine.Children.Add(this.MainbearingControls[this.MainbearingControls.Count - 1]); }                        
                    }

                    if (!xts.EngineData.SPU2Fitted)
                    {
                        this.GridSPU2.Visibility = Visibility.Collapsed;
                        this.PathSPU2.Visibility = Visibility.Collapsed;
                    }
                    else
                    {
                        this.GridSPU2.Visibility = Visibility.Visible;
                        this.PathSPU2.Visibility = Visibility.Visible;
                    }

                    if (xts.EngineData.WIO != null)
                    {
                        this.wio.Visibility = Visibility.Visible;
                    }
                    else
                    {
                        this.wio.Visibility = Visibility.Collapsed;
                    }
                    this.pathWIO1.Visibility = this.wio.Visibility;
                    this.pathWIO2.Visibility = this.wio.Visibility;

                    if (xts.EngineData.SEDM != null)
                    {
                        this.sedm.Visibility = Visibility.Visible;
                    }
                    else
                    {
                        this.sedm.Visibility = Visibility.Collapsed;
                    }
                    this.pathSEDM1.Visibility = this.sedm.Visibility;
                    this.pathSEDM2.Visibility = this.sedm.Visibility;

                    if (xts.EngineData.TemperatureSensors != 0)
                    {
                        this.GridPLC.Visibility = Visibility.Visible;
                    }
                    else
                    {
                        this.GridPLC.Visibility = Visibility.Collapsed;
                    }
                    this.pathPLC.Visibility = this.GridPLC.Visibility;                    

                    haveData = true;
                }
            }

            if (haveData)
            {
                this.GridEngine.Visibility = Visibility.Visible;
                this.GridWaiting.Visibility = Visibility.Collapsed;
            }
            else
            {
                this.GridEngine.Visibility = Visibility.Collapsed;
                this.GridWaiting.Visibility = Visibility.Visible;
            }
        }

        /// <summary>
        /// Create the cylinder user control to show in the mimic and bind to relevant data
        /// </summary>
        /// <param name="cylinder">Cylinder data to bind to</param>
        /// <returns>UserControl for displaying the cylinder</returns>
        private Cylinder CreateCylinder(XTSCylinder cylinder)
        {
            // Will only ever get called if MainPage is initialised, so no need to check
            IXTSDataProvider xts = ((MainPage)MainPage.GetInstance()).XTSDataSource;

            Cylinder cylinderControl = new Cylinder();

            //this.cylinderControls[0].SetValue(temperature[1]);
            //cylinderControl.setToolTip(("cylinder 1\n" + "Crosshead bearing: " + this.cylinderControls[0].GetTempValue().ToString() + "°C\nCrankpin bearing:" + this.cylinderControls[1].GetTempValue().ToString() + "°C"), true);

            //cylinderControl.setToolTip("123", false);
            Binding e = null;

            e = new Binding();
            e.Source = cylinder.Sensors[0];
            e.Path = new PropertyPath("Status");
            e.Mode = BindingMode.OneWay;
            cylinderControl.SetBinding(Cylinder.Sensor0StatusProperty, e);

            e = new Binding();
            e.Source = cylinder.Sensors[1];
            e.Path = new PropertyPath("Status");
            e.Mode = BindingMode.OneWay;
            cylinderControl.SetBinding(Cylinder.Sensor1StatusProperty, e);

            e = new Binding();
            e.Source = cylinder;
            e.Path = new PropertyPath("Status");
            e.Mode = BindingMode.OneWay;
            cylinderControl.SetBinding(Cylinder.CylinderStatusProperty, e);

            e = new Binding();
            e.Source = cylinder;
            e.Path = new PropertyPath("CrankPin");
            e.Mode = BindingMode.OneWay;
            cylinderControl.SetBinding(Cylinder.BearingStatusProperty, e);

            e = new Binding();
            e.Source = cylinder;
            e.Path = new PropertyPath("CrossHead");
            e.Mode = BindingMode.OneWay;
            cylinderControl.SetBinding(Cylinder.CrossheadStatusProperty, e);

            cylinderControl.Index = cylinder.Index;

            return (Cylinder)cylinderControl;
        }

        /// <summary>
        /// Create the Main Bearing user control to show in the mimic and bind to relevant data
        /// </summary>
        /// <param name="bearing">Data to bind to</param>
        /// <returns>UserControl to display a main bearing</returns>
        private UserControl CreateBearing(XTSBearing bearing)
        {
            return CreateBearing(bearing, MainBearing.EngineBlockPosition.Mid);
        }
        private MainBearing CreateBearing(XTSBearing bearing, MainBearing.EngineBlockPosition pos)
        {
            MainBearing bearingControl = new MainBearing();
            bearingControl.Index = bearing.Index;
            bearingControl.Position = pos;            

            Binding e = new Binding();
            e.Source = bearing;
            e.Path = new PropertyPath("Status");
            e.Mode = BindingMode.OneWay;
            bearingControl.SetBinding(MainBearing.StatusProperty, e);

            return (MainBearing)bearingControl;
        }
		
        /// <summary>
        /// Create the Timing Chain user control to show in the mimic and bind to relevant data
        /// </summary>
        /// <returns>UserControl to display a timing chain</returns>
		private UserControl CreateTimingChain()
        {
            TimingChain tcControl = new TimingChain();
            return (UserControl)tcControl;
        }

        private List<Cylinder> boundCylinders = new List<Cylinder>();
        private List<MainBearing> boundBearings = new List<MainBearing>();
        private void ClearBindings()
        {
            foreach (Cylinder cylinder in this.boundCylinders)
            {
                cylinder.ClearValue(Cylinder.Sensor0StatusProperty);
                cylinder.ClearValue(Cylinder.Sensor1StatusProperty);
                cylinder.ClearValue(Cylinder.CylinderStatusProperty);
                cylinder.ClearValue(Cylinder.BearingStatusProperty);
                cylinder.ClearValue(Cylinder.CrossheadStatusProperty);
            }
            foreach (MainBearing mainBearing in this.boundBearings)
            {
                mainBearing.ClearValue(MainBearing.StatusProperty);
            }
            this.boundBearings.Clear();
            this.boundCylinders.Clear();

        }

#if NOT_DEFINED
        /// <summary>
        /// When screen size changes, callback to modify popup size
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
		private void UpdatePopups(object sender, System.Windows.SizeChangedEventArgs e)
		{ }
#endif
        /// <summary>
        /// Callback for when user presses the SPU#1 control
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonSPU_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            XTS.ChildWindows.SPUCommsWindow scw = new ChildWindows.SPUCommsWindow();
            scw.Show();
        }

        /// <summary>
        /// Callback for loaded handler of screen.  Initialise callbacks for manual update of bound data and refresh
        /// screen controls.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Mimic_Loaded(object sender, RoutedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                UpdateCPUComms(mp.XTSDataSource.Diagnostics);

                mp.XTSDataSource.EngineData.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(EngineData_PropertyChanged);
                mp.XTSDataSource.Diagnostics.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(Diagnostics_PropertyChanged);
                if (mp.XTSDataSource.EngineData.WIO != null)
                {
                    mp.XTSDataSource.EngineData.WIO.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(EngineDataWIO_PropertyChanged);
                }
                if (mp.XTSDataSource.EngineData.SEDM != null)
                {
                    mp.XTSDataSource.EngineData.SEDM.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(EngineDataSEDM_PropertyChanged);
                }
            }
            BindData();
            CheckComms();
        }

        /// <summary>
        /// Unloaded handler, clean up callbacks etc.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Mimic_Unloaded(object sender, RoutedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            lock (this.cpuCommsLock)
            {
                if (this.cpuCommsHighlightTimer != null)
                {
                    this.cpuCommsHighlightTimer.Stop();
                }
            }
            if (mp != null)
            {
                if (mp.XTSDataSource.EngineData.SEDM != null)
                {
                    mp.XTSDataSource.EngineData.SEDM.PropertyChanged -= EngineDataSEDM_PropertyChanged;
                }
                if (mp.XTSDataSource.EngineData.WIO != null)
                {
                    mp.XTSDataSource.EngineData.WIO.PropertyChanged -= EngineDataWIO_PropertyChanged;
                }
                mp.XTSDataSource.Diagnostics.PropertyChanged -= Diagnostics_PropertyChanged;
                mp.XTSDataSource.EngineData.PropertyChanged -= EngineData_PropertyChanged;
                mp.XTSDataSource.Diagnostics.PropertyChanged -= Diagnostics_PropertyChanged;
            }
            ClearBindings();
        }

        /// <summary>
        /// Update display of CPU Comms state
        /// </summary>
        /// <param name="diag"></param>
        private void UpdateCPUComms(XTSDiagnostics diag)
        {
            lock (this.cpuCommsLock)
            {
                XTSStatusConverter ssc = new XTSStatusConverter();
                if (this.cpuCommsHighlightTimer == null)
                {
                    this.cpuCommsHighlightTimer = new System.Windows.Threading.DispatcherTimer();
                    this.cpuCommsHighlightTimer.Tick += new System.EventHandler(cpuCommsHighlightTimer_Tick);
                    this.cpuCommsHighlightTimer.Interval = System.TimeSpan.FromMilliseconds(500);
                }

                if ((diag.CPUCoreOK.HasValue && !diag.CPUCoreOK.Value) ||
                    !diag.CPUCommsNetwork)
                {
                    // Start in "on" state
                    this.cpuCommsHighlight = true;

                    // And trigger CPUCommsSwitch every half second
                    this.cpuCommsHighlightTimer.Start();
                }
                else
                {
                    // Kill CPUCommsSwitch trigger
                    this.cpuCommsHighlightTimer.Stop();
                }

                // Switch colour before activating timer to blink colour
                this.RectCPUComms.Fill = (SolidColorBrush)ssc.Convert((object)diag.CPUCoreOK, typeof(Brush), null, null);
            }
        }

        /// <summary>
        /// Whether we are currently showing a bright CPU Comms state indicator, or dim
        /// </summary>
        private bool cpuCommsHighlight = true;
        /// <summary>
        /// Lock for keeping cpu comms state aligned
        /// </summary>
        private object cpuCommsLock = new object();
        /// <summary>
        /// Timer for flashing the CPU Comms state when in error
        /// </summary>
        private System.Windows.Threading.DispatcherTimer cpuCommsHighlightTimer = null;

        /// <summary>
        /// Only called when we are in an error state for CPU Comms
        /// </summary>
        private void cpuCommsHighlightTimer_Tick(object sender, System.EventArgs e)
        {
            lock (this.cpuCommsLock)
            {
                XTSStatusConverter ssc = new XTSStatusConverter();
                Color color = (Color)ssc.Convert((object)false, typeof(Color), null, null);
                if (this.cpuCommsHighlight)
                {
                    // Dim color for "off" state.
                    color.R = (byte) (color.R * 0.3);
                    color.G = (byte) (color.G * 0.3);
                    color.B = (byte) (color.B * 0.3);
                }
                this.RectCPUComms.Fill = new SolidColorBrush(color);

                this.cpuCommsHighlight = !this.cpuCommsHighlight;
            }
        }        

        private void UpdateTempDisplay()
        {
            MainPage mp = MainPage.GetInstance() as MainPage;
            if (mp != null)
            {
                //if no temperature support
                if (mp.XTSDataSource.EngineData.TemperatureSensors == 0)
                {
                    for (int cylinder = 0; cylinder < this.cylinderControls.Count; cylinder++)
                    {
                        this.cylinderControls[cylinder].setToolTip("NA", false);
                    }

                    for (int mainbearing = 0; mainbearing < this.MainbearingControls.Count; mainbearing++)
                    {
                        this.MainbearingControls[mainbearing].setToolTip("NA", false);
                    }
                }
                    //if temperature sensor is intalled
                else
                {
                    if (mp.XTSDataSource.EngineData.Bearingtemperature != null)
                    {
                        int totalMainbearingSensor = mp.XTSDataSource.EngineData.SensorPerMainBearing * this.MainbearingControls.Count;
                        int totalCrossheadbearingSensor = mp.XTSDataSource.EngineData.SensorPerCrossheadBearing * this.cylinderControls.Count;
                        int totalCrankpinbearingSensor = mp.XTSDataSource.EngineData.SensorPerCrankpinBearing * this.cylinderControls.Count;

                        int sensor = 0;
                        string mainBearingPop = "NA";                        
                        string cylinderPop = "NA";
                        string thrustPop = "NA";

                        for(int element = 0; element < mainBearingTemperature.Length; element++) mainBearingTemperature[element] = 0;
                        for(int element = 0; element < crossheadBearingTemperature.Length; element++) crossheadBearingTemperature[element] = 0;
                        for(int element = 0; element < crankpinBearingTemperature.Length; element++) crankpinBearingTemperature[element] = 0;
                        for(int element = 0; element < thrustBearingTemperature.Length; element++) thrustBearingTemperature[element] = 0;
                        for(int element = 0; element < mainBearingTemperatureAlarm.Length; element++) mainBearingTemperatureAlarm[element] = false;
                        for(int element = 0; element < crossheadBearingTemperatureAlarm.Length; element++) crossheadBearingTemperatureAlarm[element] = false;
                        for(int element = 0; element < crankpinBearingTemperatureAlarm.Length; element++) crankpinBearingTemperatureAlarm[element] = false;
                        for(int element = 0; element < this.thrustBearingTemperatureAlarm.Length; element++) thrustBearingTemperatureAlarm[element] = false;
                        for (int element = 0; element < this.mainBearingSensorName.Length; element++) mainBearingSensorName[element] = null;
                        for (int element = 0; element < this.crossheadBearingSensorName.Length; element++) crossheadBearingSensorName[element] = null;
                        for (int element = 0; element < this.crankpinBearingSensorName.Length; element++) crankpinBearingSensorName[element] = null;
                        for (int element = 0; element < this.thrustBearingSensorName.Length; element++) thrustBearingSensorName[element] = null;

                        foreach (XTSBearTemperature tempsensor in mp.XTSDataSource.EngineData.Bearingtemperature)
                        {                            
                            if (mp.XTSDataSource.EngineData.SensorPerMainBearing != 0)
                            {
                                if (sensor < totalMainbearingSensor)
                                {
                                    mainBearingSensorName[sensor] = tempsensor.Channelname;
                                    mainBearingTemperature[sensor] = tempsensor.Temperature;
                                    if (tempsensor.DisplayStatus != XTSSensorStatus.Disabled)
                                    {
                                        if (tempsensor.DisplayStatus != XTSSensorStatus.Normal)
                                        {
                                            mainBearingTemperatureAlarm[sensor] = true;
                                        }
                                        else
                                        {
                                            mainBearingTemperatureAlarm[sensor] = false;
                                        }
                                    }
                                    else
                                    {
                                        mainBearingTemperatureAlarm[sensor] = false;
                                    }
                                }
                            }

                            if (mp.XTSDataSource.EngineData.SensorPerCrankpinBearing != 0)
                            {
                                if (sensor >= totalMainbearingSensor && sensor < (totalMainbearingSensor + totalCrankpinbearingSensor))
                                {
                                    crankpinBearingSensorName[sensor - totalMainbearingSensor] = tempsensor.Channelname;
                                    crankpinBearingTemperature[sensor - totalMainbearingSensor] = tempsensor.Temperature;
                                    if (tempsensor.DisplayStatus != XTSSensorStatus.Disabled)
                                    {
                                        if (tempsensor.DisplayStatus != XTSSensorStatus.Normal)
                                        {
                                            crankpinBearingTemperatureAlarm[sensor - totalMainbearingSensor] = true;
                                        }
                                        else
                                        {
                                            crankpinBearingTemperatureAlarm[sensor - totalMainbearingSensor] = false;
                                        }
                                    }
                                    else
                                    {
                                        crankpinBearingTemperatureAlarm[sensor - totalMainbearingSensor] = false;
                                    }
                                }
                            }

                            if (mp.XTSDataSource.EngineData.SensorPerCrossheadBearing != 0)
                            {
                                if (sensor >= (totalMainbearingSensor + totalCrankpinbearingSensor) && sensor < (totalMainbearingSensor + totalCrankpinbearingSensor + totalCrossheadbearingSensor))
                                {
                                    crossheadBearingSensorName[sensor - totalMainbearingSensor - totalCrankpinbearingSensor] = tempsensor.Channelname;
                                    crossheadBearingTemperature[sensor - totalMainbearingSensor - totalCrankpinbearingSensor] = tempsensor.Temperature;
                                    if (tempsensor.DisplayStatus != XTSSensorStatus.Disabled)
                                    {
                                        if (tempsensor.DisplayStatus != XTSSensorStatus.Normal)
                                        {
                                            crossheadBearingTemperatureAlarm[sensor - totalMainbearingSensor - totalCrankpinbearingSensor] = true;
                                        }
                                        else
                                        {
                                            crossheadBearingTemperatureAlarm[sensor - totalMainbearingSensor - totalCrankpinbearingSensor] = false;
                                        }
                                    }
                                    else
                                    {
                                        crossheadBearingTemperatureAlarm[sensor - totalMainbearingSensor - totalCrankpinbearingSensor] = false;
                                    }
                                }
                            }

                            if (mp.XTSDataSource.EngineData.SensorPerThrustRadialBearing != 0)
                            {
                                if (sensor >= (totalMainbearingSensor + totalCrankpinbearingSensor + totalCrossheadbearingSensor) && sensor < (totalMainbearingSensor + totalCrankpinbearingSensor + totalCrossheadbearingSensor + 2))
                                {
                                    thrustBearingSensorName[sensor - totalMainbearingSensor - totalCrankpinbearingSensor - totalCrossheadbearingSensor] = tempsensor.Channelname;
                                    thrustBearingTemperature[sensor - totalMainbearingSensor - totalCrankpinbearingSensor - totalCrossheadbearingSensor] = tempsensor.Temperature;
                                    if (tempsensor.DisplayStatus != XTSSensorStatus.Disabled)
                                    {
                                        if (tempsensor.DisplayStatus != XTSSensorStatus.Normal)
                                        {
                                            thrustBearingTemperatureAlarm[sensor - totalMainbearingSensor - totalCrankpinbearingSensor - totalCrossheadbearingSensor] = true;
                                        }
                                        else
                                        {
                                            thrustBearingTemperatureAlarm[sensor - totalMainbearingSensor - totalCrankpinbearingSensor - totalCrossheadbearingSensor] = false;
                                        }
                                    }
                                    else
                                    {
                                        thrustBearingTemperatureAlarm[sensor - totalMainbearingSensor - totalCrankpinbearingSensor - totalCrossheadbearingSensor] = false;
                                    }                                    
                                }
                            }
                            sensor++;
                        }
                        
                        if(this.MainbearingControls != null)
                        {
                            if (mp.XTSDataSource.EngineData.SensorPerMainBearing == 1)
                            {                                
                                for(int mainbearing = 0; mainbearing < this.MainbearingControls.Count; mainbearing++)
                                {
                                    if(mainBearingTemperatureAlarm[mainbearing] == true)
                                    {
                                        mainBearingPop = ("Main bearing " + (mainbearing + 1).ToString() + ":\nSensor 1 (" + mainBearingSensorName[mainbearing] + "): " + mainBearingTemperature[mainbearing].ToString() + "°C");
                                        this.MainbearingControls[mainbearing].setToolTip(mainBearingPop, true);
                                    }
                                    else
                                    {
                                        this.MainbearingControls[mainbearing].setToolTip(mainBearingPop, false);
                                    }
                                }                                
                            }
                            else if (mp.XTSDataSource.EngineData.SensorPerMainBearing == 2)
                            {                                
                                for(int mainbearing = 0; mainbearing < this.MainbearingControls.Count; mainbearing++)
                                {
                                    if(mainBearingTemperatureAlarm[2 * mainbearing] == true || mainBearingTemperatureAlarm[mainbearing * 2 + 1] == true)
                                    {
                                        mainBearingPop = ("Main bearing" + (mainbearing + 1).ToString() + ":\nSensor 1 (" + mainBearingSensorName[2 * mainbearing] + "): " + mainBearingTemperature[2 * mainbearing].ToString() + "°C");
                                        mainBearingPop += "\nSensor 2 (" + mainBearingSensorName[2 * mainbearing + 1] + "): " + mainBearingTemperature[2 * mainbearing + 1].ToString() + "°C";
                                        this.MainbearingControls[mainbearing].setToolTip(mainBearingPop, true);
                                    }
                                    else
                                    {
                                        this.MainbearingControls[mainbearing].setToolTip(mainBearingPop, false);
                                    }
                                }
                            }
                            else
                            {
                                for (int mainbearing = 0; mainbearing < this.MainbearingControls.Count; mainbearing++)
                                {
                                    this.MainbearingControls[mainbearing].setToolTip(mainBearingPop, false);
                                }
                            }
                        }
                        
                        if(this.cylinderControls != null)
                        {
                            if (mp.XTSDataSource.EngineData.SensorPerCrankpinBearing == 1)
                            {
                                if (mp.XTSDataSource.EngineData.SensorPerCrossheadBearing == 1)
                                {
                                    for(int cylinder = 0; cylinder < this.cylinderControls.Count; cylinder++)
                                    {
                                        if(crankpinBearingTemperatureAlarm[cylinder] == true)
                                        {
                                            if (crossheadBearingTemperatureAlarm[cylinder] == true)
                                            {
                                                cylinderPop = ("Cylinder " + (cylinder + 1).ToString() + ":\nCrankpin (" + crankpinBearingSensorName[cylinder] + "): " + crankpinBearingTemperature[cylinder].ToString() + "°C");
                                                cylinderPop += ("\nCrosshead (" + crossheadBearingSensorName[cylinder] + "): " + crossheadBearingTemperature[cylinder].ToString() + "°C");
                                                this.cylinderControls[cylinder].setToolTip(cylinderPop, true);
                                            }
                                            else
                                            {
                                                cylinderPop = ("Cylinder " + (cylinder + 1).ToString() + ":\nCrankpin (" + crankpinBearingSensorName[cylinder] + "): " + crankpinBearingTemperature[cylinder].ToString() + "°C");                                               
                                                this.cylinderControls[cylinder].setToolTip(cylinderPop, true);
                                            }
                                        }
                                        else
                                        {
                                            if (crossheadBearingTemperatureAlarm[cylinder] == true)
                                            {
                                                cylinderPop = ("Cylinder " + (cylinder + 1).ToString() + ":");
                                                cylinderPop += ("\nCrosshead (" + crossheadBearingSensorName[cylinder] + "): " + crossheadBearingTemperature[cylinder].ToString() + "°C");
                                                this.cylinderControls[cylinder].setToolTip(cylinderPop, true);
                                            }
                                            else
                                            {
                                                this.cylinderControls[cylinder].setToolTip(cylinderPop, false);
                                            }                                            
                                        }
                                    } 
                                }
                                else if( mp.XTSDataSource.EngineData.SensorPerCrossheadBearing == 2)
                                {
                                    for(int cylinder = 0; cylinder < this.cylinderControls.Count; cylinder++)
                                    {
                                        if (crankpinBearingTemperatureAlarm[cylinder] == true)
                                        {
                                            if (crossheadBearingTemperatureAlarm[2 * cylinder] == true || crossheadBearingTemperatureAlarm[2 * cylinder + 1] == true)
                                            {
                                                cylinderPop = ("Cylinder " + (cylinder + 1).ToString() + ":\nCrankpin (" + crankpinBearingSensorName[cylinder] + "): " + crankpinBearingTemperature[cylinder].ToString() + "°C");
                                                cylinderPop += ("\nCrosshead 1 (" + crossheadBearingSensorName[2 * cylinder] + "): " + crossheadBearingTemperature[2 * cylinder].ToString() + "°C");
                                                cylinderPop += ("\nCrosshead 2 (" + crossheadBearingSensorName[2 * cylinder + 1] + "): " + crossheadBearingTemperature[2 * cylinder + 1].ToString() + "°C");
                                                this.cylinderControls[cylinder].setToolTip(cylinderPop, true);
                                            }
                                            else
                                            {
                                                cylinderPop = ("Cylinder " + (cylinder + 1).ToString() + ":\nCrankpin sensor: " + crankpinBearingSensorName[cylinder] + "): " + crankpinBearingTemperature[cylinder].ToString() + "°C");
                                                this.cylinderControls[cylinder].setToolTip(cylinderPop, true);                                                
                                            }
                                        }
                                        else
                                        {
                                            if (crossheadBearingTemperatureAlarm[2 * cylinder] == true || crossheadBearingTemperatureAlarm[2 * cylinder + 1] == true)
                                            {
                                                cylinderPop = ("Cylinder " + (cylinder + 1).ToString() + ":");
                                                cylinderPop += ("\nCrosshead sensor 1 (" + crossheadBearingSensorName[2 * cylinder] + "): "+ crossheadBearingTemperature[2 * cylinder].ToString() + "°C");
                                                cylinderPop += ("\nCrosshead sensor 2 (" + crossheadBearingSensorName[2 * cylinder + 1] + "): " + crossheadBearingTemperature[2 * cylinder + 1].ToString() + "°C");
                                                this.cylinderControls[cylinder].setToolTip(cylinderPop, true);
                                            }
                                            else
                                            {                                                
                                                this.cylinderControls[cylinder].setToolTip(cylinderPop, false);
                                            }
                                        }
                                    } 
                                }
                                else if (mp.XTSDataSource.EngineData.SensorPerCrossheadBearing == 0)
                                {
                                    for (int cylinder = 0; cylinder < this.cylinderControls.Count; cylinder++)
                                    {
                                        if (crankpinBearingTemperatureAlarm[cylinder] == true)
                                        {
                                            cylinderPop = ("Cylinder " + (cylinder + 1).ToString() + ":\nCrankpin sensor (" + crankpinBearingSensorName[cylinder] + "): " + crankpinBearingTemperature[cylinder].ToString() + "°C");                                            
                                            this.cylinderControls[cylinder].setToolTip(cylinderPop, true);
                                        }
                                        else
                                        {
                                            this.cylinderControls[cylinder].setToolTip(cylinderPop, false);
                                        }
                                    }
                                }
                            }
                            else if (mp.XTSDataSource.EngineData.SensorPerCrankpinBearing == 2)
                            {                                
                                if (mp.XTSDataSource.EngineData.SensorPerCrossheadBearing == 1)
                                {
                                    for(int cylinder = 0; cylinder < this.cylinderControls.Count; cylinder++)
                                    {
                                        if (crankpinBearingTemperatureAlarm[2 * cylinder] == true || crankpinBearingTemperatureAlarm[2 * cylinder + 1] == true)
                                        {
                                            if (crossheadBearingTemperatureAlarm[cylinder] == true)
                                            {
                                                cylinderPop = ("Cylinder " + (cylinder + 1).ToString() + ":\nCrankpin sensor 1 (" + crankpinBearingSensorName[2 * cylinder] + "): " + crankpinBearingTemperature[2 * cylinder].ToString() + "°C");
                                                cylinderPop += ("\nCrankpin sensor 2 (" + crankpinBearingSensorName[2 * cylinder + 1] + "): " + crankpinBearingTemperature[2 * cylinder + 1].ToString() + "°C");
                                                cylinderPop += ("\nCrosshead sensor (" + crossheadBearingSensorName[cylinder] + "): " + crossheadBearingTemperature[cylinder].ToString() + "°C");
                                                this.cylinderControls[cylinder].setToolTip(cylinderPop, true);
                                            }
                                            else
                                            {
                                                cylinderPop = ("Cylinder " + (cylinder + 1).ToString() + ":\nCrankpin sensor 1 (" + crankpinBearingSensorName[2 * cylinder] +"): " + crankpinBearingTemperature[2 * cylinder].ToString() + "°C");
                                                cylinderPop += ("\nCrankpin sensor 2 (" + crankpinBearingSensorName[2 * cylinder + 1] + "): " + crankpinBearingTemperature[2 * cylinder + 1].ToString() + "°C");                                                
                                                this.cylinderControls[cylinder].setToolTip(cylinderPop, true);                                                
                                            }
                                        }
                                        else
                                        {
                                            if (crossheadBearingTemperatureAlarm[cylinder] == true)
                                            {
                                                cylinderPop = ("Cylinder " + (cylinder + 1).ToString() + ":");                                                
                                                cylinderPop += ("\nCrosshead sensor (" + crossheadBearingSensorName[cylinder] + "): " + crossheadBearingTemperature[cylinder].ToString() + "°C");
                                                this.cylinderControls[cylinder].setToolTip(cylinderPop, true);
                                            }
                                            else
                                            {                                                
                                                this.cylinderControls[cylinder].setToolTip(cylinderPop, false);
                                            }
                                        }
                                    } 
                                }
                                else if( mp.XTSDataSource.EngineData.SensorPerCrossheadBearing == 2)
                                {
                                    for(int cylinder = 0; cylinder < this.cylinderControls.Count; cylinder++)
                                    {
                                        if (crankpinBearingTemperatureAlarm[2 * cylinder] == true || crankpinBearingTemperatureAlarm[2 * cylinder + 1] == true)
                                        {
                                            if (crossheadBearingTemperatureAlarm[2 * cylinder] == true || crossheadBearingTemperatureAlarm[2 * cylinder + 1] == true)
                                            {
                                                cylinderPop = ("Cylinder " + (cylinder + 1).ToString() + ":\nCrankpin sensor 1 (" + crankpinBearingSensorName[2 * cylinder] + "): " + crankpinBearingTemperature[2 * cylinder].ToString() + "°C");
                                                cylinderPop += ("\nCrankpin sensor 2 (" + crankpinBearingSensorName[2 * cylinder + 1] + "): " + crankpinBearingTemperature[2 * cylinder + 1].ToString() + "°C");
                                                cylinderPop += ("\nCrosshead sensor 1 (" + crossheadBearingSensorName[2 * cylinder] + "): " + crossheadBearingTemperature[2 * cylinder].ToString() + "°C");
                                                cylinderPop += ("\nCrosshead sensor 2 (" + crossheadBearingSensorName[2 * cylinder + 1] + "): " + crossheadBearingTemperature[2 * cylinder + 1].ToString() + "°C");
                                                this.cylinderControls[cylinder].setToolTip(cylinderPop, true);
                                            }
                                            else
                                            {
                                                cylinderPop = ("Cylinder " + (cylinder + 1).ToString() + ":\nCrankpin sensor 1 (" + crankpinBearingSensorName[2 * cylinder] + "): " + crankpinBearingTemperature[2 * cylinder].ToString() + "°C");
                                                cylinderPop += ("\nCrankpin sensor 2 (" + crankpinBearingSensorName[2 * cylinder + 1] + "): " + crankpinBearingTemperature[2 * cylinder + 1].ToString() + "°C");                                                
                                                this.cylinderControls[cylinder].setToolTip(cylinderPop, true);                                                
                                            }
                                        }
                                        else
                                        {
                                            if (crossheadBearingTemperatureAlarm[2 * cylinder] == true || crossheadBearingTemperatureAlarm[2 * cylinder + 1] == true)
                                            {
                                                cylinderPop = ("Cylinder " + (cylinder + 1).ToString() + ":");
                                                cylinderPop += ("\nCrosshead sensor 1 (" + crossheadBearingSensorName[2 * cylinder] + "): " + crossheadBearingTemperature[2 * cylinder].ToString() + "°C");
                                                cylinderPop += ("\nCrosshead sensor 2 (" + crossheadBearingSensorName[2 * cylinder + 1] + "): "+ crossheadBearingTemperature[2 * cylinder + 1].ToString() + "°C");
                                                this.cylinderControls[cylinder].setToolTip(cylinderPop, true);
                                            }
                                            else
                                            {                                                
                                                this.cylinderControls[cylinder].setToolTip(cylinderPop, false);
                                            }
                                        }
                                    } 
                                }
                                else if (mp.XTSDataSource.EngineData.SensorPerCrossheadBearing == 0)
                                {
                                    for (int cylinder = 0; cylinder < this.cylinderControls.Count; cylinder++)
                                    {
                                        if (crankpinBearingTemperatureAlarm[2 * cylinder] == true || crankpinBearingTemperatureAlarm[2 * cylinder + 1] == true)
                                        {
                                            cylinderPop = ("Cylinder " + (cylinder + 1).ToString() + ":\nCrankpin sensor 1 (" + crankpinBearingSensorName[2 * cylinder] + "): " + crankpinBearingTemperature[2 * cylinder].ToString() + "°C");
                                            cylinderPop += ("\nCrankpin sensor 2 (" + crankpinBearingSensorName[2 * cylinder + 1] + "): " + crankpinBearingTemperature[2 * cylinder + 1].ToString() + "°C");                                            
                                            this.cylinderControls[cylinder].setToolTip(cylinderPop, true);
                                        }
                                        else
                                        {
                                            this.cylinderControls[cylinder].setToolTip(cylinderPop, false);
                                        }
                                    }
                                }
                            }
                            else if (mp.XTSDataSource.EngineData.SensorPerCrankpinBearing == 0)
                            {
                                if (mp.XTSDataSource.EngineData.SensorPerCrossheadBearing == 1)
                                {
                                    for (int cylinder = 0; cylinder < this.cylinderControls.Count; cylinder++)
                                    {
                                        if (crossheadBearingTemperatureAlarm[cylinder] == true)
                                        {
                                            cylinderPop = ("Cylinder " + (cylinder + 1).ToString() + ":");
                                            cylinderPop += ("\nCrosshead sensor (" + crossheadBearingSensorName[cylinder] + "): " + crossheadBearingTemperature[cylinder].ToString() + "°C");
                                            this.cylinderControls[cylinder].setToolTip(cylinderPop, true);
                                        }
                                        else
                                        {
                                            this.cylinderControls[cylinder].setToolTip(cylinderPop, false);
                                        }
                                    }
                                }
                                else if (mp.XTSDataSource.EngineData.SensorPerCrossheadBearing == 2)
                                {
                                    for (int cylinder = 0; cylinder < this.cylinderControls.Count; cylinder++)
                                    {
                                        if (crossheadBearingTemperatureAlarm[2 * cylinder] == true || crossheadBearingTemperatureAlarm[2 * cylinder + 1] == true)
                                        {
                                            cylinderPop = ("Cylinder " + (cylinder + 1).ToString() + ":");
                                            cylinderPop += ("\nCrosshead sensor 1 (" + crossheadBearingSensorName[2 * cylinder] + "): " + crossheadBearingTemperature[2 * cylinder].ToString() + "°C");
                                            cylinderPop += ("\nCrosshead sensor 2 (" + crossheadBearingSensorName[2 * cylinder + 1] + "): " + crossheadBearingTemperature[2 * cylinder + 1].ToString() + "°C");
                                            this.cylinderControls[cylinder].setToolTip(cylinderPop, true);
                                        }
                                        else
                                        {
                                            this.cylinderControls[cylinder].setToolTip(cylinderPop, false);
                                        }
                                    }
                                }
                                else if (mp.XTSDataSource.EngineData.SensorPerCrossheadBearing == 0)
                                {
                                    for (int cylinder = 0; cylinder < this.cylinderControls.Count; cylinder++)
                                    {                                        
                                        this.cylinderControls[cylinder].setToolTip(cylinderPop, false);
                                    }
                                }
                            }
                        }

                        //
                        if (thrustBearingTemperatureAlarm[0] == true || thrustBearingTemperatureAlarm[1] == true)
                        {
                            if(mp.XTSDataSource.EngineData.SensorPerThrustRadialBearing == 1)
                            {
                                thrustPop = ("Thrust bearing sensor: " + thrustBearingTemperature[0].ToString() + "°C");
                            }
                            else if (mp.XTSDataSource.EngineData.SensorPerThrustRadialBearing == 2)
                            {
                                thrustPop = ("Thrust bearing sensor 1 (" + thrustBearingSensorName[0] + "): " + thrustBearingTemperature[0].ToString() + "°C");
                                thrustPop += ("Thrust bearing sensor 2 (" + thrustBearingSensorName[1] + "): " + thrustBearingTemperature[1].ToString() + "°C");
                            }
                        }
                    }
                    else
                    {
                        for (int cylinder = 0; cylinder < this.cylinderControls.Count; cylinder++)
                        {
                            this.cylinderControls[cylinder].setToolTip("NA", false);
                        }

                        for (int mainbearing = 0; mainbearing < this.MainbearingControls.Count; mainbearing++)
                        {
                            this.MainbearingControls[mainbearing].setToolTip("NA", false);
                        }
                    }
                    /*
                    if (mp.XTSDataSource.EngineData.Bearingtemperature[0].DisplayStatus != XTSSensorStatus.Normal && mp.XTSDataSource.EngineData.Bearingtemperature[0].DisplayStatus != XTSSensorStatus.Disabled)
                    {
                        this.cylinderControls[0].SetValue(temperature[1]);
                        this.cylinderControls[0].setToolTip(("Cylinder 1:\n" + "Crosshead bearing: " + this.cylinderControls[0].GetTempValue().ToString() + "°C\nCrankpin bearing:" + this.cylinderControls[0].GetTempValue().ToString() + "°C"), true);

                        this.MainbearingControls[0].SetValue(temperature[1]);
                        this.MainbearingControls[0].setToolTip(("Main bearing 1: " + this.MainbearingControls[0].GetTempValue().ToString() + "°C"), true);
                    }
                    else
                    {
                        this.cylinderControls[0].setToolTip("", false);
                        this.MainbearingControls[0].setToolTip("", false);
                    }
                    this.cylinderControls[1].SetValue(temperature[1]);
                    this.cylinderControls[1].setToolTip(("Cylinder 1:\n" + "Crosshead bearing: " + this.cylinderControls[1].GetTempValue().ToString() + "°C\nCrankpin bearing:" + this.cylinderControls[1].GetTempValue().ToString() + "°C"), true);

                    this.MainbearingControls[1].SetValue(temperature[1]);
                    this.MainbearingControls[1].setToolTip(("Main bearing 1: " + this.MainbearingControls[1].GetTempValue().ToString() + "°C"), true);
                     * */
                }                
            }
        }
	}
}