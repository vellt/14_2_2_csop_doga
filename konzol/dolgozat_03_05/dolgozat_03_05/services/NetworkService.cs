using dolgozat_03_05.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace dolgozat_03_05.services
{
    class NetworkService
    {
        private string utvonal;
        public NetworkService(string utvonal)
        {
            this.utvonal = utvonal;
        }

        public List<Fuvar> GET()
        {
            var request = WebRequest.Create(utvonal);
            request.Method = "GET";
            var response = request.GetResponse();
            string json = new StreamReader(response.GetResponseStream()).ReadToEnd();
            return JsonConvert.DeserializeObject<List<Fuvar>>(json);
        }

        public string DELETE(Fuvar fuvar)
        {
            var request = WebRequest.Create(utvonal);
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
