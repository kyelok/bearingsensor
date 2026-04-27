/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Common;
using DataCollectionSDK;
using WebServiceObjects;
using System.Security.Cryptography;
using System.Xml;
using System.IO;

namespace UserManagement
{
    /// <summary>
    /// The user manager is responsible for managing the users database and 
    /// provides operations which enables high level functions to create, 
    /// update, delete (CRUD) and authenticate users.
    /// </summary>
    public sealed class UserManager
    {
        private DatabaseSDK database;

        private static readonly string UserGroupsXML = "UserGroups.xml";

        private Dictionary<string, int> userLevels = new Dictionary<string, int>();

        private Dictionary<string, int> functions = new Dictionary<string, int>();

        /// <summary>
        /// The path that the usergroups file can be located
        /// at.
        /// </summary>
        private string usergroupsPath;

        /// <summary>
        /// Constructor to initialise the UserManager using a database from a 
        /// specific location. If the database does not exist it is created.
        /// </summary>
        /// <param name="userManagerDB">The database file path</param>
        public UserManager(string userManagerDB)
        {
            usergroupsPath = Path.GetDirectoryName(userManagerDB) + @"\";
            database = new DatabaseSDK(userManagerDB, 5, 1000, 0);
            StringBuilder sqlStatement = new StringBuilder();

            // Load the user groups
            LoadUserGroups();

            // Create the tables if they do not exist
            sqlStatement.Append("CREATE TABLE IF NOT EXISTS users (");
            sqlStatement.Append("    username text primary key,"); // Username
            sqlStatement.Append("    password text,");             // Password
            sqlStatement.Append("    usergroup text,");                // Usergroups
            sqlStatement.Append("    authKey text,");              // Auth key
            sqlStatement.Append("    lastAuth integer,");           // Userlevel
            sqlStatement.Append("    timeout integer");           // Timeout
            sqlStatement.Append(");");

            sqlStatement.Append("CREATE TABLE IF NOT EXISTS reset (");
            sqlStatement.Append("    resetKey TEXT PRIMARY KEY"); // Reset key
            sqlStatement.Append(");");

            database.ExecuteSQLStatements(new String[] { sqlStatement.ToString() });

            // Create the users if the user manager is empty
            if (GetUsers().Count == 0)
            {
                CreateUser("AMOT", CalculateMD5Hash("amotxtsw22012"), "amot", 0);
                CreateUser("Admin", CalculateMD5Hash("xtsw2admin"), "admin", 60);
                CreateUser("Setup", CalculateMD5Hash("setupxts"), "setup", 60);
            }

            ChangePassword("AMOT", CalculateMD5Hash("amotxtsw22012"), true);
        }

        /// <summary>
        /// Creates a user with the defined attributes
        /// </summary>
        /// <param name="username">The username to create</param>
        /// <param name="md5Password">The password for the user</param>
        /// <param name="userLevel">The level the user is created at</param>
        public void CreateUser(string username, string md5Password, string userGroup, Int64 timeout)
        {
            if (userGroup != "amot" && username == "AMOT")
            {
                throw new UnauthorizedAccessException("Only one AMOT user allowed to exist in the system");
            }

            String sql = string.Format("INSERT INTO users (username, password, usergroup, timeout) VALUES (\"{0}\",\"{1}\",\"{2}\",{3});",
                username, md5Password, userGroup, timeout);
            database.ExecuteSQLStatements(new string[] { sql });
        }

        /// <summary>
        /// Changes a users password
        /// </summary>
        /// <param name="md5Password">The username to change the password</param>
        /// <param name="password">The password to change</param>
        public void ChangePassword(string username, string md5Password, bool updateAMOT = false)
        {
            if (updateAMOT == false)
            {
                if (username == "AMOT")
                {
                    throw new UnauthorizedAccessException("Unable to change AMOT password");
                }
            }

            String sql = string.Format("UPDATE users SET password=\"{1}\" WHERE username=\"{0}\";",
                username, md5Password);
            database.ExecuteSQLStatements(new string[] { sql });
        }

        /// <summary>
        /// Changes the level of the user
        /// </summary>
        /// <param name="username">The username</param>
        /// <param name="userLevel">The userlevel</param>
        public void ChangeUserGroup(string username, string group)
        {
            if (username == "AMOT")
            {
                throw new UnauthorizedAccessException("Unable to change AMOT usergroup");
            }
            String sql = string.Format("UPDATE users SET userGroup=\"{1}\" WHERE username=\"{0}\";",
                username, group);
            database.ExecuteSQLStatements(new string[] { sql });
        }

        /// <summary>
        /// Changes the user's timeout period
        /// </summary>
        /// <param name="username">The username</param>
        /// <param name="timeOut">The required timeout period</param>
        public void ChangeUserTimeOut(string username, long timeOut)
        {
            if (username == "AMOT")
            {
                throw new UnauthorizedAccessException("Unable to change AMOT usergroup");
            }
            String sql = string.Format("UPDATE users SET timeout={1} WHERE username=\"{0}\";",
                username, timeOut);
            database.ExecuteSQLStatements(new string[] { sql });
        }

        /// <summary>
        /// Deletes a user from the database
        /// </summary>
        /// <param name="username">The username to delete from the database</param>
        public void DeleteUser(string username)
        {
            if (username == "AMOT")
            {
                throw new UnauthorizedAccessException("Unable to delete AMOT user");
            }
            String sql = string.Format("DELETE FROM users WHERE username=\"{0}\";", username);
            database.ExecuteSQLStatements(new string[] { sql });
        }

        /// <summary>
        /// Logs in the user into the system and returns the authentication code required for other user operations
        /// </summary>
        /// <param name="username">The name of the user to login to the system</param>
        /// <param name="md5Password">The MD5 hash of the password</param>
        /// <param name="userGroup">Returns the group that the user belongs to</param>
        /// <returns>The authentication code used to authenticate the user</returns>
        public string Login(string username, string md5Password, out string userGroup)
        {
            string sql = string.Format("usergroup, authKey, lastAuth FROM users WHERE username=='{0}' AND password=='{1}';",
                username, md5Password);

            object authKey = null;
            object lastAuth = null;

            userGroup = null;

            using (DbConnection dbConnection = database.GetDbConnection())
            {
                using (DbDataReader dbReader = database.Select(dbConnection, sql))
                {
                    if (dbReader.Read() == false)
                    {
                        return null;
                    }

                    userGroup = dbReader.GetString(0);
                    authKey = dbReader.GetValue(1);
                    lastAuth = dbReader.GetValue(2);

                    //For now allow multiple setup user to be logged on
                    //We need to determine what should actually happend in this case.
#if false
                    if (userGroup == "setup")
                    {
                        authKey = null;
                        lastAuth = null;
                    }
#endif

                    if (authKey is System.DBNull || lastAuth is System.DBNull || authKey == null || lastAuth == null)
                    {
                        authKey = null;
                        lastAuth = null;
                    }
                    else
                    {
                        DateTime lastAuthDT = DatabaseSDK.ConvertFromUnixTimeStamp((long)lastAuth);
                        DateTime testTimeDT = DateTime.UtcNow.Subtract(new TimeSpan(1, 0, 0));

                        if (lastAuthDT < testTimeDT)
                        {
                            authKey = null;
                            lastAuth = null;
                        }
                    }

                    // If the last auth time was <60 minutes then return auth code
                    if (authKey == null || authKey is System.DBNull)
                    {
                        string authCode = CalculateMD5Hash(username + ":" + DateTime.UtcNow.ToUniversalTime());
                        authKey = Convert.ToBase64String(Encoding.UTF8.GetBytes(username + ":" + authCode));
                    }
                }

                using (DbTransaction dbTransaction = dbConnection.BeginTransaction())
                {
                    sql = string.Format("UPDATE users SET authKey='{0}', lastAuth={1} WHERE username=='{2}';",
                        authKey, DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks), username);

                    database.ExecuteNonQuery(dbConnection, sql);
                    dbTransaction.Commit();
                }
            }
            return (string)authKey;
        }

        /// <summary>
        /// Returns the username that matches the auth code
        /// </summary>
        /// <param name="authKey">The auth key</param>
        /// <returns>The users name</returns>
        public string GetUserNameFromAuth(string authKey)
        {
            string decrypted = Encoding.UTF8.GetString(Convert.FromBase64String(authKey));
            string[] parts = decrypted.Split(':');

            if (parts.Length == 2)
            {
                return parts[0];
            }
            return null;
        }

        /// <summary>
        /// Checks whether a user has access to a function
        /// </summary>
        /// <param name="authKey">The authentication key returned by login</param>
        /// <param name="function">The function to test whether the user has access</param>
        /// <returns>true the user has access, otherwise the user does not have access</returns>
        /// <exception cref="UnauthorizedAccessException">The authentication key is invalid</exception>
        public bool CheckFunction(string authKey, string function)
        {
            string decrypted = Encoding.UTF8.GetString(Convert.FromBase64String(authKey));
            string[] parts = decrypted.Split(':');

            string sql = string.Format("usergroup FROM users WHERE username=='{0}' AND authkey=='{1}';", parts[0], authKey);
            string userGroup;
            using (DbConnection dbConnection = database.GetDbConnection())
            {
                // Read the users information
                using (DbDataReader dbReader = database.Select(dbConnection, sql))
                {
                    if (dbReader.Read() == false)
                    {
                        throw new UnauthorizedAccessException("Invalid user key");
                    }
                    userGroup = dbReader.GetString(0);
                }

                // Update the user authentication timeout
                sql = string.Format("UPDATE users SET lastAuth={0} WHERE username=='{1}';",
                    DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks), parts[0]);
                database.ExecuteSQLStatements(new string[] { sql });
            }
            if (userGroup == "amot")
            {
                return true;
            }

            try
            {
                return functions[function] <= userLevels[userGroup];
            }
            catch (Exception)
            {
                return false;
            }
        }

        /// <summary>
        /// Returns a list of the users. This does not return password information
        /// </summary>
        /// <returns>List is users</returns>
        public List<User> GetUsers()
        {
            String sql = "username, usergroup, timeout FROM users ORDER BY username ASC;";
            List<User> usersList = new List<User>();
            using (DataTable userTable = database.SelectIntoDataTable(sql))
            {
                using (DbDataReader dbReader = userTable.CreateDataReader())
                {
                    while (dbReader.Read())
                    {
                        usersList.Add(new User { Username = dbReader.GetString(0), UserGroup = dbReader.GetString(1), Timeout = dbReader.GetInt64(2) });
                    }
                }
            }
            return usersList;
        }

        /// <summary>
        /// Returns a users details
        /// </summary>
        /// <param name="username">The username</param>
        /// <returns>The user</returns>
        public User GetUser(string username)
        {
            string sql = string.Format("usergroup, timeout from users where username=\"{0}\";", username);

            using (DbConnection dbConnection = database.GetDbConnection())
            {
                using (DbDataReader dbReader = database.Select(dbConnection, sql))
                {
                    if (dbReader.Read())
                    {
                        return new User { Username = username, UserGroup = dbReader.GetString(0), Timeout = dbReader.GetInt64(1) };
                    }
                }
            }
            return null;
        }

        /// <summary>
        /// Returns the number of users
        /// </summary>
        /// <returns>The number of users in the UserManager</returns>
        public int CountUsers()
        {
            string sql = "count(*) from users;";
            using (DbConnection dbConnection = database.GetDbConnection())
            {
                using (DbDataReader dbReader = database.Select(dbConnection, sql))
                {
                    if (dbReader.Read())
                    {
                        return (int)dbReader.GetInt64(0);
                    }
                }
            }

            return 0;
        }

        /// <summary>
        /// Returns the system reset code
        /// </summary>
        /// <returns>The system reset code</returns>
        public string GetUsersResetCode()
        {
            string encryptedKey = null;

            // Test if there is already a reset key present
            string sql = "resetkey from reset LIMIT 1;";

            using (DataTable resetTable = database.SelectIntoDataTable(sql))
            {
                if (resetTable.Rows.Count > 0)
                {
                    encryptedKey = Convert.ToString(resetTable.Rows[0][0]);
                }
            }

            // If the current key is not present then generate one
            if (encryptedKey == null)
            {
                Int64 resetKey = DatabaseSDK.ConvertToUnixTimestamp(DateTime.UtcNow.Ticks);
                encryptedKey = EncryptClientKey(resetKey);
                sql = string.Format("INSERT INTO reset (resetKey) VALUES (\"{0}\");", encryptedKey);
                database.ExecuteSQLStatements(new string[] { sql });
            }

            return encryptedKey;
        }

        /// <summary>
        /// Resets the passwords using a key given by AMOT
        /// </summary>
        /// <param name="resetCode">The reset key returned by AMOT</param>
        public void ResetUserPasswords(Int32 resetKey)
        {
            string encryptedKey = EncryptClientKey(resetKey);

            string sql = string.Format("resetkey from reset where resetkey=\"{0}\";", encryptedKey);

            using (DataTable resetTable = database.SelectIntoDataTable(sql))
            {
                if (resetTable.Rows.Count > 0)
                {
                    string updateSql = string.Format("UPDATE users SET password=\"{0}\" WHERE username!=\"AMOT\";", CalculateMD5Hash("password"));
                    string deleteSql = string.Format("DELETE FROM reset;");
                    database.ExecuteSQLStatements(new string[] { updateSql, deleteSql });
                }
                else
                {
                    throw new InvalidOperationException("Invalid AMOT reset key");
                }
            }
        }

        /// <summary>
        /// Calculates an MD5 hash as a string
        /// </summary>
        /// <param name="input">The string to hash</param>
        /// <returns>MD5 hash of the string</returns>
        public string CalculateMD5Hash(string input)
        {
            MD5 md5 = System.Security.Cryptography.MD5.Create();
            byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);
            byte[] hash = md5.ComputeHash(inputBytes);

            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < hash.Length; i++)
            {
                sb.Append(hash[i].ToString("X2"));
            }
            return sb.ToString();
        }

        private string EncryptClientKey(Int64 resetKey)
        {
            byte[] components = new byte[5];

            // Generate the basic key
            components[1] = (byte)((resetKey >> 24) ^ (byte)'A');
            components[2] = (byte)((resetKey >> 16) ^ (byte)'M');
            components[3] = (byte)((resetKey >> 8) ^ (byte)'O');
            components[4] = (byte)((resetKey >> 0) ^ (byte)'T');
            components[0] = (byte)(components[1] + components[2] + components[3] + components[4] + 0x80);

            // Encrypt the key
            components[1] = (byte)(components[0] ^ components[1]);
            components[2] = (byte)(components[1] ^ components[2]);
            components[3] = (byte)(components[2] ^ components[3]);
            components[4] = (byte)(components[3] ^ components[4]);

            // Create the string
            return string.Format("{0:X2}{1:X2}{2:X2}{3:X2}{4:X2}",
                components[0], components[1], components[2], components[3], components[4]);
        }

        /// <summary>
        /// Decrypts a client key
        /// </summary>
        /// <param name="key">The key to decrypt</param>
        /// <returns>The value of the key</returns>
        public static int DecryptClientKey(string key)
        {
            byte[] components = new byte[5];
            byte runningTotal = 0x80;
            int value = 0;

            if (key.Length != components.Length * 2)
            {
                throw new FormatException("Invalid format");
            }

            for (int i = 0; i < key.Length / 2; i++)
            {
                components[i] = Convert.ToByte(key.Substring(i * 2, 2), 16);
                runningTotal += components[i];
            }

            // Decrypt the key
            components[4] = (byte)(components[3] ^ components[4]);
            components[3] = (byte)(components[2] ^ components[3]);
            components[2] = (byte)(components[1] ^ components[2]);
            components[1] = (byte)(components[0] ^ components[1]);

            if ((byte)(components[1] + components[2] + components[3] + components[4] + 0x80) != components[0])
            {
                throw new FormatException("Invalid check sum");
            }

            components[1] = (byte)(components[1] ^ (byte)'A');
            components[2] = (byte)(components[2] ^ (byte)'M');
            components[3] = (byte)(components[3] ^ (byte)'O');
            components[4] = (byte)(components[4] ^ (byte)'T');

            value = (components[1] << 24) + (components[2] << 16) + (components[3] << 8) + (components[4] << 0);

            return value;
        }

        /// <summary>
        /// Loads in the user groups rights
        /// </summary>
        private void LoadUserGroups()
        {
            XmlReader xmlReader = null;

            if (File.Exists(usergroupsPath + UserGroupsXML))
            {
                try
                {
                    Stream fileInput = File.OpenRead(usergroupsPath + UserGroupsXML);
                    xmlReader = XmlReader.Create(fileInput);
                }
                catch (IOException)
                {
                    // Use the default
                }
            }

            if (xmlReader == null)
            {
                xmlReader = XmlReader.Create(new StringReader(UserManagement.Properties.Resources.UserGroups));
            }

            while (xmlReader.Read())
            {
                switch (xmlReader.NodeType)
                {
                    case XmlNodeType.Element:
                        if (xmlReader.Name.CompareTo("userGroups") == 0)
                        {
                            userLevels.Clear();
                            functions.Clear();

                            // Default levels
                            functions[UserFunctions.AckAlarms] = 0;
                            functions[UserFunctions.EngineLearning] = 1;
                            functions[UserFunctions.Surveying] = 1;
                            functions[UserFunctions.SensorReplacement] = 1;
                            functions[UserFunctions.SensorControl] = 1;
                            functions[UserFunctions.Diagnostics] = 1;
                            functions[UserFunctions.Users] = 1;
                        }
                        else if (xmlReader.Name.CompareTo("usertype") == 0)
                        {
                            userLevels[xmlReader.GetAttribute("name")] = Int32.Parse(xmlReader.GetAttribute("level"));
                        }
                        else if (xmlReader.Name.CompareTo("function") == 0)
                        {
                            functions[xmlReader.GetAttribute("name")] = Int32.Parse(xmlReader.GetAttribute("level"));
                        }
                        break;
                }
            }
        }

        /// <summary>
        /// Returns a dictionary of the users groups
        /// </summary>
        /// <returns>The users groups</returns>
        public UserGroups GetUserGroups()
        {
            UserGroups groups = new UserGroups();

            foreach (KeyValuePair<string, int> user in userLevels)
            {
                List<string> userRights = new List<string>();

                foreach (KeyValuePair<string, int> function in functions)
                {
                    if (function.Value <= user.Value)
                    {
                        userRights.Add(function.Key);
                    }
                }

                groups.Add(user.Key, userRights);
            }

            return groups;
        }

        public string[] Functions { get { return functions.Keys.ToArray(); } }
    }
}
