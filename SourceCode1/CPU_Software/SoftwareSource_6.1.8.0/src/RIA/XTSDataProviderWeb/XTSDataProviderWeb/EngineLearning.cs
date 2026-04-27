/* 
 * Copyright (C) MPC Data Limited 2012. All rights reserved.
 * 
 * Originator: Christopher Peerman, 12/04/2012
 */

using System;
using System.Threading;
using System.Collections.Generic;
using System.Net;
using WebServiceObjects;

namespace XTS
{
    public partial class XTSDataProviderWeb
    {
        /// <summary>
        /// System learning procedure
        /// </summary>
        public XTSLearning Learning
        {
            get
            {
                return this.learning;
            }
        }
        XTSLearning learning;

        /// <summary>
        /// Detects the cylinder firing order
        /// </summary>
        public void DetectCylinderFiringOrder()
        {
            this.serverRequests.StartFiringOrderCalibration(this.WebServiceObjectsVoidCallback, auth);
        }

        /// <summary>
        /// Starts the learning procedure
        /// </summary>
        public void StartLearningProcedure()
        {
            this.serverRequests.StartEngineLearning(this.ProcessEngineLearnStartResponse, auth);
        }

        /// <summary>
        /// Process engine learning start result
        /// </summary>
        /// <param name="data">The learning start result</param>
        public void ProcessEngineLearnStartResponse(IAsyncResult resultObject, object data)
        {
            if (data is Authorised)
            {
                ProcessAuthorisedResponse((Authorised)data);
            }
        }

        /// <summary>
        /// Process engine learning stop result
        /// </summary>
        /// <param name="data">The learning stop result</param>
        public void ProcessEngineLearnStopResponse(IAsyncResult resultObject, object data)
        {
            if (data is Authorised)
            {
                ProcessAuthorisedResponse((Authorised)data);
            }
        }

        /// <summary>
        /// Cancels the learning procedure if it is currently running
        /// </summary>
        public void CancelLearningProcedure()
        {
            this.serverRequests.StopEngineLearning(this.ProcessEngineLearnStopResponse, auth);
        }

        /// <summary>
        /// Allows user to feedback that AMOT have verified the learning data
        /// by entering a code generated at time of learning.
        /// </summary>
        /// <param name="code">The code entered by the user</param>
        /// <param name="callback">Callback to inform user that code is good/bad</param>
        public void EnterLearningVerificationCode(string code, XTSResultDelegate callback)
        {
            BusyOperation(true);
            this.serverRequests.EngineLearnVerification(code, this.EnterLearningVerificationCodeCallback, auth);
        }

        /// <summary>
        /// Callback from the call to EnterLearningVerificationCode
        /// </summary>
        /// <param name="result">Web async object</param>
        /// <param name="data">The data returned</param>
        private void EnterLearningVerificationCodeCallback(IAsyncResult result, object data)
        {
            BusyOperation(false);

            if (data is WebException)
            {
                WebServiceObjectsVoidCallback(result, data);
                return;
            }
            else if (data is Authorised)
            {
                Authorised authorisedResponse = (Authorised)data;
                if (ProcessAuthorisedResponse(authorisedResponse))
                {
                    if (authorisedResponse.Success == false)
                    {
                        OnError(XTSErrors.EngineLearnVefificationCodeIncorrect,null);
                    }
                    else
                    {
                        Learning.Verified = true;
                    }
                }
            }
        }
    }
}