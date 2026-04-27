using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Telerik.Windows.Controls;
using System.Collections;

namespace Util.GridView.RowReorder
{
    public class DragStartedEventArgs : EventArgs
    {
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

        public DragStartedEventArgs(RadGridView sourceGrid, IEnumerable draggedItems)
            : base()
        {
            this.SourceGrid = sourceGrid;
            this.DraggedItems = draggedItems;
        }
    }
}
