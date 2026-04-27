using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;
using Telerik.Windows.Controls;
using System.Collections;

namespace Util.GridView.RowReorder
{
    public class BeginningDragEventArgs : CancelEventArgs
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

        public BeginningDragEventArgs(RadGridView sourceGrid, IEnumerable draggedItems)
            : base()
        {
            this.SourceGrid = sourceGrid;
            this.DraggedItems = draggedItems;
        }
    }
}
