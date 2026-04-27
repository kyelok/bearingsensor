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
        /// Start engine learning
        /// </summary>
        [OperationContract]
        [WebInvoke(UriTemplate = "engine/learning/start", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        public Authorised EngineLearningStart()
        {
            Authorised userAuthorised = new Authorised();

            try
            {
                userAuthorised.UserAuthorised = AuthenticateUserPermissions(UserFunctions.EngineLearning);

                if (userAuthorised.UserAuthorised)
                {
                    engineManagement.EngineLearningStart(GetUserName());
                }
            }
            catch (Exception e)
            {
                log.Error(e.ToString());

                OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
            }

            return userAuthorised;
        }

        /// <summary>
        /// Stop engine learning
        /// </summary>
        [OperationContract]
        [WebInvoke(UriTemplate = "engine/learning/stop", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        public Authorised EngineLearningStop()
        {
            Authorised userAuthorised = new Authorised();

            try
            {
                userAuthorised.UserAuthorised = AuthenticateUserPermissions(UserFunctions.EngineLearning);

                if (userAuthorised.UserAuthorised)
                {
                    engineManagement.EngineLearningStop(GetUserName());
                }
            }
            catch (Exception e)
            {
                log.Error(e.ToString());

                OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
            }

            return userAuthorised;
        }

        /// <summary>
        /// Get engine learning status
        /// </summary>
        /// <returns>Engine learning status</returns>
        [OperationContract]
        [WebGet(UriTemplate = "engine/learning", ResponseFormat = WebMessageFormat.Json)]
        public EngineLearningStatus GetEngineLearning()
        {
            string expireHeader = DateTime.UtcNow.AddSeconds(10).ToString();
            log.InfoFormat("Setting HTTP Expire Header to {0}", expireHeader);

            OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
            outResponse.Headers.Add("Expires", expireHeader);

            try
            {
                return engineManagement.GetEngineLearning();
            }
            catch (Exception e)
            {
                log.Error(e.ToString());

                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
                return null;
            }
        }

        [OperationContract]
        [WebInvoke(UriTemplate = "engine/learning/verification", ResponseFormat = WebMessageFormat.Json, RequestFormat = WebMessageFormat.Json)]
        public Authorised EnterLearningVerificationCode(string verification)
        {
            Authorised userAuthorised = new Authorised();
            try
            {
                userAuthorised.UserAuthorised = AuthenticateUserPermissions(UserFunctions.EngineLearning);

                if (userAuthorised.UserAuthorised)
                {
                    userAuthorised.Success = engineManagement.EnterLearningVerificationCode(verification);
                }
            }
            catch (Exception e)
            {
                log.Error(e.ToString());

                OutgoingWebResponseContext outResponse = WebOperationContext.Current.OutgoingResponse;
                outResponse.StatusCode = System.Net.HttpStatusCode.InternalServerError;
            }
            return userAuthorised;
        }
    }
}
