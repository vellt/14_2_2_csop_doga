using DOGA.services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DOGA
{
    class Program
    {
        static void Main(string[] args)
        {
            string connection = "http://localhost:3000/fuvarok";
            NetworkService ns = new NetworkService(connection);
            
        }
    }
}
