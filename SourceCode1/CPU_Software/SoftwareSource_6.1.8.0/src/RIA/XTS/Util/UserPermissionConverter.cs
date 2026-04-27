using System;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;
using System.Windows.Data;
using System.Collections.Generic;

namespace XTS.Util
{
    public class UserPermissionConverter: IValueConverter
    {

        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            bool isRequiredLevel = false; 

            MainPage mp = (MainPage) MainPage.GetInstance();
            XTSUser user = mp.XTSDataSource.UserData.CurrentUser;
            List<XTSGroup> userGroups = mp.XTSDataSource.UserData.GroupPermissions;

            if (user == null)
            {
                if (targetType == typeof(Visibility))
                {
                    return Visibility.Collapsed;
                }
                return false; 
            }

            foreach(XTSGroup group in userGroups)
            {
                if (group.GroupLevel == user.Permissions)
                {
                    foreach (string permission in group.GroupPermissions)
                    {
                        if (permission.Equals((string)parameter))
                        {
                            isRequiredLevel = true;
                            break; 
                        }
                    }
                }

                if (isRequiredLevel)
                {
                    break; 
                }
            }


            if (targetType == typeof(Visibility))
            {
                if (isRequiredLevel)
                {
                    return Visibility.Visible;
                }
                else
                {
                    return Visibility.Collapsed;
                }
            }

            return isRequiredLevel; 
        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
