/* 
 * TimingChain.xaml.cs
 * 
 * Basic timing chain display for use within the engine mimic.
 * C# partial implementation of TimingChain.xaml silverlight user control.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: AMacleod, 02/02/2012
 */

using System.Windows.Controls;

namespace XTS.Controls
{
    /// <summary>
    /// Timing chain display for engine mimic.
    /// </summary>
	public partial class TimingChain : UserControl
	{
        /// <summary>
        /// Default Constructor
        /// </summary>
		public TimingChain()
		{
			// Required to initialize variables
			InitializeComponent();
		}
	}
}