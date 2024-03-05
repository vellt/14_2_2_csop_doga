using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using taxisok.Models;

namespace taxisok.Services
{
    public class NetworkService
    {
        string url;
        public NetworkService(string url)
        {
            this.url = url;
        }

        public List<Fuvar> GET()
        {
            var request = WebRequest.Create(this.url);
            request.Method = "GET";
            var response = request.GetResponse();
            string json = new StreamReader(response.GetResponseStream()).ReadToEnd();
            return JsonConvert.DeserializeObject<List<Fuvar>>(json);
        }

        public string DELETE(Fuvar fuvar)
        {
            var request = WebRequest.Create(this.url);
            request.Method = "DELETE";
            request.ContentType = "application/json";

          
            var streamWriter = new StreamWriter(request.GetRequestStream());
            streamWriter.Write(JsonConvert.SerializeObject(new
            {
                id = fuvar.id,
            }));
            streamWriter.Close();

            var response = request.GetResponse();
            string uzenet = new StreamReader(response.GetResponseStream()).ReadToEnd();
            return uzenet;
        }

    }
}
