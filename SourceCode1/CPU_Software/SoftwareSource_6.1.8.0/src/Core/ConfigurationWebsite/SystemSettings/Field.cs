using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;

namespace SystemSettings
{
    public class Field
    {
        public Field(string name, Type type, string validationRegEx)
        {
            this.Name = name;
            this.Type = type;
            this.validationRegEx = validationRegEx;
        }

        public Field(string name, Type type)
        {
            this.Name = name;
            this.Type = type;
            this.validationRegEx = string.Empty;
        }

        public string Name { get; set; }
        public Type Type { get; set; }

        private string validationRegEx;

        /// <summary>
        /// Checks that the value passed in
        /// conforms to any validation checks defined
        /// for this field.
        /// </summary>
        /// <param name="value">The value to validate</param>
        /// <returns>True if the value if valid, otherwise false.</returns>
        public bool Valid(string value)
        {
            bool valid = true;

            if (validationRegEx != string.Empty)
            {
                valid = Regex.IsMatch(value, validationRegEx);
            }

            return valid;
        }

        public static bool ListContains(Field[] list, string name)
        {
            foreach (Field field in list)
            {
                if (field.Name == name)
                {
                    return true;
                }
            }
            return false;
        }
    }



    
}
