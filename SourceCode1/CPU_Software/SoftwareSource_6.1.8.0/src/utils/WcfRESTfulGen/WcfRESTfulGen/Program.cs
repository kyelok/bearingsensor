using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using Newtonsoft.Json.Schema;

namespace WcfRESTfulGen
{
    /// <summary>
    /// These is a simple program that will generate the code to access
    /// a RESTful WCF service.  It uses reflection to reflect WCF Service Contract and
    /// creates proxy classes for the Contract.
    /// </summary>
    class Program
    {
        static void Main(string[] args)
        {
            //Open the assembly that is passed as args[0]

            //Extract the class that have a [ServiceContract]
            if (args.Length > 0)
            {
                Assembly assemblyToSearch = Assembly.LoadFrom(args[0]);

                System.Reflection.Module[] mods = assemblyToSearch.GetModules();

                foreach (Module m in mods)
                {
                    foreach (Type t in m.GetTypes())
                    {
                        //if (t.IsInterface)
                        {
                            MethodInfo[] methods = t.GetMethods();
                            //Found an interface
                            //Lets extract the attributes from it.
                            foreach (MethodInfo method in methods)
                            {
                                object[] attributes = method.GetCustomAttributes(true);
                                ParameterInfo[] parameters = method.GetParameters();

                                foreach (object attribute in attributes)
                                {
                                    JsonSchemaGenerator generator = new JsonSchemaGenerator();
                                    JsonSchema schema = generator.Generate(method.ReturnType);
                                    

                                    if (attribute is System.ServiceModel.Web.WebGetAttribute)
                                    {
                                        //Method has a WebGet attribute
                                        System.ServiceModel.Web.WebGetAttribute webGet = (System.ServiceModel.Web.WebGetAttribute)attribute;
                                        CreateDesignDoc("GET",webGet.UriTemplate.ToString(), method.ReturnType.Name, parameters);
                                        
                                        Console.WriteLine(schema.ToString());
                                        Console.WriteLine();
                                    }
                                    else if (attribute is System.ServiceModel.Web.WebInvokeAttribute)
                                    {
                                        //Method has a WebInvoke attribute
                                        System.ServiceModel.Web.WebInvokeAttribute webInvoke = (System.ServiceModel.Web.WebInvokeAttribute)attribute;
                                        CreateDesignDoc("POST", webInvoke.UriTemplate.ToString(), method.ReturnType.Name, parameters);
                                        
                                        Console.WriteLine(schema.ToString());
                                        Console.WriteLine();
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        static void CreateDesignDoc(string httpOperation, string uri, string returnType, ParameterInfo[] parameters)
        {
            string methodParams = string.Empty;
            List<string> pNames = new List<string>();
            List<string> pPos = new List<string>();

            Console.WriteLine("{0} {1}",  httpOperation, uri);
            Console.WriteLine("Parameters:");

            for (int i = 0; i < parameters.Length; i++)
            {
                Console.WriteLine("\t{0}\t{1}",parameters[i].ParameterType.FullName,parameters[i].Name);
            }

            Console.WriteLine("Returns:");
            Console.WriteLine("\t{0}",returnType);
            Console.WriteLine();

        }

        static void CreateGetAsyncProxy(string methodName, string uri, string objectType, ParameterInfo[] parameters)
        {
            string methodParams = string.Empty;
            UriTemplate template = new UriTemplate(uri);
            List<string> pNames = new List<string>();
            List<string> pPos = new List<string>();

            for (int i = 0; i < parameters.Length;i++)
            {
                pPos.Add("{" + i.ToString() + "}");
                pNames.Add(parameters[i].Name);
                methodParams += parameters[i].ToString() + " " + parameters[i].Name + ", ";
            }

            Uri boundUri = template.BindByPosition(new Uri("http://localhost/"), pPos.ToArray());

            methodParams += "JsonWebClient.WebServiceObjectsCallback callback, JsonWebClient.WebServiceObjectsErrorCallback errorCallback";

            Console.Write("public void ");
            Console.Write(methodName);
            Console.WriteLine("(" + methodParams + ")");
            Console.WriteLine("{");

            Console.Write("\tstring restURL = string.Format(\""+  Uri.UnescapeDataString(boundUri.PathAndQuery) +"\"");
            string ps = ", ";
            foreach (string s in pNames)
            {
                ps += s + ", ";
            }
            ps = ps.TrimEnd(new char[] { ',',' ' });
            Console.WriteLine(ps + ");");
            Console.WriteLine("\tstring fullURL = string.Format(\"{0}{1}\", JsonAddress, restURL);");

            Console.Write("\tJsonWebClient.ReadJsonDataObjects(fullURL,typeof(");
            Console.Write(objectType);
            Console.WriteLine("), callback, errorCallback);");
            Console.WriteLine("}");

            /// <summary>
            /// Asynchronous version of GetUsersList
            /// </summary>
            /// <param name="callback">The function to call when data is received and processed</param>
            //public void GetUsersList(JsonWebClient.WebServiceObjectsCallback callback, JsonWebClient.WebServiceObjectsErrorCallback errorCallback)
            //{
            //    JsonWebClient.ReadJsonDataObjects(JsonAddress + ListUsersURL, typeof(WebServiceObjects.User[]), callback, errorCallback);
            //}
        }

        static void CreatePostAsyncProxy(string methodName, string uri, string returnType, ParameterInfo[] parameters)
        {
            string methodParams = string.Empty;
            ParameterInfo p = null;

            if (parameters.Length == 1)
            {
                p = parameters[0];
                methodParams += p.ParameterType.ToString() + " " + p.Name + ", ";
            }
            else
            {
                Console.WriteLine("//TODO This method needs coding by hand");
            }

            methodParams += "JsonWebClient.WebServiceObjectsCallback callback, JsonWebClient.WebServiceObjectsErrorCallback errorCallback";

            Console.Write("public void ");
            Console.Write(methodName);
            Console.WriteLine("(" + methodParams + ")");
            Console.WriteLine("{");

            Console.Write("\tstring restURL = \"");
            Console.WriteLine(uri + "\";");
            Console.WriteLine("\tstring fullURL = string.Format(\"{0}{1}\", JsonAddress, restURL);");

            Console.Write("\tJsonWebClient.WriteJsonDataObjects(fullURL,");
            if (p != null)
            {
                Console.Write(p.Name);
            }
            else
            {
                Console.Write("null");
            }
            Console.Write(",typeof(");
            if (p != null)
            {
                Console.Write(p.ParameterType.ToString());
            }
            else
            {
                   Console.Write("null");
            }
            Console.Write("), typeof(" + returnType + ")");
            Console.WriteLine(", callback, errorCallback);");
            Console.WriteLine("}");

        /// <summary>
        /// Set sensor mode
        /// </summary>
        /// <param name="mode">Mode to set</param>
        /// <returns>true if success otherwise false</returns>
        //public void SetSensorMode(SensorDCMode mode, JsonWebClient.WebServiceObjectsCallback callback, JsonWebClient.WebServiceObjectsErrorCallback errorCallback)
        //{
          //  JsonWebClient.WriteJsonDataObjects(JsonAddress + SensorModeURL, mode, typeof(Int16), typeof(Boolean), callback, errorCallback);
       // }
        }
    }
}
