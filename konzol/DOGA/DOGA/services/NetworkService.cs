using DOGA.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace DOGA.services
{
    
    class NetworkService
    {
        private string connection;

        public NetworkService(string connection)
        {
            this.connection= connection;
        }

        public List <Fuvar>GET()
        {
            var request = WebRequest.Create(connection);
            request.Method = "GET";
            var response = request.GetResponse();
            string json = new StreamReader(response.GetResponseStream()).ReadToEnd();
            return JsonConvert.DeserializeObject<List<Fuvar>>(json);
        }
        public string DELETE(Fuvar fuvar)
        {
            var request = WebRequest.Create(connection);
            request.Method = "DELETE";
            request.ContentType = "application/json";
            var streamWriter = new StreamWriter(request.GetRequestStream());
            streamWriter.Write(JsonConvert.SerializeObject(fuvar));
            streamWriter.Close();
            var response = request.GetResponse();
            string json = new StreamReader(response.GetResponseStream()).ReadToEnd();
            return json;
        }

    }
}
