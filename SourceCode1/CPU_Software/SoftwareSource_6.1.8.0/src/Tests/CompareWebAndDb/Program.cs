using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WebServiceObjects;
using WebService;

namespace CompareWebAndDb
{
    class Program
    {
        static void Main(string[] args)
        {
            /* Piping data... See:
             * http://stackoverflow.com/questions/199528/c-sharp-console-receive-input-with-pipe */
            ServerRequests serverRequests = new ServerRequests("127.0.0.1", 8081);
            DataRetriever dataRetriever = new DataRetriever();
            EngineData a = serverRequests.GetEngineLiveData();
            EngineData b = dataRetriever.GetEngineDataObject();

            Console.WriteLine(CompareEngineData(a, b));

            while (true) ; //Keep spinning
            
        }

        static EngineData ConstructEngineDataFromDb()
        {
            DataRetriever dataRetriever = new DataRetriever();
            return dataRetriever.GetEngineDataObject();
        }

        static bool CompareTwoArrays(UInt16[] a, UInt16[] b)
        {
            if (a.Length != b.Length)
            {
                return false;
            }
            else
            {
                for (int i = 0; i < a.Length; i++)
                {
                    if (a[i] != b[i])
                    {
                        return false;
                    }
                    
                }
                return true;
            }
        }

        static bool CompareTwoArrays(Int16[] a, Int16[] b)
        {
            if (a.Length != b.Length)
            {
                return false;
            }
            else
            {
                for (int i = 0; i < a.Length; i++)
                {
                    if (a[i] != b[i])
                    {
                        return false;
                    }

                }
                return true;
            }
        }

        static bool CompareCalculatedStatusWord(CalculatedStatusWord[] a, CalculatedStatusWord[] b)
        {
            if (a.Length != b.Length) 
            { 
                return false; 
            }
            else
            {
                for(int i = 0; i < a.Length; i++)
                {
                    if (a[i].Alarm != b[i].Alarm) { return false; }
                    else if (a[i].Disabled != b[i].Disabled) { return false; }
                    else if (a[i].Normal != b[i].Normal) { return false; }
                    else if (a[i].Prewarning != b[i].Prewarning) { return false; }
                    else if (a[i].SensorAdjustment != b[i].SensorAdjustment) { return false; }
                    else if (a[i].Sensorfail != b[i].Sensorfail) { return false; }
                    else if (a[i].SensorFailHighLevel != b[i].SensorFailHighLevel) { return false; }
                    else if (a[i].SensorFailLowLevel != b[i].SensorFailLowLevel) { return false; }
                    else if (a[i].SensorFailNoPulse != b[i].SensorFailNoPulse) { return false; }
                    else if (a[i].SensorFailRPMOOR != b[i].SensorFailRPMOOR) { return false; }
                    else if (a[i].Slowdown != b[i].Slowdown) { return false; }
                }
            }
            
            return true;

        }

        static bool CompareWaterInOil(WaterInOil a, WaterInOil b)
        {
            if (a.PPM != b.PPM) { return false; }
            else if (a.Temp != b.Temp) { return false; }
            else if (a.WaterActivity != b.WaterActivity) { return false; }
            else return true;
        }

        static bool CompareAlarmShutdownLevels(AlarmShutdownLevels a, AlarmShutdownLevels b)
        {
            if (a.CylinderAlarmLevel != b.CylinderAlarmLevel) { return false; }
            else if (a.SensorAlarmDeviationLevel != b.SensorAlarmDeviationLevel) { return false; }
            else if (a.SensorAlarmLevel != b.SensorAlarmLevel) { return false; }
            else if (a.SensorDevSlowDownLevel != b.SensorDevSlowDownLevel) { return false; }
            else if (a.SensorSlowDownLevel != b.SensorSlowDownLevel) { return false; }
            else return true;
        }

        static String CompareEngineData(EngineData a, EngineData b)
        {
            if (a.Equals(b))
            {
                return "Both EngineData instances are IDENTICAL";
            }
            else
            {
                //Calculate differences
                StringBuilder result = new StringBuilder("The following differences were found: ");

                if (a.AlarmShutdownLevels != null)
                {
                    if (!CompareAlarmShutdownLevels(a.AlarmShutdownLevels,b.AlarmShutdownLevels))
                    {
                        result.Append("AlarmShutdownLevels, ");
                    }
                }
                else
                {
                    Console.WriteLine("Server AlarmShutdownLevels was NULL");
                }

                if (a.CylinderDevStatus != null)
                {

                    if (!CompareCalculatedStatusWord(a.CylinderDevStatus, b.CylinderDevStatus))
                    {
                        result.Append("CylinderDevStatus, ");
                    }
                }
                else
                {
                    Console.WriteLine("Server CylinderDevStatus was NULL");
                }

                if (a.CylinderDevValues != null)
                {
                    if (!Program.CompareTwoArrays(a.CylinderDevValues,b.CylinderDevValues))
                    {
                        result.Append("CylinderDevValues, ");
                    }
                }
                else
                {
                    Console.WriteLine("Server CylinderDevValues was NULL");
                }

                if (a.CylinderStatus != null)
                {
                    if (!CompareCalculatedStatusWord(a.CylinderStatus,b.CylinderStatus))
                    {
                        result.Append("CylinderStatus, ");
                    }
                }
                else
                {
                    Console.WriteLine("Server CylinderStatus was NULL");
                }

                if (a.CylinderValues != null)
                {
                    if (!Program.CompareTwoArrays(a.CylinderValues,b.CylinderValues))
                    {
                        result.Append("CylinderValues, ");
                    }
                }
                else
                {
                    Console.WriteLine("Server CylinderValues was NULL");
                }

                if (a.DateTime != null)
                {
                    if (!a.DateTime.Equals(b.DateTime))
                    {
                        result.Append("DateTime, ");
                    }
                }
                else
                {
                    Console.WriteLine("Server DateTime was NULL");
                }

                if (a.EngineDirection != null)
                {
                    if (!a.EngineDirection.Equals(b.EngineDirection))
                    {
                        result.Append("EngineDirection, ");
                    }
                }
                else
                {
                    Console.WriteLine("Server EngineDirection was NULL");
                }

                if (a.RpmChecked != null)
                {
                    if (!a.RpmChecked.Equals(b.RpmChecked))
                    {
                        result.Append("RpmChecked, ");
                    }
                }
                else
                {
                    Console.WriteLine("Server RpmChecked was NULL");
                }

                if (a.RpmModal != null)
                {
                    if (!a.RpmModal.Equals(b.RpmModal))
                    {
                        result.Append("RpmModel, ");
                    }
                }
                else
                {
                    Console.WriteLine("Server RpmModal was NULL");
                }

                if (a.RunTime != null)
                {
                    if (!a.RunTime.Equals(b.RunTime))
                    {
                        result.Append("RunTime, ");
                    }
                }
                else
                {
                    Console.WriteLine("Server RunTime was NULL");
                }

                if (a.SensorDevStatus != null)
                {
                    if (!CompareCalculatedStatusWord(a.SensorDevStatus,b.SensorDevStatus))
                    {
                        result.Append("SensorDevStatus, ");
                    }
                }
                else
                {
                    Console.WriteLine("Server SensorDevStatus was NULL");
                }

                if (a.SensorDevValues != null)
                {
                    if (!Program.CompareTwoArrays(a.SensorDevValues,b.SensorDevValues))
                    {
                        result.Append("SensorDevValues, ");
                    }
                }
                else
                {
                    Console.WriteLine("Server SensorDevValues was NULL");
                }

                if (a.SensorStatus != null)
                {
                    if (!CompareCalculatedStatusWord(a.SensorStatus,b.SensorStatus))
                    {
                        result.Append("SensorStatus, ");
                    }
                }
                else
                {
                    Console.WriteLine("Server SensorStatus was NULL");
                }

                if (a.SensorValues != null)
                {
                    if (!Program.CompareTwoArrays(a.SensorValues,b.SensorValues))
                    {
                        result.Append("SensorValues, ");
                    }
                }
                else
                {
                    Console.WriteLine("Server SensorValues was NULL");
                }

                if (a.SLEM != null)
                {
                    if (!a.SLEM.Equals(b.SLEM))
                    {
                        result.Append("SLEM, ");
                    }
                }
                else
                {
                    Console.WriteLine("Server SLEM was NULL");
                }

                if (a.SLEMStatus != null)
                {
                    if (!CompareCalculatedStatusWord(new CalculatedStatusWord[]{a.SLEMStatus},new CalculatedStatusWord[]{b.SLEMStatus}))
                    {
                        result.Append("SLEMStatus, ");
                    }
                }
                else
                {
                    Console.WriteLine("Server SLEMStatus was NULL");
                }

                if (a.WaterInOil != null)
                {
                    if (!CompareWaterInOil(a.WaterInOil,b.WaterInOil))
                    {
                        result.Append("WaterInOil, ");
                    }
                }
                else
                {
                    Console.WriteLine("Server WaterInOil was NULL");
                }

                if (a.WIOActivityStatus != null)
                {
                    if (!CompareCalculatedStatusWord(new CalculatedStatusWord[]{a.WIOActivityStatus},new CalculatedStatusWord[]{b.WIOActivityStatus}))
                    {
                        result.Append("WIOActivityStatus, ");
                    }
                }
                else
                {
                    Console.WriteLine("Server WIOActivityStatus was NULL");
                }
                
                return result.ToString() + "END";
            }
        }
    }
}