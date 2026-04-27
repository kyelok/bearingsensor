/* 
 * FitStackPanel.cs
 * 
 * Custom panel for displaying controls like a StackPanel, but sizing their width/height
 * to fit within the horizontal/vertical bounds of the panel without zooming.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 16/02/2012
 */

using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;

namespace XTS.Controls
{
    public class FitStackPanel : Panel
    {
        private class FitStackPanelExtra
        {
            public uint index;
            public double size;

            public FitStackPanelExtra(uint index, double size)
            {
                this.index = index;
                this.size = size;
            }

            public static FitStackPanelExtra FindIndex(List<FitStackPanelExtra> fspes, uint index)
            {
                FitStackPanelExtra fspe = null;
                foreach (FitStackPanelExtra current in fspes)
                {
                    if (current.index == index)
                    {
                        fspe = current;
                        break;
                    }
                }
                return fspe;
            }
        }

        private List<FitStackPanelExtra> spacers = new List<FitStackPanelExtra>();
        private List<FitStackPanelExtra> fixedSizes = new List<FitStackPanelExtra>();

		private Orientation orientation = Orientation.Horizontal;
		public Orientation Orientation
		{
			get
			{
				return this.orientation;
			}
			set
			{
				this.orientation = value;
			}
		}

        private Thickness padding;
        public Thickness Padding
        {
            get
            {
                return this.padding;
            }
            set
            {
                this.padding = value;
            }
        }
	
        protected override Size ArrangeOverride(Size finalSize)
        {
            if (this.Children.Count > 0)
            {
                // Calculate space taken by fixed size elements
                double fixedSize = 0;
                foreach (FitStackPanelExtra fspe in this.fixedSizes)
                {
                    fixedSize += fspe.size;
                }
                // Calculate space taken by spacers
                double spacerSize = 0;
                foreach (FitStackPanelExtra fspe in this.spacers)
                {
                    spacerSize += fspe.size;
                }

                // Get width and height that we can actually fill
                double paddedWidth = finalSize.Width - (padding.Right + padding.Left);
                double paddedHeight = finalSize.Height - (padding.Top + padding.Bottom);

                if (orientation == Orientation.Horizontal)
                {
                    double childWidth = (paddedWidth - (fixedSize + spacerSize)) / (this.Children.Count - this.fixedSizes.Count);
                    Rect childBounds = new Rect(padding.Left, padding.Top, childWidth, paddedHeight);

                    uint index = 0;

                    // Do we need a spacer at the start?
                    FitStackPanelExtra spacer = FitStackPanelExtra.FindIndex(this.spacers, index);
                    if (spacer != null)
                    {
                        childBounds.X += spacer.size;
                    }
                    foreach (FrameworkElement child in Children)
                    {
                        FitStackPanelExtra fspe = FitStackPanelExtra.FindIndex(this.fixedSizes, index);
                        if (fspe != null)
                        {
                            childBounds.Width = fspe.size;
                        }
                        else
                        {
                            childBounds.Width = childWidth;
                        }
                        child.Arrange(childBounds);
                        
                        // Move to the left by the width we just arranged
                        childBounds.X += childBounds.Width;

                        index++;

                        // Do we need a spacer?
                        FitStackPanelExtra fspeSpacer = FitStackPanelExtra.FindIndex(this.spacers, index);
                        if (fspeSpacer != null)
                        {
                            childBounds.X += fspeSpacer.size;
                        }
                    }
                }
                else
                {
                    double childHeight = (paddedHeight - (fixedSize + spacerSize)) / (this.Children.Count - this.fixedSizes.Count);
                    Rect childBounds = new Rect(padding.Left, padding.Top, paddedWidth, childHeight);

                    uint index = 0;

                    // Do we need a spacer at the start?
                    FitStackPanelExtra spacer = FitStackPanelExtra.FindIndex(this.spacers, index);
                    if (spacer != null)
                    {
                        childBounds.Y += spacer.size;
                    }
                    foreach (FrameworkElement child in Children)
                    {
                        FitStackPanelExtra fspe = FitStackPanelExtra.FindIndex(this.fixedSizes, index);
                        if (fspe != null)
                        {
                            childBounds.Height = fspe.size;
                        }
                        else
                        {
                            childBounds.Height = childHeight;
                        }
                        child.Arrange(childBounds);

                        childBounds.Y += childBounds.Height;

                        index++;

                        // Do we need a spacer?
                        FitStackPanelExtra fspeSpacer = FitStackPanelExtra.FindIndex(this.spacers, index);
                        if (fspeSpacer != null)
                        {
                            childBounds.Y += fspeSpacer.size;
                        }
                    }
                }
            }
            return base.ArrangeOverride(finalSize);
        }

        protected override Size MeasureOverride(Size availableSize)
        {
            // Calculate space taken by fixed size elements
            double fixedSize = 0;
            foreach (FitStackPanelExtra fspe in this.fixedSizes)
            {
                fixedSize += fspe.size;
            }
            // Calculate space taken by spacers
            double spacerSize = 0;
            foreach (FitStackPanelExtra fspe in this.spacers)
            {
                spacerSize += fspe.size;
            }

            double paddedWidth = availableSize.Width - (padding.Right + padding.Left);
            double paddedHeight = availableSize.Height - (padding.Top + padding.Bottom);

			if (orientation == Orientation.Horizontal)
			{
                double childWidth = (paddedWidth - (fixedSize + spacerSize)) / (this.Children.Count - this.fixedSizes.Count);

                uint index = 0;
				foreach (FrameworkElement child in Children)
				{
                    FitStackPanelExtra fspe = FitStackPanelExtra.FindIndex(this.fixedSizes, index);
                    if (fspe != null)
                    {
                        child.Measure(new Size(fspe.size, paddedHeight));
                    }
                    else
                    {
                        child.Measure(new Size(childWidth, paddedHeight));
                    }
                    index++;
				}
			}
			else
			{
                double childHeight = (paddedHeight - (fixedSize + spacerSize)) / (this.Children.Count - this.fixedSizes.Count);

                uint index = 0;
				foreach (FrameworkElement child in Children)
				{
                    FitStackPanelExtra fspe = FitStackPanelExtra.FindIndex(this.fixedSizes, index);
                    if (fspe != null)
                    {
                        child.Measure(new Size(paddedHeight, fspe.size));
                    }
                    else
                    {
                        child.Measure(new Size(paddedHeight, childHeight));
                    }
                    index++;
				}
			}
            return base.MeasureOverride(availableSize);
        }

        public void AddSpacer(uint index, double size)
        {
            // We allow a single spacer to be added after the end as spacers
            // are added before the item at index
            if (index > this.Children.Count)
            {
                throw new ArgumentException(XTS.LocalizedResources.GetResourceString("XTSStringIndexIsTooHigh"));
            }
            this.spacers.Add(new FitStackPanelExtra(index, size));
        }

        public void SetChildFixedSize(uint index, double size)
        {
            if (index >= this.Children.Count)
            {
                throw new ArgumentException(XTS.LocalizedResources.GetResourceString("XTSStringIndexIsTooHigh"));
            }
            this.fixedSizes.Add(new FitStackPanelExtra(index, size));
        }

        public void Clear()
        {
            this.fixedSizes.Clear();
            this.spacers.Clear();
            this.Children.Clear();
        }
    }
}
