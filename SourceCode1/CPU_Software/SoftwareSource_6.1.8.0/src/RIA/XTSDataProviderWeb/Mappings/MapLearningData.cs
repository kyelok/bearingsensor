/* 
 * MapEngineData.cs
 * 
 * This file holds the method that is used to map the learn data from the web servce
 * to the correct XTS Data classes.
 * 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: GSmith, 29/03/2012
 */

using System;
using WebServiceObjects;

namespace XTS
{
    /// <summary>
    /// Class that is used to map engine learn data to the XTS classes
    /// </summary>
    public class MapLearningData
    {
        /// <summary>
        /// This method maps the EngineLearningStatus data from the web service into
        /// the XTSLearning class
        /// </summary>
        /// <param name="learnData">The XTSLearning object to map the data into.</param>
        /// <param name="data">The data to map.</param>
        static public void EngineLearningStatusToXTSData(XTSLearning learnData, XTSEngine engine, EngineLearningStatus data)
        {
            lock (learnData.SyncRoot)
            {
                learnData.CurrentState = MapEngineLearnStage(data.CalibrationStage);

                learnData.SpeedBand1Min = data.Speedbands[0];
                learnData.SpeedBand1Max = data.Speedbands[1];
                learnData.SpeedBand2Min = data.Speedbands[2];
                learnData.SpeedBand2Max = data.Speedbands[3];
                learnData.SpeedBand3Min = data.Speedbands[4];
                learnData.SpeedBand3Max = data.Speedbands[5];

                learnData.TimeRemaining = (uint)data.LearningLeft;
                if (data.SpeedInBand == 0)
                {
                    learnData.SpeedValid = true;
                }
                else
                {
                    learnData.SpeedValid = false;
                }

                learnData.SentVerificationData = (learnData.CurrentState == XTSLearning.LearningState.CompleteEnableVerification);
                learnData.Verified = data.HasVerificationDate;
            }
        }

        /// <summary>
        /// Maps the short read from the web service to a XTSLearning.LearnState
        /// </summary>
        /// <param name="stageFromWebservice">The short read from the web service</param>
        /// <returns>The XTSLearning.LearningState that short maps to.</returns>
        public static XTSLearning.LearningState MapEngineLearnStage(short stageFromWebservice)
        {
            XTSLearning.LearningState xtsStage;

            switch (stageFromWebservice)
            {
                case 0:
                    xtsStage = XTSLearning.LearningState.NotCal;
                    break;
                case 1:
                    xtsStage = XTSLearning.LearningState.Stage1Start;
                    break;
                case 2:
                    xtsStage = XTSLearning.LearningState.Stage1;
                    break;
                case 3:
                    xtsStage = XTSLearning.LearningState.Stage1Complete;
                    break;
                case 4:
                    xtsStage = XTSLearning.LearningState.Stage2;
                    break;
                case 5:
                    xtsStage = XTSLearning.LearningState.Stage2Complete;
                    break;
                case 6:
                    xtsStage = XTSLearning.LearningState.Stage3;
                    break;
                case 7:
                    xtsStage = XTSLearning.LearningState.Stage4;
                    break;
                case 8:
                    xtsStage = XTSLearning.LearningState.Stage5;
                    break;
                case 9:
                    xtsStage = XTSLearning.LearningState.Complete;
                    break;
                case 10:
                    xtsStage = XTSLearning.LearningState.CompleteEnableVerification;
                    break;
                case 11:
                    xtsStage = XTSLearning.LearningState.Abort;
                    break;
                case 12:
                    xtsStage = XTSLearning.LearningState.CylinderFiringOrder;
                    break;
                default:
                    xtsStage = XTSLearning.LearningState.Unknown;
                    break;
            }

            return xtsStage;
        }

        /// <summary>
        /// Displays a string in the message area describing the current engine learn stage
        /// </summary>
        /// <param name="general">Reference to the XTSGeneral Object</param>
        /// <param name="state">The engine learn stage</param>
        /// <param name="minutesRemaining">The minutes remaining for the stage</param>
        public static void SetLearningStateMessage(XTSGeneral general, XTSLearning.LearningState state, uint minutesRemaining)
        {
            TimeSpan timeRemaining = TimeSpan.FromMinutes(minutesRemaining);

            switch (state)
            {
                case XTSLearning.LearningState.NotCal:
                    general.SetMessageString("XTSStringStatusLearningNotCal");
                    break;
                case XTSLearning.LearningState.Stage1Start:
                    general.SetMessageString("XTSStringStatusLearningS1Start");
                    break;
                case XTSLearning.LearningState.Stage1:
                    general.SetMessageString("XTSStringStatusLearningS1", minutesRemaining);
                    break;
                case XTSLearning.LearningState.Stage1Complete:
                    general.SetMessageString("XTSStringStatusLearningS1Complete");
                    break;
                case XTSLearning.LearningState.Stage2:
                    general.SetMessageString("XTSStringStatusLearningS2", minutesRemaining);
                    break;
                case XTSLearning.LearningState.Stage2Complete:
                    general.SetMessageString("XTSStringStatusLearningS2Complete");
                    break;
                case XTSLearning.LearningState.Stage3:
                    general.SetMessageString("XTSStringStatusLearningS3", minutesRemaining);
                    break;
                case XTSLearning.LearningState.Stage4:
                    general.SetMessageString("XTSStringStatusLearningS4", (int)(timeRemaining.TotalHours), timeRemaining.Minutes);
                    break;
                case XTSLearning.LearningState.Stage5:
                    general.SetMessageString("XTSStringStatusLearningS5", (int)(timeRemaining.TotalHours), timeRemaining.Minutes);
                    break;
                case XTSLearning.LearningState.Complete:
                    general.SetMessageString("XTSStringStatusDefault");
                    break;
                case XTSLearning.LearningState.CompleteEnableVerification:
                    general.SetMessageString("XTSStringStatusDefault");
                    break;
                case XTSLearning.LearningState.Abort:
                    general.SetMessageString("XTSStringStatusLearningAbort");
                    break;
                case XTSLearning.LearningState.CylinderFiringOrder:
                    general.SetMessageString("XTSStringStatusLearningFiringOrder");
                    break;
                default:
                    general.SetMessageString("XTSStringStatusDefault");
                    break;
            }
        }
    }
}
