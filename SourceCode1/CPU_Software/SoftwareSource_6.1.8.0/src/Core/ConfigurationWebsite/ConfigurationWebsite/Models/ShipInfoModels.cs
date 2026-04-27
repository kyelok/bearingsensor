using System.ComponentModel.DataAnnotations;

namespace ConfigurationWebsite.Models
{
    /// <summary>
    /// This class models the Ship info data.
    /// If the validation Regular Expressions are updated for for these fields please check that
    /// any corresponding updates are made in IOSystemSettings.cs
    /// </summary>
    public class ShipInfo
    {
        [Required]
        [MaxLength(55)]
        [RegularExpression(@"^[A-Za-z0-9-\+\.\s]+$", ErrorMessage = "Please only use letters or numbers")]
        public string VesselName { get; set; }
        [RegularExpression(@"^\d{7}$", ErrorMessage = "Please enter a 7 digit IMO number")]
        public string ImoNo { get; set; }
        [RegularExpression(@"^[A-Za-z0-9-\+\.\s]+$", ErrorMessage = "Please only use letters or numbers")]
        public string ClassificationSociety { get; set; }
        [RegularExpression(@"^[A-Za-z0-9-\+\.\s]+$", ErrorMessage = "Please only use letters or numbers")]
        public string ClassRegisterNo { get; set; }
        [RegularExpression(@"^[A-Za-z0-9-\+\.\s]+$", ErrorMessage = "Please only use letters or numbers")]
        public string Component { get; set; }
        [RegularExpression(@"^[A-Za-z0-9-\+\.\s]+$", ErrorMessage = "Please only use letters or numbers")]
        public string EngineLicenser { get; set; }
        [RegularExpression(@"^[A-Za-z0-9-\+\.\s]+$", ErrorMessage = "Please only use letters or numbers")]
        public string EngineMaker { get; set; }
        [RegularExpression(@"^[A-Za-z0-9-\+\.\s]+$", ErrorMessage = "Please only use letters or numbers")]
        public string EngineType { get; set; }
        [RegularExpression(@"^[A-Za-z0-9-\+\.\s]+$", ErrorMessage = "Please only use letters or numbers")]
        public string EngineSerialNumber { get; set; }
        [RegularExpression(@"^[A-Za-z0-9-]+$", ErrorMessage = "Please only use letters or numbers")]
        public string SerialNumber { get; set; }       
        public bool CanSave { get; set; }

        public ShipInfo()
        {
            this.CanSave = false;
        }
    }

}