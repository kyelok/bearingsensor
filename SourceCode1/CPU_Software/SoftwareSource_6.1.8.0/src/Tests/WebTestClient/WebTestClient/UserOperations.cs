/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.IO;
using System.Runtime.Serialization.Json;
using WebServiceObjects;

namespace WebTestClient
{
    public static class UserOperations
    {
        public static ServerRequests ServerRequests = Program.ServerRequests;

        /// <summary>
        /// Tests for entry point /json/users/reset
        /// </summary>
        public static void PasswordReset(string key)
        {

            if (key == null)
            {
                String resetKey;
                resetKey = ServerRequests.GetPasswordResetCode();
                System.Console.WriteLine("Reset key response: {0}", resetKey);
            }
            else
            {
                try
                {
                    ServerRequests.ResetSystemPasswords(key);
                    System.Console.WriteLine("Reset success");
                }
                catch (Exception)
                {
                    System.Console.WriteLine("Reset failed");
                }
            }
        }

        /// <summary>
        /// Tests for entry point /json/users/list
        /// </summary>
        public static void ReadUsers()
        {
            User[] users = ServerRequests.GetUsersList();
            if (users != null)
            {
                foreach (User user in users)
                {
                    System.Console.WriteLine("Username: {0}, Group {1}", user.Username, user.UserGroup);
                }
            }
            else
            {
                System.Console.WriteLine("Failed to get users");
            }
        }

        /// <summary>
        /// Taken from the UserManager assembly. Contains information which should remain confidential.
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
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

        public static string Login(string username, string password)
        {
            return ServerRequests.Login(username, MD5Core.GetHashString(password));
        }
    }
}
