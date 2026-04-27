/* 
 * XTSData.cs
 * 
 * Base class for data supported by the UI and general data supported.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: JGoss, 24/01/2012
 */

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Reflection;
using System.Resources;

namespace XTS
{
    #region XTSData Collection - UI thread safe ObservableCollection
    /// <summary>
    /// Collection that supports the bindable INotifyCollectionChanged notification from seperate threads
    /// </summary>
    /// <typeparam name="T">The type of object to store in the collections</typeparam>
    public class XTSDataCollection<T> : ObservableCollection<T>
    {
        /// <summary>
        /// Default constructor. Initializes a new instance of the ObservableCollection<T> class.
        /// </summary>
        public XTSDataCollection()
            : base()
        { }

        /// <summary>
        /// Initializes a new instance of the ObservableCollection<T> class that contains elements copied from the specified list.
        /// </summary>
        /// <param name="list">The list from which the elements are copied.</param>
        public XTSDataCollection(List<T> list)
            : base(list)
        { }

        /// <summary>
        /// Inserts an item into the collection at the specified index.
        /// </summary>
        /// <param name="index">The zero-based index at which item should be inserted.</param>
        /// <param name="item">The object to insert.</param>
        protected override void InsertItem(int index, T item)
        {
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess())
            {
                lock (this)
                {
                    base.InsertItem(index, item);
                }
            }
            else
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new Action<int, T>(InsertItem), index, item);
            }
        }

        /// <summary>
        /// Removes all items from the collection.
        /// </summary>
        protected override void ClearItems()
        {
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess())
            {
                lock (this)
                {
                    base.ClearItems();
                }
            }
            else
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new Action(ClearItems));
            }
        }

        /// <summary>
        /// Removes the item at the specified index of the collection.
        /// </summary>
        /// <param name="index">The zero-based index of the element to remove.</param>
        protected override void RemoveItem(int index)
        {
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess())
            {
                lock (this)
                {
                    base.RemoveItem(index);
                }
            }
            else
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new Action<int>(RemoveItem), index);
            }
        }

        /// <summary>
        /// Replaces the element at the specified index.
        /// </summary>
        /// <param name="index">The zero-based index of the element to replace.</param>
        /// <param name="item">The new value for the element at the specified index.</param>
        protected override void SetItem(int index, T item)
        {
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess())
            {
                lock (this)
                {
                    base.SetItem(index, item);
                }
            }
            else
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new Action<int, T>(SetItem), index, item);
            }
        }

        #region AddRange Modification
        /// <summary>
        /// Disables notifications for modifying the collection
        /// </summary>
        private bool suspendCollectionChangeNotification = false;
        /// <summary>
        /// Allows users of the class to manually disable/enable collection change notifications
        /// </summary>
        public bool SuspendCollectionChangeNotification
        {
            set
            {
                lock (this)
                {
                    this.suspendCollectionChangeNotification = value;
                }
            }
        }

        /// <summary>
        /// Cause a change notification to be sent to bound clients
        /// </summary>
        public void Refresh()
        {
            var arg = new NotifyCollectionChangedEventArgs(NotifyCollectionChangedAction.Reset);
            base.OnCollectionChanged(arg);
        }

        /// <summary>
        /// Callback override for the collection change notification.  Will block notifications if the member variable is set.
        /// </summary>
        /// <param name="e"></param>
        protected override void OnCollectionChanged(NotifyCollectionChangedEventArgs e)
        {
            if (!this.suspendCollectionChangeNotification)
            {
                base.OnCollectionChanged(e);
            }
        }

        public void RemoveRange(IEnumerable<T> items)
        {
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess() == false)
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new Action<IEnumerable<T>>(RemoveRange), items);
                return;
            }

            lock (this)
            {
                bool previousSuspend = this.suspendCollectionChangeNotification;
                this.suspendCollectionChangeNotification = true;
                int index = base.Count;
                int removed = 0;
                try
                {
                    foreach (var i in items)
                    {
                        base.Remove(i);
                        removed++;
                    }
                }
                finally
                {
                    this.suspendCollectionChangeNotification = previousSuspend;
                    if (this.suspendCollectionChangeNotification == false && removed > 0)
                    {
                        var arg = new NotifyCollectionChangedEventArgs(NotifyCollectionChangedAction.Reset);
                        this.OnCollectionChanged(arg);
                    }
                }
            }
        }

        public void AddRange(IEnumerable<T> items)
        {
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess() == false)
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new Action<IEnumerable<T>>(AddRange), items);
                return;
            }

            lock (this)
            {
                bool previousSuspend = this.suspendCollectionChangeNotification;
                this.suspendCollectionChangeNotification = true;
                int index = base.Count;
                int added = 0;
                try
                {
                    foreach (var i in items)
                    {
                        base.InsertItem(base.Count, i);
                        added++;
                    }
                }
                finally
                {
                    this.suspendCollectionChangeNotification = previousSuspend;
                    if (this.suspendCollectionChangeNotification == false && added > 0)
                    {
                        var arg = new NotifyCollectionChangedEventArgs(NotifyCollectionChangedAction.Reset);
                        this.OnCollectionChanged(arg);
                    }
                }
            }
        }

        /// <summary>
        /// Takes a snapshot of the current data using the lock to prevent any access
        /// </summary>
        /// <returns>A normal list with a copy of the data</returns>
        public List<T> GetCopy()
        {
            lock (this)
            {
                List<T> copy = new List<T>(this);
                return copy;
            }
        }
        #endregion

        /// <summary>
        /// Use a bubble sort to sort the list.
        /// We only ever have 100 items in the list at a time so a simple bubble sort
        /// will be fast enough.
        /// </summary>
        public void BubbleSort()
        {
            //Wrap code in a try finally to make sure
            //the notifications are switched back on after the sort.
            this.SuspendCollectionChangeNotification = true;
            try
            {
                for (int i = this.Count - 1; i >= 0; i--)
                {
                    for (int j = 1; j <= i; j++)
                    {
                        T o1 = this[j - 1];
                        T o2 = this[j];
                        if (((IComparable)o1).CompareTo(o2) > 0)
                        {
                            this.Remove(o1);
                            this.Insert(j, o1);
                        }
                    }
                }
            }
            finally
            {
                this.SuspendCollectionChangeNotification = false;
                var arg = new NotifyCollectionChangedEventArgs(NotifyCollectionChangedAction.Reset);
                this.OnCollectionChanged(arg);
            }
        }

        /// <summary>
        /// Occurs when a property value changes.
        /// </summary>
        /// <param name="e">Arguments for the changed property</param>
        protected override void OnPropertyChanged(PropertyChangedEventArgs e)
        {
            if (System.Windows.Deployment.Current.Dispatcher.CheckAccess())
            {
                base.OnPropertyChanged(e);
            }
            else
            {
                System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new Action<PropertyChangedEventArgs>(OnPropertyChanged), e);
            }
        }
    }

    #endregion

    #region XTSData - UI thread safe class for property notification
    /// <summary>
    /// Base class to support data binding using INotifyPropertyChanged interface
    /// </summary>
    /// <remarks>Invokes OnPropertyChanged to make UI items that are bound to the
    /// data update correctly.</remarks>
    public class XTSData : INotifyPropertyChanged
    {
        /// <summary>
        /// The internal lock object
        /// </summary>
        readonly object syncRoot = new object();

        public bool SuspendOnPropertyChanged { get; set; }

        /// <summary>
        /// Returns the object that is used for locking
        /// </summary>
        public object SyncRoot
        {
            get
            {
                return this.syncRoot;
            }
        }

        /// <summary>
        /// Default constructor
        /// </summary>
        public XTSData()
        { 
            SuspendOnPropertyChanged = false; 
        }

        #region INotifyPropertyChanged Members
        /// <summary>
        /// Event for notifying registered classes
        /// </summary>
        public event PropertyChangedEventHandler PropertyChanged;
        #endregion

        /// <summary>
        /// Function call used by child classes for notifying registered classes
        /// </summary>
        /// <param name="propName">Name of the property that was modified</param>
        public void OnPropertyChanged(string propName)
        {
            if (SuspendOnPropertyChanged == false)
            {
                if (System.Windows.Deployment.Current.Dispatcher.CheckAccess())
                {
                    if (PropertyChanged != null)
                    {
                        PropertyChanged(this, new PropertyChangedEventArgs(propName));
                    }
                }
                else
                {
                    System.Windows.Deployment.Current.Dispatcher.BeginInvoke(new Action<string>(OnPropertyChanged), propName);
                }
            }
        }
    }
    #endregion // XTSData - UI thread safe class for property notification

    /// <summary>
    /// General class for non-specific system data
    /// </summary>
    public class XTSGeneral : XTSData
    {
        /// <summary>
        /// Internal data for EventLogDisplayCount
        /// </summary>
        private int eventLogDisplayCount;
        /// <summary>
        /// Number of events
        /// </summary>
        public int EventLogDisplayCount
        {
            get
            {
                return this.eventLogDisplayCount;
            }
            set
            {
                this.eventLogDisplayCount = value;
                // No need to call OnPropertyChanged handler for this value
            }
        }

        /// <summary>
        /// Internal data for UnackedAlarms
        /// </summary>
        private uint unackedAlarms = 0;
        /// <summary>
        /// The number of unacknowledged alarms
        /// </summary>
        public uint UnackedAlarms
        {
            get
            {
                return this.unackedAlarms;
            }
            set
            {
                this.unackedAlarms = value;
                OnPropertyChanged("UnackedAlarms");
            }
        }

        /// <summary>
        /// Internal data for Server
        /// </summary>
        private string server = "";
        /// <summary>
        /// The server that is being used for data
        /// </summary>
        public string Server
        {
            get
            {
                return this.server;
            }
            set
            {
                this.server = value;
                OnPropertyChanged("Server");
            }
        }

        /// <summary>
        /// Internal data for HelpURL
        /// </summary>
        private string helpURL = "";
        /// <summary>
        /// The URL to browse to when the user accesses the help page
        /// </summary>
        public string HelpURL
        {
            get
            {
                return this.helpURL;
            }
            set
            {
                this.helpURL = value;
            }
        }

        /// <summary>
        /// Internal data for ConfigURL
        /// </summary>
        private string configURL = "";
        /// <summary>
        /// The URL to browse to when the user accesses the settings page
        /// </summary>
        public string ConfigURL
        {
            get
            {
                return this.configURL;
            }
            set
            {
                this.configURL = value;
            }
        }

        /// <summary>
        /// Internal data for BarScaleRPM
        /// </summary>
        private uint barScaleRPM = 100;
        /// <summary>
        /// The RPM graph axis scale
        /// </summary>
        public uint BarScaleRPM
        {
            get
            {
                return this.barScaleRPM;
            }
            set
            {
                this.barScaleRPM = value;
            }
        }

        /// <summary>
        /// Internal data for BarScaleWear
        /// </summary>
        private uint barScaleWear = 1000;
        /// <summary>
        /// Scale of the wear graphs
        /// </summary>
        public uint BarScaleWear
        {
            get
            {
                return this.barScaleWear;
            }
            set
            {
                this.barScaleWear = value;
            }
        }

        /// <summary>
        /// Internal data for BarScaleDeviation
        /// </summary>
        private uint barScaleDeviation = 1000;
        /// <summary>
        /// Scale of the deviation graphs
        /// </summary>
        public uint BarScaleDeviation
        {
            get
            {
                return this.barScaleDeviation;
            }
            set
            {
                this.barScaleDeviation = value;
            }
        }

        /// <summary>
        /// Internal data for SPUDateTime
        /// </summary>
        private DateTime spuDateTime = DateTime.MinValue;
        /// <summary>
        /// Last updated time for data within the SPU
        /// </summary>
        public DateTime SPUDateTime
        {
            set
            {
                this.spuDateTime = value;
                OnPropertyChanged("SPUDateTime");
            }
            get
            {
                return this.spuDateTime;
            }
        }

        /// <summary>
        /// Resource message ID for status message
        /// </summary>
        private string message;
        /// <summary>
        /// Arguments used with message for formatting the string
        /// </summary>
        private object[] messageArgs;

        /// <summary>
        /// Obtains the current message resource id, ignoring any parameters
        /// </summary>
        public string Message
        {
            get
            {
                return this.message;
            }
        }

        /// <summary>
        /// Obtains the current message resource id and its parameters
        /// </summary>
        /// <param name="args">out: Array of arguments to be formatted with the returned ID.  Can be null!</param>
        /// <returns>The resource id of the status message string</returns>
        public string GetMessageString(out object [] args)
        {
            string rc = null;
            lock (this.message)
            {
                args = this.messageArgs;
                rc = this.message;
            }
            return rc;
        }

        /// <summary>
        /// Allows setting of message using resource ID
        /// </summary>
        /// <param name="messageID">Resource name of string to display</param>
        public void SetMessageString(string messageID)
        {
            SetMessageString(messageID, null);
        }
        /// <summary>
        /// Allows setting of message using resource ID
        /// </summary>
        /// <param name="resource">Resource name of string to display</param>
        /// <param name="args">Arguments to be formatted into the resource string</param>
        public void SetMessageString(string resource, params object [] args)
        {
            lock (this.message)
            {
                this.message = resource;
                this.messageArgs = args;
            }
            OnPropertyChanged("Message");
        }

        /// <summary>
        /// Default constructor
        /// </summary>
        public XTSGeneral()
        {
            this.message = "<message not set>";
            this.EventLogDisplayCount = 100;
        }
    }
}
