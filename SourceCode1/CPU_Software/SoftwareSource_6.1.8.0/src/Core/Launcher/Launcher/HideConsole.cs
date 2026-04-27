using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.InteropServices;

namespace IISStarter
{
    class HideConsole
    {

        internal class NativeMethods
        {
            // Methods
            [DllImport("user32.dll", SetLastError = true)]
            public static extern IntPtr FindWindow(string lpClassName, string lpWindowName);

            [DllImport("user32.dll", SetLastError = true)]
            public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);
            
        }

        static public void HideWindow(string title)
        {
            IntPtr hWnd = NativeMethods.FindWindow(null, title); //put your console window caption here
            if (hWnd != IntPtr.Zero)
            {
                //Hide the window
                NativeMethods.ShowWindow(hWnd, 0); // 0 = SW_HIDE
            }
        }

        static public void ShowWindow(string title)
        {
            IntPtr hWnd = NativeMethods.FindWindow(null, title); //put your console window caption here
            if (hWnd != IntPtr.Zero)
            {
                //Hide the window
                NativeMethods.ShowWindow(hWnd, 1); // 1 = SW_SHOW
            }
        }


    }
}
