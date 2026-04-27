/* 
 * FiringOrder.xaml.cs
 * 
 * UserControl for displaying the firing order of the cylinders (1-7 of SPU1)
 * C# partial implementation of FiringOrder.xaml silverlight user control screen.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 02/04/2012
 */

using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;

namespace XTS.Controls
{
    public partial class FiringOrder : UserControl
    {
        /// <summary>
        /// Default constructor
        /// </summary>
        public FiringOrder()
		{
			// Required to initialize variables
			InitializeComponent();
		}

        /// <summary>
        /// Callback for when the learning state has changed
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void Learning_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName.Equals("CurrentState"))
            {
                UpdateLabels();
            }
        }

        /// <summary>
        /// Callback for when engine data has been updated
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void EngineData_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName.Equals("CylinderFiringOrder"))
            {
                UpdateLabels();
            }
        }

        private string FiringOrderValueToString(int value)
        {
            if (value >= (32767 / 2))
                return "-";
            return value.ToString();
        }

        /// <summary>
        /// Update the labels with the current firing order
        /// </summary>
        /// <param name="engine">Engine data that holds the firing order</param>
        public void UpdateLabels()
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                XTSLearning learn = mp.XTSDataSource.Learning;
                XTSEngine engine = mp.XTSDataSource.EngineData;
                if ((learn.CurrentState != XTSLearning.LearningState.CylinderFiringOrder) &&
                    (learn.CurrentState != XTSLearning.LearningState.Unknown))
                {
                    this.labelCylinder1.Content = FiringOrderValueToString(engine.CylinderFiringOrder[0]);
                    this.labelCylinder2.Content = FiringOrderValueToString(engine.CylinderFiringOrder[1]);
                    this.labelCylinder3.Content = FiringOrderValueToString(engine.CylinderFiringOrder[2]);
                    this.labelCylinder4.Content = FiringOrderValueToString(engine.CylinderFiringOrder[3]);
                    this.labelCylinder5.Content = FiringOrderValueToString(engine.CylinderFiringOrder[4]);
                    this.labelCylinder6.Content = FiringOrderValueToString(engine.CylinderFiringOrder[5]);
                    this.labelCylinder7.Content = FiringOrderValueToString(engine.CylinderFiringOrder[6]);
                }
                else
                {
                    this.labelCylinder1.Content = "-";
                    this.labelCylinder2.Content = "-";
                    this.labelCylinder3.Content = "-";
                    this.labelCylinder4.Content = "-";
                    this.labelCylinder5.Content = "-";
                    this.labelCylinder6.Content = "-";
                    this.labelCylinder7.Content = "-";
                }
            }
        }

        private void FiringOrder_Loaded(object sender, RoutedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.XTSDataSource.EngineData.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(EngineData_PropertyChanged);
                mp.XTSDataSource.Learning.PropertyChanged += new System.ComponentModel.PropertyChangedEventHandler(Learning_PropertyChanged);
                UpdateLabels();
            }
        }

        private void FiringOrder_Unloaded(object sender, RoutedEventArgs e)
        {
            MainPage mp = (MainPage)MainPage.GetInstance();
            if (mp != null)
            {
                mp.XTSDataSource.EngineData.PropertyChanged -= EngineData_PropertyChanged;
                mp.XTSDataSource.Learning.PropertyChanged -= Learning_PropertyChanged;
            }
        }
    }
}