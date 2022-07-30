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

        public string[] DevuelveDD()
        {
            string[] resp;
            List<DiscoDuro> cpf = obj.GetListaDD();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].TipoDisco;
            }
            return resp;
        }//Fin del método

        public void InsertMarca(string Marca)
        {
            obj.InsertarMarca(Marca);
        }//Fin del método
        /*----------------------------------------Marcas y sus componentes-----------------------------------------------------*/
        public string[] FilDD()
        {
            string[] resp;
            List<Marca> cpf = obj.GetFilDD();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].marca;
            }
            return resp;
        }//Fin del método

        public string[] FilMoni()
        {
            string[] resp;
            List<Marca> cpf = obj.GetFilMoni();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].marca;
            }
            return resp;
        }//Fin del método

        public string[] FilTecla()
        {
            string[] resp;
            List<Marca> cpf = obj.GetFilTecla();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].marca;
            }
            return resp;
        }//Fin del método

        public string[] FilMous()
        {
            string[] resp;
            List<Marca> cpf = obj.GetFilMous();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].marca;
            }
            return resp;
        }//Fin del método

        public string[] FilGab()
        {
            string[] resp;
            List<Marca> cpf = obj.GetFilGabi();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].marca;
            }
            return resp;
        }//Fin del método

        public string[] FilCPU()
        {
            string[] resp;
            List<Marca> cpf = obj.GetFilCPU();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].marca;
            }
            return resp;
        }//Fin del método

        /*----------------------------------------METODOS PARA LAS ACTUALIZACIONES---------------------------------------------*/
        public string[] DevuelveModeloCPU()
        {
            string[] resp;
            List<ModeloCPU> cpf = obj.GetListaMCP();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].modeloCPU;
            }
            return resp;
        }//Fin del método

        public string[] DevuelveModeloCPUG()
        {
            string[] resp;
            List<CPU_Generico> cpf = obj.GetListaMCPUG();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].Modelo;
            }
            return resp;
        }//Fin del método

        public string[] DevuelveFamilia()
        {
            string[] resp;
            List<Tipo_CPU> cpf = obj.GetListaFamCPU();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].Familia;
            }
            return resp;
        }//Fin del método

        public string[] DevuelveVelCPU()
        {
            string[] resp;
            List<Tipo_CPU> cpf = obj.GetListaVelCPU();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].Velicidad;
            }
            return resp;
        }//Fin del método

        public string[] DevuelveModGab()
        {
            string[] resp;
            List<Gabinete> cpf = obj.GetListaModGabi();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].Modelo;
            }
            return resp;
        }//Fin del método

        public string[] DevuelveTipGabinete()
        {
            string[] resp;
            List<Gabinete> cpf = obj.GetListaTipGabi();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].TipoForma;
            }
            return resp;
        }//Fin del método

        public int[] DevuelveCapRam()
        {
            int[] resp;
            List<RAM> cpf = obj.GetListaCapRAM();
            resp = new int[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].Capacidad;
            }
            return resp;
        }//Fin del método

        public string[] DevuelveVelRam()
        {
            string[] resp;
            List<RAM> cpf = obj.GetListaVelRAM();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].Velocidad;
            }
            return resp;
        }//Fin del método

        public string[] DevuelveConMon()
        {
            string[] resp;
            List<monitor> cpf = obj.GetListaConMoni();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].conectores;
            }
            return resp;
        }//Fin del método

        public string[] DevuelveTamMon()
        {
            string[] resp;
            List<monitor> cpf = obj.GetListaTamMoni();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].tamano;
            }
            return resp;
        }//Fin del método

        public string[] DevuelveConTec()
        {
            string[] resp;
            List<teclado> cpf = obj.GetListaConTec();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].conector;
            }
            return resp;
        }//Fin del método

        public string[] DevuelveConMus()
        {
            string[] resp;
            List<mouse> cpf = obj.GetListaConMou();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].conector;
            }
            return resp;
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

        public string ActModCPU(string indi, string cMod, string cMar)
        {
            string msj = "";
            try
            {
                obj.ACT_MODCPU(indi, cMod, cMar);
                msj = "Los Cambios se han echo Correctamente";
            }
            catch (Exception e)
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
                obj.ACT_TCPU(indi, ind2, cFam, cVel, mMod);
                msj = "Los Cambios se han echo Correctamente";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string ActGabi(string indi, string indi2, string cMod, string mFor, string cMar)
        {
            string msj = "";
            try
            {
                obj.ACT_GABI(indi, indi2, cMod, mFor, cMar);
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
                obj.ACT_RAM(indi, indi2, mCap, mVel, Tr);
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
                obj.ACT_MONI(indi, ind2, mCone, mTam, mMar);
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
                obj.ACT_TECL(indi, indi2, mCone, cMar);
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
        public string ActPCF(string indica, string MC, string MT, string MU, string CP, string LB, string TC,
            string numS, string des, string numI)
        {
            string msj = "";
            try
            {
                obj.ACT_PCFINAL(indica,MC,MT,MU,CP,LB,TC);
                obj.RG_ACT(numS, des, numI);
                msj = "Los Cambios se han echo Correctamente";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método
        /*-------------------------------------------------------METODOS DE AGREGADO------------------------------------------------*/
        public string InTIRAM(string tipo)
        {
            string msj = "";
            try
            {
                obj.AGR_TIRAM(tipo);
                msj = "EL REGISTRO FUE CORRECTO";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string InRAM(string A1, string A2, string A3)
        {
            string msj = "";
            try
            {
                obj.AGR_RAM(A1, A2, A3);
                msj = "EL REGISTRO FUE CORRECTO";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string InGABI(string a1, string a2, string a3)
        {
            string msj = "";
            try
            {
                obj.AGR_GABI(a1, a2, a3);
                msj = "EL REGISTRO FUE CORRECTO";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string InMOCPU(string a1, string a2)
        {
            string msj = "";
            try
            {
                obj.AGR_MOCPU(a1, a2);
                msj = "EL REGISTRO FUE CORRECTO";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string InTCPU(string a1, string a2, string a3)
        {
            string msj = "";
            try
            {
                obj.AGR_TCPU(a1, a2, a3);
                msj = "EL REGISTRO FUE CORRECTO";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método
        public string InCPUG(string a1, string a2, string a3, string a4, string a5, string a6, string a7)
        {
            string msj = "";
            try
            {
                obj.AGR_CPUG(a1,a2,a3,a4,a5,a6,a7);
                msj = "EL REGISTRO FUE CORRECTO";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método
        public string InMOUS(string a1, string a2)
        {
            string msj = "";
            try
            {
                obj.AGR_MOUSE(a1,a2);
                msj = "EL REGISTRO FUE CORRECTO";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método
        public string InTECLA(string a1, string a2)
        {
            string msj = "";
            try
            {
                obj.AGR_TECLADO(a1,a2);
                msj = "EL REGISTRO FUE CORRECTO";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método
        public string InMONT(string a1, string a2, string a3)
        {
            string msj = "";
            try
            {
                obj.AGR_MONIT(a1,a2,a3);
                msj = "EL REGISTRO FUE CORRECTO";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método
        public string InDD(string a1, string a2, string a3, string a4)
        {
            string msj = "";
            try
            {
                obj.AGR_DD(a1,a2,a3,a4);
                msj = "EL REGISTRO FUE CORRECTO";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método
        public string InCANDD( int n1, string a2, string a1)
        {
            string msj = "";
            try
            {
                obj.AGR_CANDD(n1,a2,a1);
                msj = "EL REGISTRO FUE CORRECTO";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string InLABO(string nom)
        {
            string msj = "";
            try
            {
                obj.AGR_LAB(nom);
                msj = "EL REGISTRO FUE CORRECTO";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string InPCFIN(string a1, string a2, string a3, string a4, string a5, string a6,string a7)
        {
            string msj = "";
            try
            {
                obj.AGR_PCFINAL(a1,a2,a3,a4,a5,a6,a7);
                msj = "EL REGISTRO FUE CORRECTO";
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