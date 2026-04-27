using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Reports
{
    public class RunReports
    {
        public static void RunAMOTReport(DateTime startDate, DateTime endDate)
        {
            int numCylinders = 7;

            AMOTReport amotReport = new AMOTReport();

            bool[] selectedChannels = new bool[30];
            bool[] activeChannels = new bool[28];
            bool selectAllEvents = false;

            DateTime startOfDayDate = DateTime.Parse(startDate.ToString("dd/MM/yyyy 00:00:00"));
            DateTime endOfDayDate = DateTime.Parse(endDate.ToString("dd/MM/yyyy 23:59:59"));

            //Create active channels
            for(int i=0;i<14;i++)
            {
                if(i > numCylinders)
                {
                    //SelectButtonArray(i - 1).Visible = False
                    //DeSelectButtonArray(i - 1).Visible = False
                    activeChannels[i] = false;
                    activeChannels[i + 1] = false;
                }
                else
                {
                    activeChannels[i] = true;
                    activeChannels[i + 1] = true;
                }
            }

            //Select a few channels
            selectedChannels[0] = true;
            selectedChannels[1] = true;

            selectedChannels[4] = true;
            selectedChannels[5] = true;



            //amotReport.CreateReportAMOT(startOfDayDate, endOfDayDate, selectedChannels, activeChannels, selectAllEvents, true);
            
        }
    }
}
