using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PasswordResetResponse
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                if (args.Length >= 1)
                {
                    int key = DecryptClientKey(args[0]);
                    Console.WriteLine("Reset Code: {0:X}", key);
                }
            }
            catch (FormatException e)
            {
                Console.WriteLine("The provided key is invalid: {0}", e.Message);
            }
            catch (Exception e)
            {
                Console.WriteLine("Error in application: {0}", e.Message);
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
    }
}
