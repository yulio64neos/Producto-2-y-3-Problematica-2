using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_N1.Models
{
    public class Tipo_CPU
    {
        public int id_Tcpu { set; get; } 
        public string Familia { set; get; }
        public string Velicidad { set; get; }
        public int id_modcpu { set; get; }
    }
}
