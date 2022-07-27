using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL_N1;
using System.Data;
using Entidades_N0;

namespace BL_N2
{
    public class Operaciones
    {
        DatosL obj = new DatosL();

        public string ConexionSQL()
        {
            return obj.RevisarConexion();
        }//Fin del método

        public DataTable ObtenerMarcas()
        {
            return obj.ConsultarMarca();
        }//Fin del método

        public DataTable ObtenerCompo()
        {
            return obj.ConsultarComponente();
        }//Fin del método

        public DataTable getCompoMarca()
        {
            return obj.ConsultMarcaCompo();
        }//Fin del método

        public DataTable getDisco()
        {
            return obj.ConsultDisco();
        }//Fin del método

        public DataTable getMonitor()
        {
            return obj.ConsultMonitor();
        }//Fin del método

        public DataTable getTeclado()
        {
            return obj.ConsultTeclado();
        }//Fin del método

        public DataTable getMouse()
        {
            return obj.ConsultMouse();
        }//Fin del método

        public DataTable getGabinete()
        {
            return obj.ConsultGabinete();
        }//Fin del método

        public DataTable getCPU()
        {
            return obj.ConsultCPU();
        }//Fin del método

        public DataTable Lista_PCFINAL(string numInv)
        {
           return obj.ConsultaPC_NumInvent(numInv);
        }//Fin del método

        public DataTable PCLaboPredeterminado()
        {
            return obj.PCLPredeterminado();
        }//Fin del método

        public DataTable LaboratorioPCSSD()
        {
            return obj.LABOSSD();
        }//Fin del método

        public string[] DevuelveNumInv()
        {
            string[] resp;
            List<computadorafinal> cpf = obj.GetListaInventario();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].num_inv;
            }
            return resp;
        }//Fin del método

        public void InsertMarca(string Marca)
        {
            obj.InsertarMarca(Marca);
        }//Fin del método


    }//Fin de la clase
}