using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace taxisok.Models
{
    public class Fuvar
    {
        public int id { get; set; }
        public DateTime indulas_idopontja { get; set; }
        public int utazas_idotartama { get; set; }
        public double megtett_tavolsag { get; set; }
        public double viteldij { get; set; }
        public double borravalo { get; set; }
        public string fizetes_modja { get; set; }
    }
}

    
