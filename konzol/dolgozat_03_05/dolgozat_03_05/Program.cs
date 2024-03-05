using dolgozat_03_05.Models;
using dolgozat_03_05.services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dolgozat_03_05
{
    class Program
    {
        static void Main(string[] args)
        {
            string utvonal = "http://localhost:3000/fuvarok";
            NetworkService ns = new NetworkService(utvonal);
            List<Fuvar> fuvarok = ns.GET();
            for (int i = 0; i < fuvarok.Count; i++)
            {
                Console.WriteLine(fuvarok[i].indulas_idopontja);
                Console.WriteLine(fuvarok[i].BorravaloMertekeSzazalekban() + "[borravaló]");
            }
            string valasz = ns.DELETE(new Fuvar()
            {
                id = fuvarok[0].id

            }); ; ;
            Console.WriteLine(valasz);
            Console.ReadKey();
        }
    }
}
