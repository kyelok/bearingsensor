using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Web.Mvc;
using System.Web.Security;

namespace ConfigurationWebsite.Models
{
    public class ConfigRecordModel
    {       
        public List<ConfigRecord> ConfigRecordList { get; set; }
        public string ConfigFilePath { get; set; }
        public string Status { get; set; }

        public bool CanEdit { get; set; }
        public bool CanDelete { get; set; }
        public bool CanAdd { get; set; }
        public bool CanForceWrite { get; set; }
        public bool CanWriteChanged { get; set; }
        public bool CanExport { get; set; }
        public bool CanImport { get; set; }

        public ConfigRecordModel()
        {
            this.CanEdit = false;
            this.CanDelete = false;
            this.CanAdd = false;
            this.CanExport = false;
            this.CanForceWrite = false;
            this.CanImport = false;
            this.CanWriteChanged = false;
            this.ConfigRecordList = new List<ConfigRecord>();
        }
    }


    public class ConfigRecord
    {
        public int RowID { get; set; }

        /// <summary>
        /// This methods creates a ConfigRecords from the database data
        /// </summary>
        /// <param name="rowId">The row id of the record in the database</param>
        /// <param name="name">The name of the parameter</param>
        /// <param name="spuReg">The register on the SPU</param>
        /// <param name="description">A description of the register to be displayed</param>
        /// <param name="minLimit">The minimum value that the register can hold</param>
        /// <param name="maxLimit">The maximum value that the register can hold</param>
        /// <param name="control">The UI control that is used to set the value</param>
        /// <param name="value">The value that is currently set in the database</param>
        /// <param name="spuTime">The time that the value was updated on the SPU</param>
        /// <param name="webTime">The time that the value was updated on the web page</param>
        /// <returns>A ConfigRecord that contains the data passed in.</returns>
        public ConfigRecord(Int32 rowId, string name, Int32 spuReg, string description,
            Int64 minLimit, Int64 maxLimit, UiControl control, Int64 value, DateTime spuTime, DateTime webTime, SPUDataType dataType, string userfunction)
        {
            this.RowID = rowId;
            this.Name = name;
            this.Register = spuReg;
            this.Description = description;
            this.MinLimit = minLimit;
            this.MaxLimit = maxLimit;
            this.UiControl = control;
            this.Value = value;
            this.TimeLastSetSpu = spuTime;
            this.TimeLastSetWeb = webTime;
            this.Type = dataType;
            this.UserFunction = userfunction;
        }

        /// <summary>
        /// This methods creates a config record object from a
        /// line read from the SPU parameters file.
        /// </summary>
        /// <param name="line">The line to parse to create the config record from.</param>
        /// <returns>A ConfigRecord object created from the line passed in.</returns>
        public ConfigRecord(string line)
        {
            string[] splitLine = line.Split(',');
            this.Name = splitLine[0];
            this.Register = int.Parse(splitLine[1]);
            this.Description = splitLine[2];
            this.Value = Int64.Parse(splitLine[3]);
            UiControl tempUIC;
            
            if (Enum.TryParse<UiControl>(splitLine[4], true, out tempUIC))
            {
                this.UiControl = tempUIC;
            }
            else
            {
                this.UiControl = (UiControl)int.Parse(splitLine[4]);
            }            
            
            SPUDataType tempDT;
            if (Enum.TryParse<SPUDataType>(splitLine[5], true, out tempDT))
            {
                this.Type = tempDT;
            }
            else
            {
                this.Type = SPUDataType.UINT;
            }

            Int64 tempInt;
            if (Int64.TryParse(splitLine[6], out tempInt))
            {
                this.MinLimit = tempInt;
            }
            else
            {
                this.MinLimit = 0;
            }

            if (Int64.TryParse(splitLine[7], out tempInt))
            {
                this.MaxLimit = tempInt;
            }
            else
            {
                switch (this.Type)
                {
                    case SPUDataType.INT:
                        this.MaxLimit = Int16.MaxValue;
                        break;
                    case SPUDataType.UINT:
                        this.MaxLimit = UInt16.MaxValue;
                        break;
                    case SPUDataType.LONG:
                        this.MaxLimit = Int32.MaxValue;
                        break;
                    case SPUDataType.ULONG:
                        this.MaxLimit = UInt32.MaxValue;
                        break;
                    default:
                        break;
                }
            }
            /*
            DateTime tempDate;

            if (DateTime.TryParse(splitLine[8], out tempDate))
            {
                this.TimeLastSetSpu = tempDate;
            }
            else
            {
                DateTime.TryParse("1/1/1970 0:00 AM", out tempDate);
                this.TimeLastSetSpu = tempDate;
            }      
            */
            if ((splitLine.Length >= 9) && (splitLine[8] != string.Empty))
            {
                this.UserFunction = splitLine[8];
            }
            else
            {
                this.UserFunction = "SPU";
            }
        }

        public ConfigRecord()
        {
            this.Status = Status.NoChange;
        }

        [Required(ErrorMessage = "A name is required")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Modbus register is required")]
        [Range(0, UInt16.MaxValue, ErrorMessage = "Must be a valid modbus register")]
        public int Register { get; set; }

        [Required(ErrorMessage = "A description is required")]
        public string Description { get; set; }
        
        [Required(ErrorMessage = "A modus register value is required")]
#if false
        //Disable for not until we can set the range based on the value configured in the database
        [Range(0, UInt16.MaxValue, ErrorMessage = "Must be a valid modbus register value (0-65535 and no more than Max Limit)")]
#endif
        public Int64 Value { get; set; }

        public Int64 SpuValue { get; set; }

        [Required(ErrorMessage = "A minimum value is required")]
#if false
        //Disable for not until we can set the range based on the value configured in the database
        [Range(0, UInt16.MaxValue, ErrorMessage = "Must be a valid modbus register value (0-65535 and no more than Max Limit)")]
#endif
        public Int64 MinLimit { get; set; }

        [Required(ErrorMessage = "A maximum value is required")]
#if false
        //Disable for not until we can set the range based on the value configured in the database
        [Range(0, UInt16.MaxValue, ErrorMessage = "Must be a valid modbus register value (0-65535 and no more than Max Limit)")]
#endif
        public Int64 MaxLimit { get; set; }

        [Required(ErrorMessage = "A data type is required")]
        public SPUDataType Type { get; set; }

        public UiControl UiControl { get; set; }
        public DateTime TimeLastSetWeb { get; set; }
        public DateTime TimeLastSetSpu { get; set; }
        public Status Status { get; set; }

        /// <summary>
        /// The access level required to allow a user to edit the value
        /// </summary>
        public string UserFunction { get; set; }

        public SelectList PossibleValues { get; set; }

        /// <summary>
        /// Flag used to indicate if the user can edit the value
        /// </summary>
        public bool CanEdit { get; set; }
    }

    public class ClearEventLogModel
    {
        public ClearEventLogModel(string message)
        {
            this.Message = message;
        }

        public string Message { get; set; }

        public bool CanClear { get; set; }

        public ClearEventLogModel()
        {
            this.CanClear = false;
            this.Message = null;
        }
    }

    public enum UiControl : int
    {
        TextBox,
        ListBox
    }

    public enum SPUDataType : int
    {
        INT,
        UINT,
        LONG,
        ULONG
    }

    public enum Status : int
    {
        Success,
        Fail,
        NoChange
    }
}