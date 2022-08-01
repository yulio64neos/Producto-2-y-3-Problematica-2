using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_N1.Models
{
    public class Gabinete
    {
        public int id_Gabinete { get; set; }
        public string Modelo { get; set; }
        public string TipoForma { set; get; }
        public int id_Marca { set; get; }
    }
}
