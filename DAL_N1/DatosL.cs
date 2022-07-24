using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL_N1;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

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

        public DataTable ConsultarMarca()
        {
            DataTable tabla = null;
            DataSet Contenedor = new DataSet();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                using (SqlCommand Com = new SqlCommand())
                {
                    Com.Connection = con;
                    Com.CommandText = "select Marca from Marca;";
                    SqlDataAdapter DA = new SqlDataAdapter(Com);
                    DA.Fill(Contenedor);
                    tabla = Contenedor.Tables[0];
                }
            }
            return (tabla);
        }
    }//Fin de la clase
}
