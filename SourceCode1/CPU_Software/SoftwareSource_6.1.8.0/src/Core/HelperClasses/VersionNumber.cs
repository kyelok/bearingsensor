using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Globalization;

namespace HelperClasses
{
    /// <summary>
    /// This class holds a version number
    /// </summary>
    public class VersionNumber
    {
		/// <summary>
		/// The tile version number.
		/// </summary>
		private string version;

		/// <summary>
		/// Gets and Sets the VersionNumber number.
		/// </summary>
		public string Version
		{
			get
			{
                try
                {
                    return this.version;
                }
                catch (NullReferenceException)
                {
                    return "";
                }
			}

			set
			{
				this.version = value;
			}
		}

		/// <summary>
		/// Convert version number string into numeric suitable for comparison
		/// </summary>
		static private long VersionToNumeric(VersionNumber x)
		{
            long val;

            // "[v|V]xx.yy.zz" < "[v|V]yx.yy.yz"
            string[] numbers = x.Version.Split(".".ToCharArray());

            long tempParse;

            val = long.Parse(numbers[0],CultureInfo.CurrentCulture) << 32;

            if (numbers.Length > 1)
            {
                tempParse = long.Parse(numbers[1], CultureInfo.CurrentCulture);
                val += tempParse << 16;
            }

            if (numbers.Length > 2)
            {
                tempParse = long.Parse(numbers[2], CultureInfo.CurrentCulture);
                val += tempParse << 8;
            }

            if (numbers.Length > 3)
            {
                tempParse = long.Parse(numbers[3], CultureInfo.CurrentCulture);
                val += tempParse;
            }

            return val;
		}

		/// <summary>
		/// Is version x a lower version that y
		/// </summary>
		static public bool operator < (VersionNumber x, VersionNumber y)
		{
			return VersionToNumeric(x) < VersionToNumeric(y);
		}

		/// <summary>
		/// Is version x a higher version that y
		/// </summary>
		static public bool operator > (VersionNumber x, VersionNumber y)
		{
			// "[v|V]xx.xy.xz" > "[v|V]yx.yy.yz"
			return y > x;
		}

		/// <summary>
		/// Is version x a higher version that y
		/// </summary>
		static public bool operator >= (VersionNumber x, VersionNumber y)
		{
			// "[v|V]xx.xy.xz" >= "[v|V]yx.yy.yz"
			return VersionToNumeric(x) >= VersionToNumeric(y);
		}

		/// <summary>
		/// Is version x a higher version that y
		/// </summary>
		static public bool operator <= (VersionNumber x, VersionNumber y)
		{
			// "[v|V]xx.xy.xz" >= "[v|V]yx.yy.yz"
			return y >= x;
		}

		/// <summary>
		/// Checks if the object pass in is equal to this VersionNumber object
		/// </summary>
		/// <param name="o">the object to compare.</param>
		/// <returns>Returns true if object is equal to this VersionNumber</returns>
		override public bool Equals(object obj)
		{
			return(this == (VersionNumber)obj);
		}

		/// <summary>
		/// Returns the hash code of the VersionNumber object.
		/// </summary>
		/// <returns>The VersionNumber objects hashcode.</returns>
		override public int GetHashCode()
		{
			return base.GetHashCode();
		}

		/// <summary>
		/// Is version x equal to y
		/// </summary>
		static public bool operator == (VersionNumber x, VersionNumber y)
		{
			return x.Version.Equals(y.Version);
		}

		/// <summary>
		/// Is version x not equal to y
		/// </summary>
		static public bool operator != (VersionNumber x, VersionNumber y)
		{
			bool result = true;

            if (x.Version.Equals(y.Version))
            {
                result = false;
            }

			return result;
		}

		/// <summary>
		/// Constructs a VersionNumber number from a string.
		/// </summary>
		/// <param name="version"></param>
		public VersionNumber(string version)
		{
			if (version.Length > 0)
			{
				string regex=@"^.*?(?<versionNumber>\d+\.\d+\.\d+)$";
				Match m = Regex.Match(version, regex, RegexOptions.Compiled);
				if (m.Success)
				{
					this.version = m.Groups["versionNumber"].Value;
       			}
			}
			else
			{
				throw new ArgumentOutOfRangeException("version");
			}
		}
    }
}
