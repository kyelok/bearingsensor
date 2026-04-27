using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Web.Mvc;
using System.Web.Security;
using WebServiceObjects;


namespace ConfigurationWebsite.Models
{
    public class LogOnModel
    {
        [Required]
        [Display(Name = "User Name")]
        public string UserName { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string Password { get; set; }

        [Display(Name = "Remember me?")]
        public bool RememberMe { get; set; }
    }

    public class UserDetailsModel
    {
        [Required]
        public string UserName { get; set; }

        [Required(ErrorMessage = "A password is required")]
        public string NewPassword { get; set; }

        [Compare("NewPassword", ErrorMessage = "Passwords must match")]
        public string NewPasswordCheck { get; set; }

        [Required]
        public string UserGroup { get; set; }

        [Required]
        [Range(0, 600)]
        public long TimeOut { get; set; }

        public UserGroups UserGroupTypes { get; set; }
    }

    public class UserList
    {
        public String ErrorMessage { get; set; }

        public List<User> Users { get; set; }

        public string CurrentUser { get; set; }

        public bool CanAdd { get; set; }
        public bool CanDelete { get; set; }

        public UserList()
        {
            this.CanAdd = false;
            this.CanDelete = false;
        }
    }
}
