using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using taxisok.Services;
using taxisok.Models;

namespace taxisok
{
    class Program
    {
        static void Main(string[] args)
        {
            string url = "http://localhost:3000/fuvarok";
            NetworkService networkService = new NetworkService(url);

           
            List<Fuvar> fuvarok = networkService.GET();
            Console.WriteLine();

            for (int i = 0; i < fuvarok.Count; i++)
            {
                Console.WriteLine(fuvarok[i].indulas_idopontja);
            }
            Console.WriteLine(networkService.DELETE(fuvarok[0]));

     

            Console.ReadKey();
        }
    }
}
