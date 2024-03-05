using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DOGA.Models
{
    class Fuvar
    {
        public int id { get; set; }
        public DateTime indulas_idopontja { get; set; }
        public int utazas_idotartma { get; set; }
        public double megtett_tavolsag { get; set; }
        public double viteldij {
            get => viteldij / 300;
            set => viteldij = value;
        }
        public double borravalo {
            get => borravalo / 300;
            set => borravalo = value;
        }
        public string fizetes_modja { get; set; }


        public double BorravaloMertekeSzazalekban()
        {
            return Math.Round((borravalo / viteldij) * 100, 2);
        }
        
    }
}
