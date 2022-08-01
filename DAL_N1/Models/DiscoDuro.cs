using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_N1.Models
{
    public class DiscoDuro
    {
        public int id_Disco { set; get; }
        public string TipoDisco { set; get; }
        public string conector { set; get; }
        public string Capacidad { set; get; }
        public int Id_Marca { set; get; }
    }
}
