using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Telerik.Windows.Controls;
using System.Collections;

namespace WPF.RowReorder
{
    public class DragEndedEventArgs : EventArgs
    {

        public int DestinationIndex
        {
            get;
            private set;
        }

        public RadGridView SourceGrid
        {
            get;
            private set;
        }

        public IEnumerable DraggedItems
        {
            get;
            private set;
        }

        public DragEndedEventArgs(RadGridView sourceGrid, IEnumerable draggedItems, int destinationIndex)
            : base()
        {
            this.SourceGrid = sourceGrid;
            this.DraggedItems = draggedItems;
            this.DestinationIndex = destinationIndex;
        }
    }
}
