/* 
 * ContentScroll.xaml.cs
 * 
 * Partial class implementation of a user control for dragging content.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 30/03/2012
 */

using System.Windows;
using System.Windows.Controls;

namespace XTS.Controls
{
    /// <summary>
    /// 
    /// </summary>
	public partial class ContentScroll : UserControl
	{
        /// <summary>
        /// Set when the user is trying to scroll the content
        /// </summary>
        private bool scrolling = false;

        /// <summary>
        /// The point at which scrolling started
        /// </summary>
        private Point previousPoint;

        /// <summary>
        /// Passthrough to the children of the stack panel
        /// </summary>
        public UIElementCollection Children
        {
            get
            {
                return this.stackPanelContent.Children;
            }
        }

        /// <summary>
        /// Default constructor
        /// </summary>
		public ContentScroll()
		{
			// Required to initialize variables
			InitializeComponent();
		}

        /// <summary>
        /// Callback for when user starts dragging
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
		private void stackPanelContent_MouseLeftButtonDown(object sender, System.Windows.Input.MouseButtonEventArgs e)
		{
            this.scrolling = true;
            this.previousPoint = e.GetPosition(this.stackPanelContent);
		}

        /// <summary>
        /// Callback for when user stops dragging
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
		private void stackPanelContent_MouseLeftButtonUp(object sender, System.Windows.Input.MouseButtonEventArgs e)
		{
            this.scrolling = false;
		}

        /// <summary>
        /// Callback for when user moves dragging outside user control area.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
		private void stackPanelContent_MouseLeave(object sender, System.Windows.Input.MouseEventArgs e)
		{
			this.scrolling = false;
		}

        /// <summary>
        /// Callback for when user moves the mouse/finger.  Assesses if scrolling or not and moves child content.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
		private void stackPanelContent_MouseMove(object sender, System.Windows.Input.MouseEventArgs e)
		{
            if (this.scrolling)
            {
                // Get where the mouse is
                Point newPos = e.GetPosition(this.stackPanelContent);

                // Find difference since start position on mouse down
                this.LayoutRoot.ScrollToVerticalOffset(this.LayoutRoot.VerticalOffset + previousPoint.Y - newPos.Y);
            }
		}
	}
}