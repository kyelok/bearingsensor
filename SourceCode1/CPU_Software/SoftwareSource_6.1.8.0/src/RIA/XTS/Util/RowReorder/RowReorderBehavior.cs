using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.ComponentModel;
using Telerik.Windows.Controls;
using Telerik.Windows.Controls.DragDrop;
using Telerik.Windows.Controls.GridView;
using System.Collections;
using Telerik.Windows.Controls.TreeView;
using System.Diagnostics;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Interactivity;
using WPF.RowReorder;


namespace Util.GridView.RowReorder
{

    /// <summary>
    /// Provides row (item) reoder capabilities to RadGridView
    /// </summary>
    public partial class RowReorderBehavior : Behavior<RadGridView>
    {
        private TreeViewDragCue dragCue;
        private object currentDropItem;
        private DropPosition currentDropPosition;

        public event EventHandler<BeginningDragEventArgs> BeginningDrag;
        public event EventHandler<DragStartedEventArgs> DragStarted;
        public event EventHandler<CancelEventArgs> EndingDrag;
        public event EventHandler<DragEndedEventArgs> DragEnded;

        protected override void OnAttached()
        {
            base.OnAttached();
            this.Initialize();
        }

        protected override void OnDetaching()
        {
            base.OnDetaching();
            this.CleanUp();
        }

        // Using a DependencyProperty as the backing store for IsEnabled.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty IsEnabledProperty =
            DependencyProperty.RegisterAttached("IsEnabled", typeof(bool), typeof(RowReorderBehavior), new PropertyMetadata(false));


        protected virtual void Initialize()
        {
            this.AssociatedObject.RowLoaded +=
                new EventHandler<Telerik.Windows.Controls.GridView.RowLoadedEventArgs>(AssociatedObject_RowLoaded);
            this.AssociatedObject.SetValue(RadDragAndDropManager.AllowDropProperty, true);
            this.SubscribeToDragDropEvents();
        }

        protected virtual void CleanUp()
        {
            this.AssociatedObject.RowLoaded -= new EventHandler<Telerik.Windows.Controls.GridView.RowLoadedEventArgs>(AssociatedObject_RowLoaded);
            this.AssociatedObject.SetValue(RadDragAndDropManager.AllowDropProperty, false);
            this.UnsubscribeFromDragDropEvents();
            // uninitialize drag and grop for all rows
        }

        void AssociatedObject_RowLoaded(object sender, Telerik.Windows.Controls.GridView.RowLoadedEventArgs e)
        {
            if (e.Row is GridViewHeaderRow || e.Row is GridViewNewRow || e.Row is GridViewFooterRow)
                return;

            GridViewRow row = e.Row as GridViewRow;
            this.InitializeRowDragAndDrop(row);
        }

        private void InitializeRowDragAndDrop(GridViewRow row)
        {
            if (row == null)
                return;

            row.SetValue(RadDragAndDropManager.AllowDragProperty, true);
            row.SetValue(RadDragAndDropManager.AllowDropProperty, true);

            RadDragAndDropManager.RemoveDropQueryHandler(row, OnGridViewRowDropQuery);
            RadDragAndDropManager.AddDropQueryHandler(row, OnGridViewRowDropQuery);
        }

        private void SubscribeToDragDropEvents()
        {
            RadDragAndDropManager.AddDropQueryHandler(this.AssociatedObject, OnDropQuery);
            RadDragAndDropManager.AddDropInfoHandler(this.AssociatedObject, OnDropInfo);
            RadDragAndDropManager.AddDragQueryHandler(this.AssociatedObject, OnDragQuery);
            RadDragAndDropManager.AddDragInfoHandler(this.AssociatedObject, OnDragInfo);
        }

        private void UnsubscribeFromDragDropEvents()
        {
            RadDragAndDropManager.RemoveDropQueryHandler(this.AssociatedObject, OnDropQuery);
            RadDragAndDropManager.RemoveDropInfoHandler(this.AssociatedObject, OnDropInfo);
            RadDragAndDropManager.RemoveDragQueryHandler(this.AssociatedObject, OnDragQuery);
            RadDragAndDropManager.RemoveDragInfoHandler(this.AssociatedObject, OnDragInfo);
        }


        public virtual DropPosition GetDropPositionFromPoint(Point absoluteMousePosition, GridViewRow row)
        {
            if (row != null)
            {


#if WPF
                Point headerTopPoint = row.TransformToVisual(System.Windows.Window.GetWindow(row)).Transform(new Point());
#else
                Point headerTopPoint = row.TransformToVisual(Application.Current.RootVisual).Transform(new Point());
#endif

                double mouseTop = absoluteMousePosition.Y - headerTopPoint.Y;

                if (mouseTop < (row.ActualHeight * 2 / 4))
                {
                    return DropPosition.Before;
                }
                else if (mouseTop > (row.ActualHeight * 2 / 4))
                {
                    return DropPosition.After;
                }
            }

            return DropPosition.Inside;
        }

        private void OnDropQuery(object sender, DragDropQueryEventArgs e)
        {
            if (!(e.Options.Source is GridViewRow))
            {
                return;
            }

            e.QueryResult = true;
            e.Handled = true;
        }

        private void OnDragQuery(object sender, DragDropQueryEventArgs e)
        {
            if (!(e.Options.Source is GridViewRow))
            {
                return;
            }

            RadGridView gridView = sender as RadGridView;

            if (gridView == null)
                return;

            e.QueryResult = this.InitiateDrag(gridView, e);
            e.Handled = true;
        }

        private void OnDragInfo(object sender, DragDropEventArgs e)
        {
            if (!(e.Options.Source is GridViewRow))
            {
                return;
            }

            RadGridView gridView = sender as RadGridView;
            IEnumerable draggedItems = e.Options.Payload as IEnumerable;

            if (e.Options.Status == DragStatus.DragInProgress && e.Options.DragCue == null)
            {
                this.dragCue = this.CreateDragCue();
                this.dragCue.ClearValue(TreeViewDragCue.ItemsSourceProperty);
                this.dragCue.ItemsSource = draggedItems;

                e.Options.DragCue = this.dragCue;

            }
            else if (e.Options.Status == DragStatus.DragComplete)
            {
            }
        }

        private void OnGridViewRowDropQuery(object sender, DragDropQueryEventArgs e)
        {
            if (!(e.Options.Source is GridViewRow))
            {
                return;
            }

            GridViewRow row = sender as GridViewRow;

            if (e.Options.Status == DragStatus.DropDestinationQuery)
            {
                this.currentDropItem = row.Item;
                this.currentDropPosition = this.GetDropPositionFromPoint(e.Options.CurrentDragPoint, row);

                var args = new CancelEventArgs();
                OnEndingDrag(args);

                e.QueryResult = !args.Cancel;
                e.Handled = true;
            }
        }

        private void OnDropInfo(object sender, DragDropEventArgs e)
        {
            if (!(e.Options.Source is GridViewRow))
            {
                return;
            }

            RadGridView gridView = sender as RadGridView;
            IList draggedItems = e.Options.Payload as IList;

            // Get the drag cu that the TreeView or we have created
            TreeViewDragCue cue = e.Options.DragCue as TreeViewDragCue;

            if (!(e.Options.Source is GridViewRow))
            {
                return;
            }

            if (e.Options.Status == DragStatus.DropPossible)
            {
                // Set a suitable text:
                GridViewRow row = this.AssociatedObject.ItemContainerGenerator.ContainerFromItem(this.currentDropItem) as GridViewRow;
                DropPosition fff = this.GetDropPositionFromPoint(e.Options.CurrentDragPoint, row);

                cue.DragActionContent = String.Format("Drop {0} ", Enum.GetName(typeof(DropPosition), fff));
                cue.DragTooltipContent = currentDropItem;
                cue.IsDropPossible = true;

            }
            else if (e.Options.Status == DragStatus.DropImpossible)
            {
                cue.DragActionContent = null;
                cue.IsDropPossible = false;

            }
            else if (e.Options.Status == DragStatus.DropComplete && gridView != null)
            {

                GridViewRow row = this.AssociatedObject.ItemContainerGenerator.ContainerFromItem(this.currentDropItem) as GridViewRow;
                DropPosition dropPosition = this.GetDropPositionFromPoint(e.Options.CurrentDragPoint, row);

                int index = 0;

                if (row != null)
                {
                    index = this.AssociatedObject.ItemContainerGenerator.IndexFromContainer(row);

                    if (dropPosition == DropPosition.After)
                    {
                        index++;
                    }

                    if (index < 0)
                    {
                        index = 0;
                    }
                }

                OnDragEnded(new DragEndedEventArgs(this.AssociatedObject, draggedItems, index));
            }
        }

        private bool InitiateDrag(RadGridView gridView, DragDropQueryEventArgs dragDropArgs)
        {
            List<object> itemsToDrag = gridView.SelectedItems.ToList();
            BeginningDragEventArgs eventArgs = new BeginningDragEventArgs(gridView, itemsToDrag);

            this.OnBeginningDrag(eventArgs);

            if (!eventArgs.Cancel)
            {

                dragDropArgs.Options.Payload = itemsToDrag;

                this.OnDragStarted(new DragStartedEventArgs(gridView, itemsToDrag));
            }

            return !eventArgs.Cancel;
        }

        protected virtual void OnBeginningDrag(BeginningDragEventArgs args)
        {
            if (BeginningDrag != null)
                BeginningDrag(this, args);
        }

        protected virtual void OnDragStarted(DragStartedEventArgs args)
        {
            if (DragStarted != null)
                DragStarted(this, args);
        }

        protected virtual void OnEndingDrag(CancelEventArgs args)
        {
            if (EndingDrag != null)
                EndingDrag(this, args);
        }

        protected virtual void OnDragEnded(DragEndedEventArgs args)
        {
            if (DragEnded != null)
                DragEnded(this, args);
        }

       

        private TreeViewDragCue CreateDragCue()
        {
            TreeViewDragCue cue = new TreeViewDragCue();
            cue.Style = this.DragCueStyle;
            cue.DragTooltipContentTemplate = this.DragCueTooltipContentTemplate;
            cue.DragActionContentTemplate = this.DragCueActionContentTemplate;

            return cue;
        }
    }
}
