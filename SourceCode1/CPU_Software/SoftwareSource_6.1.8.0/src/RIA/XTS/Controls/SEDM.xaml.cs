/* 
 * SEDM.xaml.cs
 * 
 * Control within the engine mimic for displaying the SEDM voltmeter reading.
 * C# partial implementation of SEDM.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 09/02/2012
 */

using System.Windows.Controls;

namespace XTS.Controls
{
    /// <summary>
    /// SEDM display for engine mimic.
    /// </summary>
	public partial class SEDM : UserControl
	{
        /// <summary>
        /// Default constructor
        /// </summary>
		public SEDM()
		{
			// Required to initialize variables
			InitializeComponent();
		}

		private void buttonSEDM_Click(object sender, System.Windows.RoutedEventArgs e)
		{
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                int count = (int)Mimic.Instance.StackEngine.Children.Count;
                //Last cylinder, count-1 is for last main bearing
                Cylinder cd = (Cylinder)Mimic.Instance.StackEngine.Children[count - 2];
                //2 is for SEDM
                Mimic.Instance.ShowCylinderPopup(cd, 2);
            }            
		}
	}
}