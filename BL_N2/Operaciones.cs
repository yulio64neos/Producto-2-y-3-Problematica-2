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

        public DataTable UbicacionPC_Monitor(string adapt)
        {
            return obj.ConsultaUbicacion_PCMonitor(adapt);
=======
           return obj.ConsultaPC_NumInvent(numInv);
>>>>>>> Sebastian
        }//Fin del método

        public DataTable PCLaboPredeterminado()
        {
            return obj.PCLPredeterminado();
        }//Fin del método

        public DataTable LaboratorioPCSSD()
        {
            return obj.LABOSSD();
        }//Fin del método

        public DataTable PC_Actualizacion(string numInv)
        {
            return obj.ActualizarPC(numInv);
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

        public string[] DevuelveTipoConectorMonitor()
        {
            string[] resp;
            List<monitor> cpf = obj.GetListaTipoConectorMonitor();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].conectores;
            }
            return resp;
        }//Fin del método

        public void InsertMarca(string Marca)
        {
            obj.InsertarMarca(Marca);
        }//Fin del método


        public string[] Devuelvelaboratorio()
        {
            string[] resp;
            List<laboratorio> cpf = obj.GetListaLab();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].nombre_laboratorio;
            }
            return resp;
        }//Fin del método

        public string[] DevuelveTiRAM()
        {
            string[] resp;
            List<TipoRAM> cpf = obj.GetListaTiRAM();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].Tipo;
            }
            return resp;
        }//Fin del método

        public string ActModCPU(string indi,string cMod, string cMar)
        {
            string msj = "";
            try
            {
                obj.ACT_MODCPU(indi, cMod, cMar);
                msj = "Los Cambios se han echo Correctamente";
            }
            catch(Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;            
        }//Fin del método

        public string ActTcCPU(string indi, string ind2, string cFam, string cVel, string mMod)
        {
            string msj = "";
            try
            {
                obj.ACT_TCPU(indi,ind2,cFam,cVel,mMod);
                msj = "Los Cambios se han echo Correctamente";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string ActGabi(string indi,string indi2, string cMod, string mFor, string cMar)
        {
            string msj = "";
            try
            {
                obj.ACT_GABI(indi,indi2,cMod,mFor,cMar);
                msj = "Los Cambios se han echo Correctamente";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string ActRam(string indi, string indi2, string mCap, string mVel, string Tr)
        {
            string msj = "";
            try
            {
                obj.ACT_RAM(indi, indi2,mCap,mVel,Tr);
                msj = "Los Cambios se han echo Correctamente";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string ActMoni(string indi, string ind2, string mCone, string mTam, string mMar)
        {
            string msj = "";
            try
            {
                obj.ACT_MONI(indi, ind2,mCone,mTam,mMar);
                msj = "Los Cambios se han echo Correctamente";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string ActTec(string indi, string indi2, string mCone, string cMar)
        {
            string msj = "";
            try
            {
                obj.ACT_TECL(indi, indi2, mCone,cMar);
                msj = "Los Cambios se han echo Correctamente";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string ActMous(string indi, string ind2, string cCone, string cMar)
        {
            string msj = "";
            try
            {
                obj.ACT_MOUS(indi, ind2, cCone, cMar);
                msj = "Los Cambios se han echo Correctamente";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string ActUbica(string indi, string caLA)
        {
            string msj = "";
            try
            {
                obj.ACT_UBI(indi, caLA);
                msj = "Los Cambios se han echo Correctamente";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método
    }//Fin de la clase
}