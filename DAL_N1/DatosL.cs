using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL_N1;
using System.Data.SqlClient;
using System.Configuration;
using Entidades_N0;
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

        //Tabla marcas
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
        }//Fín del método

        public DataTable ConsultarComponente()
        {
            DataTable tabla = null;
            DataSet Contenedor = new DataSet();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                using (SqlCommand Com = new SqlCommand())
                {
                    Com.Connection = con;
                    Com.CommandText = "select nom_Componente as 'Componente' from Componentes;";
                    SqlDataAdapter DA = new SqlDataAdapter(Com);
                    DA.Fill(Contenedor);
                    tabla = Contenedor.Tables[0];
                }
            }
            return (tabla);
        }//Fin del método

        //Consulta de la relación entre la Marca y el componente
        public DataTable ConsultMarcaCompo()
        {
            DataTable tabla = null;
            DataSet Contenedor = new DataSet();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                using (SqlCommand Com = new SqlCommand())
                {
                    Com.Connection = con;
                    Com.CommandText = "select Marca, nom_Componente as 'Componente' from Marca inner join Marca_Componente " +
                    "ON(Marca.Id_Marca = Marca_Componente.id_Marca) inner join Componentes " +
                    "ON(Componentes.id_Componente = Marca_Componente.id_Compo);";
                    SqlDataAdapter DA = new SqlDataAdapter(Com);
                    DA.Fill(Contenedor);
                    tabla = Contenedor.Tables[0];
                }
            }
            return (tabla);
        }//Fin del método

        //Consulta de la relación entre el Disco, la marca y el componente
        public DataTable ConsultDisco()
        {
            DataTable tabla = null;
            DataSet Contenedor = new DataSet();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                using (SqlCommand Com = new SqlCommand())
                {
                    Com.Connection = con;
                    Com.CommandText = "SELECT TipoDisco as 'Tipo del Disco', nom_Componente as 'Componente', Marca " +
                    "FROM DiscoDuro inner join Marca ON(Marca.Id_Marca = DiscoDuro.Id_Marca) " +
                    "inner join Marca_Componente ON(Marca.Id_Marca = Marca_Componente.id_Marca) " +
                    "inner join Componentes ON(Marca_Componente.id_Compo = Componentes.id_Componente);";
                    SqlDataAdapter DA = new SqlDataAdapter(Com);
                    DA.Fill(Contenedor);
                    tabla = Contenedor.Tables[0];
                }
            }
            return (tabla);
        }//Fin del método

        //Consulta de la relación entre el monitor, marca y el componente
        public DataTable ConsultMonitor()
        {
            DataTable tabla = null;
            DataSet Contenedor = new DataSet();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                using (SqlCommand Com = new SqlCommand())
                {
                    Com.Connection = con;
                    Com.CommandText = "SELECT conectores as 'Adaptador', nom_Componente as 'Componente', Marca " +
                    "FROM monitor inner join Marca ON(Marca.Id_Marca = monitor.Id_Marca) "+
                    "inner join Marca_Componente ON(Marca.Id_Marca = Marca_Componente.id_Marca) "+
                    "inner join Componentes ON(Marca_Componente.id_Compo = Componentes.id_Componente);";
                    SqlDataAdapter DA = new SqlDataAdapter(Com);
                    DA.Fill(Contenedor);
                    tabla = Contenedor.Tables[0];
                }
            }
            return (tabla);
        }//Fin del método
        //Consulta de la relación entre el teclado, marca y el componente
        public DataTable ConsultTeclado()
        {
            DataTable tabla = null;
            DataSet Contenedor = new DataSet();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                using (SqlCommand Com = new SqlCommand())
                {
                    Com.Connection = con;
                    Com.CommandText = "SELECT conector as 'Adaptador', nom_Componente as 'Componente', Marca " +
                    "FROM teclado inner join Marca ON(Marca.Id_Marca = teclado.Id_Marca) " +
                    "inner join Marca_Componente ON(Marca.Id_Marca = Marca_Componente.id_Marca) " +
                    "inner join Componentes ON(Marca_Componente.id_Compo = Componentes.id_Componente);";
                    SqlDataAdapter DA = new SqlDataAdapter(Com);
                    DA.Fill(Contenedor);
                    tabla = Contenedor.Tables[0];
                }
            }
            return (tabla);
        }//Fin del método

        //Consulta de la relación entre el teclado, marca y el componente
        public DataTable ConsultMarcaMouse()
        {
            DataTable tabla = null;
            DataSet Contenedor = new DataSet();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                using (SqlCommand Com = new SqlCommand())
                {
                    Com.Connection = con;
                    Com.CommandText = "SELECT conector, nom_Componente, Marca"+
                    "FROM mouse inner join Marca ON(Marca.Id_Marca = mouse.Id_Marca)"+
                    "inner join Marca_Componente ON(Marca.Id_Marca = Marca_Componente.id_Marca)"+
                    "inner join Componentes ON(Marca_Componente.id_Compo = Componentes.id_Componente)";
                    SqlDataAdapter DA = new SqlDataAdapter(Com);
                    DA.Fill(Contenedor);
                    tabla = Contenedor.Tables[0];
                }
            }
            return (tabla);
        }//Fin del método
        //Consulta de la relación entre el gabinete, marca y el componente
        public DataTable ConsultMarcaGabinete()
        {
            DataTable tabla = null;
            DataSet Contenedor = new DataSet();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                using (SqlCommand Com = new SqlCommand())
                {
                    Com.Connection = con;
                    Com.CommandText = "SELECT TipoForma, nom_Componente, Marca"+
                    "FROM Gabinete inner join Marca ON(Marca.Id_Marca = Gabinete.Id_Marca)"+
                    "inner join Marca_Componente ON(Marca.Id_Marca = Marca_Componente.id_Marca)"+
                    "inner join Componentes ON(Marca_Componente.id_Compo = Componentes.id_Componente)";
                    SqlDataAdapter DA = new SqlDataAdapter(Com);
                    DA.Fill(Contenedor);
                    tabla = Contenedor.Tables[0];
                }
            }
            return (tabla);
        }//Fin del método
        //Consulta de la relación entre el CPU, marca y el componente
        public DataTable ConsultMarcaCPU()
        {
            DataTable tabla = null;
            DataSet Contenedor = new DataSet();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                using (SqlCommand Com = new SqlCommand())
                {
                    Com.Connection = con;
                    Com.CommandText = "SELECT modeloCPU, nom_Componente, Marca"+
                    "FROM ModeloCPU inner join Marca ON(Marca.Id_Marca = ModeloCPU.Id_Marca)"+
                    "inner join Marca_Componente ON(Marca.Id_Marca = Marca_Componente.id_Marca)"+
                    "inner join Componentes ON(Marca_Componente.id_Compo = Componentes.id_Componente)";
                    SqlDataAdapter DA = new SqlDataAdapter(Com);
                    DA.Fill(Contenedor);
                    tabla = Contenedor.Tables[0];
                }
            }
            return (tabla);
        }//Fin del método

        //Se consulta que equipos tiene laboratorio predeterminado
        public DataTable PCLPredeterminado()
        {
            DataTable tabla = null;
            DataSet Contenedor = new DataSet();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                using (SqlCommand Com = new SqlCommand())
                {
                    Com.Connection = con;
                    Com.CommandText = "SELECT ubicacion.nombre_laboratorio as 'Laboratorio asignado', CPU_Generico.Modelo as 'Modelo del CPU', " +
                        "teclado.conector as 'Conector del teclado', "+
                        "monitor.conectores as 'Conector del monitor', " +
                        "mouse.conector as 'Conector del mouse', "+
                        "DiscoDuro.TipoDisco as 'Tipo de DD', "+
                        "DiscoDuro.Capacidad as 'Capacidad de DD' FROM ubicacion "+
                        "INNER JOIN computadorafinal ON(ubicacion.num_inv = computadorafinal.num_inv) "+
                        "INNER JOIN CPU_Generico ON(computadorafinal.id_cpug = CPU_Generico.id_CPU) "+
                        "INNER JOIN teclado ON(computadorafinal.id_tecladog = teclado.id_teclado) " +
                        "INNER JOIN monitor ON(computadorafinal.id_mong = monitor.id_monitor) " +
                        "INNER JOIN mouse ON(computadorafinal.id_mousg = mouse.id_mouse) " +
                        "INNER JOIN cantDisc ON(computadorafinal.num_inv = cantDisc.num_inv) " +
                        "INNER JOIN DiscoDuro ON(cantDisc.id_Disco = DiscoDuro.id_Disco);";
                    SqlDataAdapter DA = new SqlDataAdapter(Com);
                    DA.Fill(Contenedor);
                    tabla = Contenedor.Tables[0];
                }
            }
            return (tabla);
        }

        //Se hace una consulta de los equipos que contenga disco de estado solido
        public DataTable EDDSolido()
        {
            DataTable tabla = null;
            DataSet Contenedor = new DataSet();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                using (SqlCommand Com = new SqlCommand())
                {
                    Com.Connection = con;
                    Com.CommandText = "SELECT ubicacion.nombre_laboratorio as 'Laboratorio asignado', "+
                        "DiscoDuro.TipoDisco as 'Equipos con Discos de estado Solido' "+
                        "FROM ubicacion "+
                        "INNER JOIN computadorafinal ON(ubicacion.num_inv = computadorafinal.num_inv) "+
                        "INNER JOIN cantDisc ON(computadorafinal.num_inv = cantDisc.num_inv) "+
                        "INNER JOIN DiscoDuro ON(cantDisc.id_Disco = DiscoDuro.id_Disco) WHERE DiscoDuro.TipoDisco = 'Estado Sólido'; ";
                    SqlDataAdapter DA = new SqlDataAdapter(Com);
                    DA.Fill(Contenedor);
                    tabla = Contenedor.Tables[0];
                }
            }
            return (tabla);
        }

    }//Fin de la clase
}
