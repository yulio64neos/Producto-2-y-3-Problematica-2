using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL_N1;
using System.Data.SqlClient;
using System.Configuration;
namespace DAL_N1
{
    public class DatosL
    {
        SqlConnection SqlConnect;
        private string CadConnectSql;
        
        //Vamos a invocar la cadena de conexión
        public DatosL()
        {
            CadConnectSql = ConfigurationManager.ConnectionStrings["pcInventario"].ConnectionString;
        }//Fin del método constructor

        public string RevisarConexion()
        {
            try
            {
                SqlConnect = new SqlConnection(CadConnectSql);
                SqlConnect.Open();
                SqlConnect.Close();
            }
            catch (Exception e)
            {
                return "SALIÓ MAL " + e.Message;
            }
            return "La conexión se abríó y se cerró correctamente";
        }//Fin del método


    }//Fin de la clase
}
