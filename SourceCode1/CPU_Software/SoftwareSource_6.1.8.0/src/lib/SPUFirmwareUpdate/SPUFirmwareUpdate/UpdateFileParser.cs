/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Modbus.Utility;

namespace SPUFirmwareUpdate
{
    /// <summary>
    /// Class to read in an update file and parse it to obtain
    /// data to be written to SPU.
    /// </summary>
    public class UpdateFileParser
    {
        //private const char STX = '\u0002';
        //public const char ETX = '\u0003';
        //private const String EXPECTED_HEADER = "[AMOT]\u0002";
        private readonly byte[] expectedHeader = System.Text.Encoding.ASCII.GetBytes("[AMOT]");
        private String updateFilePath;
        private List<byte> dataAsBytes;
        private ushort checksum = 0;

        /// <summary>
        /// Constructor requires path to file
        /// </summary>
        /// <param name="updateFilePath"></param>
        public UpdateFileParser(String updateFilePath)
        {
            this.updateFilePath = updateFilePath;
        }

        /// <summary>
        /// Get the data to be written to SPU from file. A validation is performed as
        /// part of this function
        /// </summary>
        /// <returns></returns>
        public ushort[] GetDataFromUpdateFile()
        {
            try
            {
                ReadInFile();
            }
            catch (IOException e)
            {
                throw new InvalidFirmwareFileException("Could not open update file", e);
            }

            ValidateFile();

            int index = 0;

            //Group data bytes into words
            ushort[] data = new ushort[(dataAsBytes.Count) / 2];

            if (1 == (dataAsBytes.Count % 2))
            {
                throw new InvalidFirmwareFileException("File does not contain an even number of bytes");
            }

            while (index < (dataAsBytes.Count - 1))
            {
                data[(index)/ 2] = (ushort)((dataAsBytes[index] << 8) + dataAsBytes[index + 1]);
                index += 2;
            }

            return data;
        }

        /// <summary>
        /// Read in data from update file
        /// </summary>
        private void ReadInFile()
        {
            using (BinaryReader binReader = new BinaryReader(File.Open(updateFilePath, FileMode.Open)))
            {
                long pos = 0;
                long dataStop = binReader.BaseStream.Length - 2;
                byte[] checksumAsBytes = new byte[2];
                List<byte> temp = new List<byte>();
                dataAsBytes = new List<byte>();

                //Read header from file
                while (pos < expectedHeader.Length)
                {
                    byte testByte = binReader.ReadByte();
                    
                    if (expectedHeader[pos] != testByte)
                    {
                        throw new InvalidFirmwareFileException("Expected AMOT header not present in update file");
                    }

                    pos++;
                }

                //Read data out of file
                while (pos < dataStop)
                {
                    dataAsBytes.Add(binReader.ReadByte());
                    pos++;
                }
                
                //Read checksum
                checksumAsBytes[0] = binReader.ReadByte();
                checksumAsBytes[1] = binReader.ReadByte();

                checksum = (ushort)((checksumAsBytes[0] << 8) + checksumAsBytes[1]);
            }
        }

        /// <summary>
        /// Calculate checksum and compare to that parsed from file. Throw exception if they do not macth
        /// </summary>
        private void ValidateFile()
        {
            ushort calculatedChecksum = 0;
            for (int i = 0; i < dataAsBytes.Count; i++)
            {
                calculatedChecksum = (ushort)((calculatedChecksum + dataAsBytes[i]) % 0x10000);
            }

            if (checksum != calculatedChecksum)
            {
                throw new InvalidFirmwareFileException("Checksum in file not valid");
            }
        }

        public int CountBlocks()
        {
            int count = 0;
            int index = 0;

            while (index < dataAsBytes.Count)
            {
                ushort size = (ushort)(dataAsBytes[index] + (dataAsBytes[index + 1] << 8));
                
                if (0x80 < size)
                {
                    throw new InvalidFirmwareFileException("Bad block size found");
                }

                //2 byte size + 4 byte address + (size number of words)
                index += (2 + 4 + (size * 2));
                count++;
            }

            if (index != dataAsBytes.Count)
            {
                throw new InvalidFirmwareFileException("Data does not conform to expected block format");
            }

            return count;
        }

#if false
        /// <summary>
        /// Parse information from file. This includes data and the expected checksum.
        /// </summary>
        private void ParseFile()
        {
            int count = 0;
            String line = null;

            dataAsBytes = new List<byte>();

            using (System.IO.StreamReader file = new System.IO.StreamReader(updateFileLocation))
            {

                try
                {
                    line = file.ReadLine();
                    count++;
                    if ((null == line) || (!line.StartsWith(EXPECTED_HEADER)))
                    {
                        throw new InvalidFirmwareFileException("Expected AMOT header not present in update file");
                    }

                    while ((line = file.ReadLine()) != null)
                    {
                        count++;
                        if (ETX == line.First())
                        {
                            break;
                        }

                        try
                        {
                            ParseDataLine(line);
                        }
                        catch (FormatException ex)
                        {
                            throw new InvalidFirmwareFileException("Error parsing line " + count + " of data file", ex);
                        }
                    }

                    if (null == line)
                    {
                        throw new InvalidFirmwareFileException("Checksum not found in update file");
                    }

                    ParseChecksumLine(line);

                    if (null != file.ReadLine())
                    {
                        throw new InvalidFirmwareFileException("Data found after checksum");
                    }
                }
                catch (InvalidFirmwareFileException e)
                {
                    //Now re-throw exception
                    throw;
                }
                finally
                {
                    file.Close();
                }
            }
        }

        /// <summary>
        /// Parse a data line of the update file. It is expected that the line comprises of bytes
        /// represented by pairs of hexadecimal characters separated by spaces.
        /// </summary>
        /// <param name="line"></param>
        private void ParseDataLine(String line)
        {
            String[] asciiBytes = line.Split(' ');
            
            foreach(String asciiByte in asciiBytes)
            {
                if(0 == asciiByte.Length)
                {
                    continue;
                }
                dataAsBytes.Add(Convert.ToByte(asciiByte, 16));
            }
        }

        /// <summary>
        /// Parse the checksum line of the update file
        /// </summary>
        /// <param name="line"></param>
        private void ParseChecksumLine(String line)
        {
            String[] asciiBytes = line.Split(' ');

            if (3 > asciiBytes.Length)
            {
                throw new InvalidFirmwareFileException("Failed to parse checksum line of firmware file");
            }

            try
            {
                checksum = (ushort)((Convert.ToByte(asciiBytes[1], 16) << 8) + Convert.ToByte(asciiBytes[2], 16));
            }
            catch (FormatException e)
            {
                throw new InvalidFirmwareFileException("Failed to parse checksum", e);
            }
        }
#endif
    }
}
