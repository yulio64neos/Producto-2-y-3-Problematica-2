using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades_N0
{
    public class CPU_Generico
    {
        public int id_CPU { get; set; }
        public int f_Tcpu { set; get; }
        public string Modelo { set; get; }
        public string Descripcion { set; get; }
        public int f_tipoRam { set; get; }
        public int id_Gabinete { set; get; }
    }
}
