using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using Telerik.Windows.Controls;
using Telerik.Windows;
using System.ComponentModel;

namespace Util.GridView.RowReorder
{
    public partial class RowReorderBehavior
    {
        // Using a DependencyProperty as the backing store for DragCueStyle.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty DragCueStyleProperty =
            DependencyProperty.Register("DragCueStyle", typeof(Style), typeof(RowReorderBehavior), new System.Windows.PropertyMetadata(OnDragCueStylePropertyChanged));

        public Style DragCueStyle
        {
            get { return (Style)GetValue(DragCueStyleProperty); }
            set { SetValue(DragCueStyleProperty, value); }
        }

        private static void OnDragCueStylePropertyChanged(DependencyObject sender, DependencyPropertyChangedEventArgs args)
        {
            RowReorderBehavior rowReorder = (RowReorderBehavior)sender;

            if (rowReorder.dragCue != null)
                rowReorder.dragCue.Style = args.NewValue as Style;
        }

        private static void OnDragCueActionContentTemplatePropertyChanged(DependencyObject sender, DependencyPropertyChangedEventArgs args)
        {
            RowReorderBehavior rowReorder = (RowReorderBehavior)sender;

            if (rowReorder.dragCue != null)
                rowReorder.dragCue.DragActionContentTemplate = args.NewValue as DataTemplate;
        }

        // Using a DependencyProperty as the backing store for DragCueActionContentTemplate.  This enables animation, styling, binding, etc...
        private static readonly DependencyProperty DragCueActionContentTemplateProperty =
            DependencyProperty.Register("DragCueActionContentTemplate", typeof(DataTemplate), typeof(RowReorderBehavior), new System.Windows.PropertyMetadata(null, OnDragCueActionContentTemplatePropertyChanged));

        public DataTemplate DragCueActionContentTemplate
        {
            get { return (DataTemplate)GetValue(DragCueActionContentTemplateProperty); }
            set { SetValue(DragCueActionContentTemplateProperty, value); }
        }

        // Using a DependencyProperty as the backing store for DragCueTooltipContentTemplate.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty DragCueTooltipContentTemplateProperty =
            DependencyProperty.Register("DragCueTooltipContentTemplate", typeof(DataTemplate),
            typeof(RowReorderBehavior), new System.Windows.PropertyMetadata(null, OnDragCueTooltipContentTemplatePropertyChanged));

        public DataTemplate DragCueTooltipContentTemplate
        {
            get { return (DataTemplate)GetValue(DragCueTooltipContentTemplateProperty); }
            set { SetValue(DragCueTooltipContentTemplateProperty, value); }
        }

        private static void OnDragCueTooltipContentTemplatePropertyChanged(DependencyObject sender, DependencyPropertyChangedEventArgs args)
        {
            RowReorderBehavior rowReorder = (RowReorderBehavior)sender;

            if (rowReorder.dragCue != null)
                rowReorder.dragCue.DragTooltipContentTemplate = args.NewValue as DataTemplate;
        }
    }
}
