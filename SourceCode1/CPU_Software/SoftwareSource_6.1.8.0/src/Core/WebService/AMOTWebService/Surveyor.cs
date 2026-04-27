/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 */
using System;
using System.Globalization;
using System.IO;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using WebServiceObjects;
using UserManagement;

namespace WebService
{
    public partial class WebService
    {
        /// <summary>
        /// Start surveyor test
        /// </summary>
        [OperationContract]
        [WebInvoke(UriTemplate = "engine/surveyor/start", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        public Authorised SurveyorTestStart()
        {
            Authorised userAuthorised = new Authorised();

            try
            {
                userAuthorised.UserAuthorised = AuthenticateUserPermissions(UserFunctions.Surveying);

                if (userAuthorised.UserAuthorised)
                {
                    engineManagement.SurveyorTestStart(GetUserName());
                    userAuthorised.Success = true;
                }
            }
            catch (Exception e)
            {
                log.Error(e.ToString());
                userAuthorised.Success = false;
            }

            return userAuthorised;
        }

        /// <summary>
        /// Peek at the current status of the Surveyor Test
        /// </summary>
        /// <param name="AlarmLevel">Alarm Level</param>
        /// <param name="SlowDownLevel">Slow down Level</param>
        [OperationContract]
        [WebGet(UriTemplate = "engine/surveyor/peek?" +
            "ALevel={AlarmLevel}&" +
            "SLevel={SlowDownLevel}", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        public SensorSurveyPeek SurveyorTestPeek(string AlarmLevel, string SlowDownLevel)
        {

            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;

            outResponse.Headers.Add("Cache-Control", "no-cache");
            outResponse.Headers.Add("Pragma", "no-cache");

            try
            {
                return engineManagement.SurveyorTestPeek(
                    ushort.Parse(AlarmLevel),
                    ushort.Parse(SlowDownLevel));
            }
            catch (Exception e)
            {
                log.Error(e.ToString());
                outResponse = WebOperationContext.Current.OutgoingResponse;
                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
                return null;
            }
        }

        /// <summary>
        /// Stop surveyor test
        /// </summary>
        [OperationContract]
        [WebInvoke(UriTemplate = "engine/surveyor/stop", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        public Authorised SurveyorTestStop()
        {
            Authorised userAuthorised = new Authorised();

            try
            {
                userAuthorised.UserAuthorised = AuthenticateUserPermissions(UserFunctions.Surveying);

                if (userAuthorised.UserAuthorised)
                {
                    engineManagement.SurveyorTestStop(GetUserName());
                    userAuthorised.Success = true;
                }
            }
            catch (Exception e)
            {
                log.Error(e.ToString());
                OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
                userAuthorised.Success = false;
            }

            return userAuthorised;
        }
    }
}
