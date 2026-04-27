using System;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;
using System.Windows.Interactivity;
using Telerik.Windows.Controls;
using Telerik.Windows.Controls.GridView;
using Telerik.Windows.Controls.DragDrop;
using Telerik.Windows;
using XTS;

namespace SL.RowReorder
{
    public class AutoScrollBehavior : Behavior<RadGridView>
    {
        protected override void OnAttached()
        {
            base.OnAttached();

            EventManager.RegisterClassHandler(typeof(GridViewScrollViewer),
    RadDragAndDropManager.DropQueryEvent,
    new EventHandler<DragDropQueryEventArgs>(OnGridViewScrollViewerDropQuery),
    true);
        }

        private static void OnGridViewScrollViewerDropQuery(object sender, DragDropQueryEventArgs e)
        {
            var veiwer = sender as GridViewScrollViewer;

            if (veiwer != null)
            {
                var p = e.Options.CurrentDragPoint;

                var visual = veiwer.TransformToVisual(App.Current.RootVisual);
                var topLeft = visual.Transform(new Point(0, 0));
                var relative = new Point(p.X - topLeft.X, p.Y - topLeft.Y);

                if (relative.Y > 0 && relative.Y < 40)
                {
                    veiwer.ScrollToVerticalOffset(veiwer.VerticalOffset - (20 * ((40 - relative.Y) / 40)));
                }

                if (relative.Y > veiwer.ActualHeight - 40 && relative.Y < veiwer.ActualHeight)
                {
                    veiwer.ScrollToVerticalOffset(veiwer.VerticalOffset + (20 * ((40 - (veiwer.ActualHeight - relative.Y)) / 40)));
                }

                if (relative.X > 0 && relative.X < 40)
                {
                    veiwer.ScrollToHorizontalOffset(veiwer.HorizontalOffset - (20 * ((40 - relative.X) / 40)));
                }

                if (relative.X > veiwer.ActualWidth - 40 && relative.X < veiwer.ActualWidth)
                {
                    veiwer.ScrollToHorizontalOffset(veiwer.HorizontalOffset + (20 * ((40 - (veiwer.ActualWidth - relative.X)) / 40)));
                }
            }
        }
    }
}
