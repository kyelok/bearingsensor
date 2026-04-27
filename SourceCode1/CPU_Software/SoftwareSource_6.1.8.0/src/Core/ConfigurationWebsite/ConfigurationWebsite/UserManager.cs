/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Common;
using DatabaseConnector;
using DataCollectionSDK;
using WebServiceObjects;
using System.Security.Cryptography;

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

        /// <summary>
        /// Constructor to initialise the UserManager using a database from a 
        /// specific location. If the database does not exist it is created.
        /// </summary>
        /// <param name="userManagerDB">The database file path</param>
        public UserManager(string userManagerDB)
        {
            database = new DatabaseSDK(userManagerDB, 5, 1000, 0);
            StringBuilder sqlStatement = new StringBuilder();
            
            sqlStatement.Append("CREATE TABLE IF NOT EXISTS users (");
            sqlStatement.Append("    username text primary key,"); // Username
            sqlStatement.Append("    password text,");             // Password
            sqlStatement.Append("    userlevel integer");          // Userlevel
            sqlStatement.Append(");");

            sqlStatement.Append("CREATE TABLE IF NOT EXISTS reset (");
            sqlStatement.Append("    resetKey TEXT PRIMARY KEY"); // Reset key
            sqlStatement.Append(");");

            database.ExecuteSQLStatements(new String[] { sqlStatement.ToString() });
        }

        /// <summary>
        /// Creates a user with the defined attributes
        /// </summary>
        /// <param name="username">The username to create</param>
        /// <param name="md5Password">The password for the user</param>
        /// <param name="userLevel">The level the user is created at</param>
        public void CreateUser(string username, string md5Password, UserLevel userLevel)
        {
            String sql = string.Format("INSERT INTO users (username, password, userlevel) VALUES (\"{0}\",\"{1}\",{2});",
                username, md5Password, (int)userLevel);
            database.ExecuteSQLStatements(new string[] { sql });
        }

        /// <summary>
        /// Changes a users password
        /// </summary>
        /// <param name="md5Password">The username to change the password</param>
        /// <param name="password">The password to change</param>
        public void ChangePassword(string username, string md5Password)
        {
            String sql = string.Format("UPDATE users SET password=\"{1}\" WHERE username=\"{0}\";",
                username, md5Password);
            database.ExecuteSQLStatements(new string[] { sql });
        }

        /// <summary>
        /// Changes the level of the user
        /// </summary>
        /// <param name="username">The username</param>
        /// <param name="userLevel">The userlevel</param>
        public void ChangeUserLevel(string username, UserLevel userLevel)
        {
            String sql = string.Format("UPDATE users SET userlevel=\"{1}\" WHERE username=\"{0}\";",
                username, (int)userLevel);
            database.ExecuteSQLStatements(new string[] { sql });
        }

        /// <summary>
        /// Authenticates a user against the database
        /// </summary>
        /// <param name="username">The username to authenticate</param>
        /// <param name="md5Password">MD5 hashed password</param>
        /// <returns>The user level which is authenticated with this user</returns>
        public UserLevel AuthenticateUser(string username, string md5Password)
        {
            string sql = string.Format("userlevel from users where username=\"{0}\" AND password=\"{1}\";", username, md5Password);

            using (DbConnection dbConnection = database.GetDbConnection())
            {
                using (DbDataReader dbReader = database.Select(dbConnection, sql))
                {
                    if (dbReader.Read())
                    {
                        return (UserLevel)dbReader.GetInt64(0);
                    }
                }
            }
            return UserLevel.Invalid;
        }

        /// <summary>
        /// Deletes a user from the database
        /// </summary>
        /// <param name="username">The username to delete from the database</param>
        public void DeleteUser(string username)
        {
            String sql = string.Format("DELETE FROM users WHERE username=\"{0}\";", username);
            database.ExecuteSQLStatements(new string[] { sql });
        }

        /// <summary>
        /// Returns a list of the users. This does not return password information
        /// </summary>
        /// <returns>List is users</returns>
        public List<User> GetUsers()
        {
            String sql = "username, userlevel FROM users ORDER BY username ASC;";
            List<User> usersList = new List<User>();
            using (DataTable userTable = database.SelectIntoDataTable(sql))
            {
                using (DbDataReader dbReader = userTable.CreateDataReader())
                {
                    while (dbReader.Read())
                    {
                        usersList.Add(new User { Username = dbReader.GetString(0), Level = (UserLevel)dbReader.GetInt64(1) });
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
            string sql = string.Format("userlevel from users where username=\"{0}\";", username);

            using (DbConnection dbConnection = database.GetDbConnection())
            {
                using (DbDataReader dbReader = database.Select(dbConnection, sql))
                {
                    if (dbReader.Read())
                    {
                        return new User { Username = username, Level = (UserLevel)dbReader.GetInt64(0) };
                    }
                }
            }
            return null;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
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
                int resetKey = DatabaseSDK.ConvertToUnixTimestamp(DateTime.Now.Ticks);
                encryptedKey = EncryptClientKey(resetKey);
                sql = string.Format("INSERT INTO reset (resetKey) VALUES (\"{0}\");", encryptedKey);
                database.ExecuteSQLStatements(new string[] { sql });
            }

            return encryptedKey;
        }
           
        /// <summary>
        /// 
        /// </summary>
        /// <param name="resetCode"></param>
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
        /// 
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
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

        private string EncryptClientKey(int resetKey)
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
    }
}
