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

        public string  InsertMarca(string Marca)
        {
            string msj = "";
            try
            {
                obj.InsertarMarca(Marca);
                msj = "EL REGISTRO FUE CORRECTO";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;            
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
        public string ActPCF(string ind, string iMo, string iC, string iL, string iT, string iMC, string iMT, string im1, string im2, string im3,
            string numS, string des, string numI)
        {
            string msj = "";
            try
            {
                obj.ACT_PCFINAL(ind,iMo,iC,iL,iT,iMC,iMT,im1,im2,im3);
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

        public string InPCFIN(string num, string iMo, string iC, string iL, string iT, string iMC, string iMT, string im1, string im2, string im3)
        {
            string msj = "";
            try
            {
                obj.AGR_PCFINAL(num,iMo,iC,iL,iT,iMC,iMT,im1,im2,im3);
                msj = "EL REGISTRO FUE CORRECTO";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        //-------------------------------------------------------------------------------------------------------------------------------
        //-----------------------------------------------------------ELIMINAR------------------------------------------------------------

        public string Elimina_COMPO(int id)
        {
            string msj = "";
            try
            {
                obj.ELIMINAR_COMPO(id);
                msj = "Se ha eliminado el componente " + id + " de la manera correcta";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string Elimina_MARCA(int id)
        {
            string msj = "";
            try
            {
                obj.ELIMINAR_MARCA(id);
                msj = "Se ha eliminado el componente " + id + " de la manera correcta";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string Elimina_MONITOR(int id)
        {
            string msj = "";
            try
            {
                obj.ELIMINAR_MONITOR(id);
                msj = "Se ha eliminado el componente " + id + " de la manera correcta";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string Elimina_Disco(int disk)
        {
            string msj = "";
            try
            {
                obj.ELIMINAR_DISCO(disk);
                msj = "Se ha eliminado el componente " + disk + " de la manera correcta";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string Elimina_Teclado(int id)
        {
            string msj = "";
            try
            {
                obj.ELIMINAR_TECLADO(id);
                msj = "Se ha eliminado el componente " + id + " de la manera correcta";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string Elimina_mouse(int id)
        {
            string msj = "";
            try
            {
                obj.ELIMINAR_MOUSE(id);
                msj = "Se ha eliminado el componente " + id + " de la manera correcta";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string Eliminar_CPU(int id)
        {
            string msj = "";
            try
            {
                obj.ELIMINAR_CPU_GEN(id);
                msj = "Se ha eliminado el componente " + id + " de la manera correcta";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string Eliminar_RAM(int id)
        {
            string msj = "";
            try
            {
                obj.ELIMINAR_RAM(id);
                msj = "Se ha eliminado el componente " + id + " de la manera correcta";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método
        public string Eliminar_TIPORAM(int id)
        {
            string msj = "";
            try
            {
                obj.ELIMINAR_TIPORAM(id);
                msj = "Se ha eliminado el componente " + id + " de la manera correcta";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método


        public string Eliminar_GAB(int id)
        {
            string msj = "";
            try
            {
                obj.ELIMINAR_GABINETE(id);
                msj = "Se ha eliminado el componente " + id + " de la manera correcta";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string Eliminar_TIPOCPU(int id)
        {
            string msj = "";
            try
            {
                obj.ELIMINAR_TIPOCPU(id);
                msj = "Se ha eliminado el componente " + id + " de la manera correcta";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string Eliminar_MODELOPU(int id)
        {
            string msj = "";
            try
            {
                obj.ELIMINAR_MODELOCPU(id);
                msj = "Se ha eliminado el componente " + id + " de la manera correcta";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string Eliminar_CANTDISCO(int id)
        {
            string msj = "";
            try
            {
                obj.ELIMINAR_CANTDISCO(id);
                msj = "Se ha eliminado el componente " + id + " de la manera correcta";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string Eliminar_CPUFINAL(string id)
        {
            string msj = "";
            try
            {
                obj.ELIMINAR_CPUFINAL(id);
                msj = "Se ha eliminado el componente " + id + " de la manera correcta";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string Eliminar_ACTUALIZACION(int id)
        {
            string msj = "";
            try
            {
                obj.ELIMINAR_ACTUALIZACION(id);
                msj = "Se ha eliminado el componente " + id + " de la manera correcta";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public string Eliminar_LABORATORIO(string nom)
        {
            string msj = "";
            try
            {
                obj.ELIMINAR_LABORATORIO(nom);
                msj = "Se ha eliminado el componente " + nom + " de la manera correcta";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;
        }//Fin del método

        public void ActCanDD(string indi, int can, string DD)
        {
            obj.ACT_CanDD(indi,can,DD);
        }//Fin del método

        public int[] IdListaComponente()
        {
            int[] resp;
            List<componentes> cpf = obj.GetIdComponente();
            resp = new int[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].id_Componente;
            }
            return resp;
        }//Fin del método

        public DataTable CompoFull()
        {
            return obj.Componentes();
        }

        public int[] IdListaMarca()
        {
            int[] resp;
            List<Marca> cpf = obj.GetIdMarca();
            resp = new int[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].id_Marca;
            }
            return resp;
        }//Fin del método

        public DataTable MarcaFull()
        {
            return obj.Marca();
        }

        public int[] IdListaMonitor()
        {
            int[] resp;
            List<monitor> cpf = obj.GetIdMonitor();
            resp = new int[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].id_monitor;
            }
            return resp;
        }//Fin del método
        public DataTable MonitorFull()
        {
            return obj.Monitor();
        }//Fin del método

        public int[] IdListaDiscoDuro()
        {
            int[] resp;
            List<DiscoDuro> cpf = obj.GetIdDisco();
            resp = new int[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].id_Disco;
            }
            return resp;
        }//Fin del método
        public DataTable DiscuDuroFuLL()
        {
            return obj.DiscoDuro();
        }//Fin del método

        public int[] IdListaTeclado()
        {
            int[] resp;
            List<teclado> cpf = obj.GetIdTeclado();
            resp = new int[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].id_teclado;
            }
            return resp;
        }//Fin del método

        public DataTable TecladoFull()
        {
            return obj.Teclado();
        }//Fin del método

        public int[] IdListaMouse()
        {
            int[] resp;
            List<mouse> cpf = obj.GetIdMouse();
            resp = new int[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].id_mouse;
            }
            return resp;
        }//Fin del método

        public DataTable MouseFull()
        {
            return obj.Mouse();
        }//Fin del método

        public int[] IdListaModeloCPU()
        {
            int[] resp;
            List<ModeloCPU> cpf = obj.GetIdModeloCPU();
            resp = new int[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].id_modcpu;
            }
            return resp;
        }//Fin del método
        public DataTable ModeloCPUFull()
        {
            return obj.ModeloCPU();
        }//Fin del método

        public int[] IdListaGabinete()
        {
            int[] resp;
            List<Gabinete> cpf = obj.GetIdGabinete();
            resp = new int[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].id_Gabinete;
            }
            return resp;
        }//Fin del método
        public DataTable ModeloGabineteFull()
        {
            return obj.Gabinete();
        }//Fin del método

        public int[] IdListaTipoCPU()
        {
            int[] resp;
            List<Tipo_CPU> cpf = obj.GetIdTipoCPU();
            resp = new int[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].id_Tcpu;
            }
            return resp;
        }//Fin del método
        public DataTable TipoCPUFull()
        {
            return obj.TipoCPU();
        }//Fin del método

        public int[] IdListaTipoRAM()
        {
            int[] resp;
            List<TipoRAM> cpf = obj.GetIdTipoRAM();
            resp = new int[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].id_tipoRam;
            }
            return resp;
        }//Fin del método
        public DataTable TipoRAMFull()
        {
            return obj.TipoRAM();
        }//Fin del método

        public int[] IdListaRAM()
        {
            int[] resp;
            List<RAM> cpf = obj.GetIdRAM();
            resp = new int[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].id_RAM;
            }
            return resp;
        }//Fin del método
        public DataTable RAMFull()
        {
            return obj.RAM();
        }//Fin del método

        public int[] IdListaCPUGEN()
        {
            int[] resp;
            List<CPU_Generico> cpf = obj.GetId_CPUGEN();
            resp = new int[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].id_CPU;
            }
            return resp;
        }//Fin del método
        public DataTable CPU_GENFull()
        {
            return obj.CPU_GENERICO();
        }//Fin del método

        public string[] IdListaLaboratorio()
        {
            string[] resp;
            List<laboratorio> cpf = obj.GetId_Laboratorio();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].nombre_laboratorio;
            }
            return resp;
        }//Fin del método
        public DataTable LaboFull()
        {
            return obj.Laboratorio();
        }//Fin del método

        public int[] IdListaActualizacion()
        {
            int[] resp;
            List<actualizacion> cpf = obj.GetId_Actualizacion();
            resp = new int[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].id_act;
            }
            return resp;
        }//Fin del método
        public DataTable ActualizacionFULL()
        {
            return obj.Actualizacion();
        }//Fin del método

        public string[] IdListaComputadoraFinal()
        {
            string[] resp;
            List<computadorafinal> cpf = obj.GetId_ComputadoraFINAL();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].num_inv;
            }
            return resp;
        }//Fin del método
        public DataTable ComputadoraFinalFULL()
        {
            return obj.ComputadoraFinal();
        }//Fin del método

        public int[] IdListaCantidadDisco()
        {
            int[] resp;
            List<cantDisc> cpf = obj.GetId_cantDisk();
            resp = new int[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].id_cant;
            }
            return resp;
        }//Fin del método
        public DataTable CantidadDiscoFULL()
        {
            return obj.CantidadDisco();
        }//Fin del método

        public string InsertComponente(string comp)
        {
            string msj = "";
            try
            {
                obj.InsertarCompo(comp);
                msj = "EL REGISTRO FUE CORRECTO";
            }
            catch (Exception e)
            {
                msj = "ERROR " + e.Message;
                return msj;
            }
            return msj;            
        }//Fin del método

        public string[] DevuelveMar()
        {
            string[] resp;
            List<Marca> cpf = obj.GetListaMarca();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].marca;
            }
            return resp;
        }//Fin del método

        public string[] DevuelveCom()
        {
            string[] resp;
            List<componentes> cpf = obj.GetListaCom();
            resp = new string[cpf.Count];
            for (int i = 0; i < cpf.Count; i++)
            {
                resp[i] = cpf[i].nom_Componente;
            }
            return resp;
        }//Fin del método

        public string InsertMC(string M, string C)
        {
            string msj = "";
            try
            {
                obj.AGR_MC(M,C);
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