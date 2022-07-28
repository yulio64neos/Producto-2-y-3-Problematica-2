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
                    "inner join Componentes ON(Marca_Componente.id_Compo = Componentes.id_Componente)";
                    SqlDataAdapter DA = new SqlDataAdapter(Com);
                    DA.Fill(Contenedor);
                    tabla = Contenedor.Tables[0];
                }
            }
            return (tabla);
        }//Fin del método

        //Consulta de la relación entre el teclado, marca y el componente
        public DataTable ConsultMouse()
        {
            DataTable tabla = null;
            DataSet Contenedor = new DataSet();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                using (SqlCommand Com = new SqlCommand())
                {
                    Com.Connection = con;
                    Com.CommandText = "SELECT conector, nom_Componente, Marca "+
                    "FROM mouse inner join Marca ON(Marca.Id_Marca = mouse.Id_Marca) "+
                    "inner join Marca_Componente ON(Marca.Id_Marca = Marca_Componente.id_Marca) "+
                    "inner join Componentes ON(Marca_Componente.id_Compo = Componentes.id_Componente)";
                    SqlDataAdapter DA = new SqlDataAdapter(Com);
                    DA.Fill(Contenedor);
                    tabla = Contenedor.Tables[0];
                }
            }
            return (tabla);
        }//Fin del método
        //Consulta de la relación entre el gabinete, marca y el componente
        public DataTable ConsultGabinete()
        {
            DataTable tabla = null;
            DataSet Contenedor = new DataSet();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                using (SqlCommand Com = new SqlCommand())
                {
                    Com.Connection = con;
                    Com.CommandText = "SELECT TipoForma, nom_Componente, Marca "+
                    "FROM Gabinete inner join Marca ON(Marca.Id_Marca = Gabinete.Id_Marca) "+
                    "inner join Marca_Componente ON(Marca.Id_Marca = Marca_Componente.id_Marca) "+
                    "inner join Componentes ON(Marca_Componente.id_Compo = Componentes.id_Componente)";
                    SqlDataAdapter DA = new SqlDataAdapter(Com);
                    DA.Fill(Contenedor);
                    tabla = Contenedor.Tables[0];
                }
            }
            return (tabla);
        }//Fin del método
        //Consulta de la relación entre el CPU, marca y el componente
        public DataTable ConsultCPU()
        {
            DataTable tabla = null;
            DataSet Contenedor = new DataSet();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                using (SqlCommand Com = new SqlCommand())
                {
                    Com.Connection = con;
                    Com.CommandText = "SELECT modeloCPU, nom_Componente, Marca "+
                    "FROM ModeloCPU inner join Marca ON(Marca.Id_Marca = ModeloCPU.Id_Marca) "+
                    "inner join Marca_Componente ON(Marca.Id_Marca = Marca_Componente.id_Marca) "+
                    "inner join Componentes ON(Marca_Componente.id_Compo = Componentes.id_Componente)";
                    SqlDataAdapter DA = new SqlDataAdapter(Com);
                    DA.Fill(Contenedor);
                    tabla = Contenedor.Tables[0];
                }
            }
            return (tabla);
        }//Fin del método

        //----------------------------------------------------------------------------------------------------------

        //Consultar PC por numero de inventario
        public DataTable ConsultaPC_NumInvent(string numInven)
        {
            DataTable tabla = null;
            DataSet Contenedor = new DataSet();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    //Primero la variable com verifica la conexión con la variable con
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    //Asignamos los parámetros
                    com.Parameters.AddWithValue("@NumInventario", numInven);
                    com.CommandText = "LISTA_PcCOMPONENTES";
                    com.ExecuteNonQuery();
                    SqlDataAdapter DA = new SqlDataAdapter(com);
                    DA.Fill(Contenedor);
                    tabla = Contenedor.Tables[0];
                }
                //Cierras la cadena de conexión
                con.Close();
            }
            return tabla;

        }//Fin del método

        //Consultar la ubicación de la PC por tipo de adaptador del monitor
        public DataTable ConsultaUbicacion_PCMonitor(string adaptador)
        {
            DataTable tabla = null;
            DataSet Contenedor = new DataSet();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    //Primero la variable com verifica la conexión con la variable con
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    //Asignamos los parámetros
                    com.Parameters.AddWithValue("@ADAPTADOR", adaptador);
                    com.CommandText = "MONITOR_PC_LABO";
                    com.ExecuteNonQuery();
                    SqlDataAdapter DA = new SqlDataAdapter();
                    DA.Fill(Contenedor);
                    tabla = Contenedor.Tables[0];
                }
                //Cierras la cadena de conexión
                con.Close();
            }
            return tabla;
        }//Fin del método

        //Consultar la ubicación de la PC por tipo de adaptador del monitor
        public DataTable ActualizarPC(string numInven)
        {
            DataTable tabla = null;
            DataSet Contenedor = new DataSet();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    //Primero la variable com verifica la conexión con la variable con
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    //Asignamos los parámetros
                    com.Parameters.AddWithValue("@NumInventario", numInven);
                    com.CommandText = "PC_ACTUALIZACION";
                    com.ExecuteNonQuery();
                    SqlDataAdapter DA = new SqlDataAdapter(com);
                    DA.Fill(Contenedor);
                    tabla = Contenedor.Tables[0];
                }
                //Cierras la cadena de conexión
                con.Close();
            }
            return tabla;
        }//Fin del método

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
                        "teclado.conector as 'Conector del teclado', " +
                        "monitor.conectores as 'Conector del monitor', " +
                        "mouse.conector as 'Conector del mouse', " +
                        "DiscoDuro.TipoDisco as 'Tipo de DD', " +
                        "DiscoDuro.Capacidad as 'Capacidad de DD' FROM ubicacion " +
                        "INNER JOIN computadorafinal ON(ubicacion.num_inv = computadorafinal.num_inv) " +
                        "INNER JOIN CPU_Generico ON(computadorafinal.id_cpug = CPU_Generico.id_CPU) " +
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
        }//Fin del método

        //Se hace una consulta de los equipos que contenga disco de estado solido

        //Consultar
        public DataTable LABOSSD()
        {
            DataTable tabla = null;
            DataSet Contenedor = new DataSet();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                using (SqlCommand Com = new SqlCommand())
                {
                    Com.Connection = con;
                    Com.CommandText = "SELECT ubicacion.nombre_laboratorio as 'Laboratorio asignado', " +
                        "DiscoDuro.TipoDisco as 'Equipos con Discos de estado Solido' " +
                        "FROM ubicacion " +
                        "INNER JOIN computadorafinal ON(ubicacion.num_inv = computadorafinal.num_inv) " +
                        "INNER JOIN cantDisc ON(computadorafinal.num_inv = cantDisc.num_inv) " +
                        "INNER JOIN DiscoDuro ON(cantDisc.id_Disco = DiscoDuro.id_Disco) WHERE DiscoDuro.TipoDisco = 'Estado Sólido'; ";
                    SqlDataAdapter DA = new SqlDataAdapter(Com);
                    DA.Fill(Contenedor);
                    tabla = Contenedor.Tables[0];
                }
            }
            return (tabla);
        }//Fin del método

        //Método para generar la lista del numero de inventario
        public List<computadorafinal> GetListaInventario()
        {
            List<computadorafinal> Resp = new List<computadorafinal>();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandText = "select num_inv from computadorafinal;";
                    SqlDataReader lect = com.ExecuteReader();
                    if (lect.HasRows)
                    {
                        while (lect.Read())
                        {
                            computadorafinal objCPUFinal = new computadorafinal()
                            {
                                num_inv = Convert.ToString(lect["num_inv"])
                            };
                            Resp.Add(objCPUFinal);
                        }
                    }
                }
                con.Close();
            }
            return Resp;
        }
        //Método para listar el tipo de conector que tiene el Monitor
        public List<monitor> GetListaTipoConectorMonitor()
        {
            List<monitor> Resp = new List<monitor>();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandText = "select conectores from monitor;";
                    SqlDataReader lect = com.ExecuteReader();
                    if (lect.HasRows)
                    {
                        while (lect.Read())
                        {
                            monitor objMonitor = new monitor()
                            {
                                conectores = Convert.ToString(lect["conectores"])
                            };
                            Resp.Add(objMonitor);
                        }
                    }
                }
                con.Close();
            }
            return Resp;
        }//Fin del método

        //Inserción
        public void InsertarMarca(string marca)
        {
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    //Primero la variable com verifica la conexión con la variable con
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    //Asignamos los parámetros
                    com.Parameters.AddWithValue("@Mar", marca);
                    com.CommandText = "INSERTA_MARCA";
                    com.ExecuteNonQuery();
                }
                //Cierras la cadena de conexión
                con.Close();
            }
        }//Fin del método

        /*--------------------------------------------------ACTUALIZACIONES--------------------------------------------------------------------*/
        public List<ModeloCPU> GetListaMCP()
        {
            List<ModeloCPU> Resp = new List<ModeloCPU>();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandText = "SELECT modeloCPU FROM ModeloCPU;";
                    SqlDataReader lect = com.ExecuteReader();
                    if (lect.HasRows)
                    {
                        while (lect.Read())
                        {
                            ModeloCPU objCPUFinal = new ModeloCPU()
                            {
                                modeloCPU = Convert.ToString(lect["modeloCPU"])
                            };
                            Resp.Add(objCPUFinal);
                        }
                    }
                }
                con.Close();
            }
            return Resp;
        }

        public List<Marca> GetListaMarcas()
        {
            List<Marca> Resp = new List<Marca>();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandText = "SELECT Marca FROM Marca;";
                    SqlDataReader lect = com.ExecuteReader();
                    if (lect.HasRows)
                    {
                        while (lect.Read())
                        {
                            Marca objCPUFinal = new Marca()
                            {
                                marca = Convert.ToString(lect["Marca"])
                            };
                            Resp.Add(objCPUFinal);
                        }
                    }
                }
                con.Close();
            }
            return Resp;
        }

        public List<Tipo_CPU> GetListaFamCPU()
        {
            List<Tipo_CPU> Resp = new List<Tipo_CPU>();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandText = "SELECT Familia FROM Tipo_CPU;";
                    SqlDataReader lect = com.ExecuteReader();
                    if (lect.HasRows)
                    {
                        while (lect.Read())
                        {
                            Tipo_CPU objCPUFinal = new Tipo_CPU()
                            {
                                Familia = Convert.ToString(lect["Familia"])
                            };
                            Resp.Add(objCPUFinal);
                        }
                    }
                }
                con.Close();
            }
            return Resp;
        }

        public List<Tipo_CPU> GetListaVelCPU()
        {
            List<Tipo_CPU> Resp = new List<Tipo_CPU>();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandText = "SELECT Velocidad FROM Tipo_CPU;";
                    SqlDataReader lect = com.ExecuteReader();
                    if (lect.HasRows)
                    {
                        while (lect.Read())
                        {
                            Tipo_CPU objCPUFinal = new Tipo_CPU()
                            {
                                Velicidad = Convert.ToString(lect["Velocidad"])
                            };
                            Resp.Add(objCPUFinal);
                        }
                    }
                }
                con.Close();
            }
            return Resp;
        }

        public List<Gabinete> GetListaModGabi()
        {
            List<Gabinete> Resp = new List<Gabinete>();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandText = "SELECT Modelo FROM Gabinete;";
                    SqlDataReader lect = com.ExecuteReader();
                    if (lect.HasRows)
                    {
                        while (lect.Read())
                        {
                            Gabinete objCPUFinal = new Gabinete()
                            {
                                Modelo = Convert.ToString(lect["Modelo"])
                            };
                            Resp.Add(objCPUFinal);
                        }
                    }
                }
                con.Close();
            }
            return Resp;
        }

        public List<Gabinete> GetListaTipGabi()
        {
            List<Gabinete> Resp = new List<Gabinete>();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandText = "SELECT TipoForma FROM Gabinete;";
                    SqlDataReader lect = com.ExecuteReader();
                    if (lect.HasRows)
                    {
                        while (lect.Read())
                        {
                            Gabinete objCPUFinal = new Gabinete()
                            {
                                TipoForma = Convert.ToString(lect["TipoForma"])
                            };
                            Resp.Add(objCPUFinal);
                        }
                    }
                }
                con.Close();
            }
            return Resp;
        }

        public List<RAM> GetListaCapRAM()
        {
            List<RAM> Resp = new List<RAM>();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandText = "SELECT Capacidad FROM RAM;";
                    SqlDataReader lect = com.ExecuteReader();
                    if (lect.HasRows)
                    {
                        while (lect.Read())
                        {
                            RAM objCPUFinal = new RAM()
                            {
                                Capacidad = Convert.ToInt32(lect["Capacidad"])
                            };
                            Resp.Add(objCPUFinal);
                        }
                    }
                }
                con.Close();
            }
            return Resp;
        }

        public List<RAM> GetListaVelRAM()
        {
            List<RAM> Resp = new List<RAM>();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandText = "SELECT Velocidad FROM RAM;";
                    SqlDataReader lect = com.ExecuteReader();
                    if (lect.HasRows)
                    {
                        while (lect.Read())
                        {
                            RAM objCPUFinal = new RAM()
                            {
                                Velocidad = Convert.ToString(lect["Velocidad"])
                            };
                            Resp.Add(objCPUFinal);
                        }
                    }
                }
                con.Close();
            }
            return Resp;
        }

        public List<monitor> GetListaConMoni()
        {
            List<monitor> Resp = new List<monitor>();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandText = "SELECT conectores FROM monitor;";
                    SqlDataReader lect = com.ExecuteReader();
                    if (lect.HasRows)
                    {
                        while (lect.Read())
                        {
                            monitor objCPUFinal = new monitor()
                            {
                               conectores = Convert.ToString(lect["conectores"])
                            };
                            Resp.Add(objCPUFinal);
                        }
                    }
                }
                con.Close();
            }
            return Resp;
        }

        public List<teclado> GetListaConTec()
        {
            List<teclado> Resp = new List<teclado>();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandText = "SELECT conector FROM teclado;";
                    SqlDataReader lect = com.ExecuteReader();
                    if (lect.HasRows)
                    {
                        while (lect.Read())
                        {
                            teclado objCPUFinal = new teclado()
                            {
                                conector = Convert.ToString(lect["conector"])
                            };
                            Resp.Add(objCPUFinal);
                        }
                    }
                }
                con.Close();
            }
            return Resp;
        }

        public List<mouse> GetListaConMou()
        {
            List<mouse> Resp = new List<mouse>();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandText = "SELECT conector FROM mouse;";
                    SqlDataReader lect = com.ExecuteReader();
                    if (lect.HasRows)
                    {
                        while (lect.Read())
                        {
                            mouse objCPUFinal = new mouse()
                            {
                                conector = Convert.ToString(lect["conector"])
                            };
                            Resp.Add(objCPUFinal);
                        }
                    }
                }
                con.Close();
            }
            return Resp;
        }

        public List<ubicacion> GetListaNumUbi()
        {
            List<ubicacion> Resp = new List<ubicacion>();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandText = "SELECT num_inv FROM ubicacion;";
                    SqlDataReader lect = com.ExecuteReader();
                    if (lect.HasRows)
                    {
                        while (lect.Read())
                        {
                            ubicacion objCPUFinal = new ubicacion()
                            {
                                num_int = Convert.ToString(lect["num_inv"])
                            };
                            Resp.Add(objCPUFinal);
                        }
                    }
                }
                con.Close();
            }
            return Resp;
        }

        public List<laboratorio> GetListaLab()
        {
            List<laboratorio> Resp = new List<laboratorio>();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandText = "SELECT nombre_laboratorio FROM laboratorio;";
                    SqlDataReader lect = com.ExecuteReader();
                    if (lect.HasRows)
                    {
                        while (lect.Read())
                        {
                            laboratorio objCPUFinal = new laboratorio()
                            {
                                nombre_laboratotio = Convert.ToString(lect["nombre_laboratotio"])
                            };
                            Resp.Add(objCPUFinal);
                        }
                    }
                }
                con.Close();
            }
            return Resp;
        }
    }//Fin de la clase
}