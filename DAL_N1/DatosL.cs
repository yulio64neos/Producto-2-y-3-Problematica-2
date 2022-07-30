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
                    SqlDataAdapter DA = new SqlDataAdapter(com);
                    DA.Fill(Contenedor);
                    tabla = Contenedor.Tables[0];
                }
                //Cierras la cadena de conexión
                con.Close();
            }
            return tabla;
        }//Fin del método

        //Consulta el numero de inventario obteniendo la ubicación y sus actualizaciones

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
                    Com.CommandText = "SELECT laboratorio.nombre_laboratorio as 'Laboratorio asignado', CPU_Generico.Modelo as 'Modelo del CPU', " +
                        "teclado.conector as 'Conector del teclado', " +
                        "monitor.conectores as 'Conector del monitor', " +
                        "mouse.conector as 'Conector del mouse', " +
                        "DiscoDuro.TipoDisco as 'Tipo de DD', " +
                        "DiscoDuro.Capacidad as 'Capacidad de DD', " +
                        "TipoRAM.Tipo as 'Tipo de Memoria RAM', " +
                        "RAM.Capacidad as 'Almacenamiento RAM' from laboratorio " +
                        "INNER JOIN computadorafinal ON(computadorafinal.nom_labo = laboratorio.nombre_laboratorio) " +
                        "INNER JOIN CPU_Generico ON(computadorafinal.id_cpug = CPU_Generico.id_CPU) " +
                        "INNER JOIN teclado ON(computadorafinal.id_tecladog = teclado.id_teclado) " +
                        "INNER JOIN monitor ON(computadorafinal.id_mong = monitor.id_monitor) " +
                        "INNER JOIN mouse ON(computadorafinal.id_mousg = mouse.id_mouse) " +
                        "INNER JOIN cantDisc ON(computadorafinal.num_inv = cantDisc.num_inv) " +
                        "INNER JOIN DiscoDuro ON(cantDisc.id_Disco = DiscoDuro.id_Disco) " +
                        "INNER JOIN RAM on (RAM.id_RAM = CPU_Generico.f_tipoRam) " +
                        "INNER JOIN TipoRAM on (RAM.F_TipoR = TipoRAM.id_tipoRam) ";
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
                    Com.CommandText = "SELECT computadorafinal.num_inv as 'Número del Equipo', " +
                        "laboratorio.nombre_laboratorio as 'Laboratorio asignado', " +
                        "DiscoDuro.TipoDisco as 'Tipo de Disco' " +
                        "FROM laboratorio " +
                        "INNER JOIN computadorafinal ON(laboratorio.nombre_laboratorio = computadorafinal.nom_labo) " +
                        "INNER JOIN cantDisc ON(computadorafinal.num_inv = cantDisc.num_inv) " +
                        "INNER JOIN DiscoDuro ON(cantDisc.id_Disco = DiscoDuro.id_Disco) WHERE DiscoDuro.TipoDisco = 'SSD' ";
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
        public void InsertarCompo(string compo)
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
                    com.Parameters.AddWithValue("@nom_Compo", compo);
                    com.CommandText = "INSERTAR_COMPONENTES";
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
                                nombre_laboratorio = Convert.ToString(lect["nombre_laboratorio"])
                            };
                            Resp.Add(objCPUFinal);
                        }
                    }
                }
                con.Close();
            }
            return Resp;
        }

        public List<TipoRAM> GetListaTiRAM()
        {
            List<TipoRAM> Resp = new List<TipoRAM>();
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandText = "SELECT Tipo FROM TipoRAM;";
                    SqlDataReader lect = com.ExecuteReader();
                    if (lect.HasRows)
                    {
                        while (lect.Read())
                        {
                            TipoRAM objCPUFinal = new TipoRAM()
                            {
                                Tipo = Convert.ToString(lect["Tipo"])
                            };
                            Resp.Add(objCPUFinal);
                        }
                    }
                }
                con.Close();
            }
            return Resp;
        }
        public void ACT_MODCPU(string indica1,string camMod, string camMar)
        {
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    //Primero la variable com verifica la conexión con la variable con
                    com.Connection = con;                    
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@in1", indica1);
                    com.Parameters.AddWithValue("@cModelo", camMod);
                    com.Parameters.AddWithValue("@cMar", camMar);
                    com.CommandText = "Act_MODCPU ";
                    com.ExecuteNonQuery();
                }
                //Cierras la cadena de conexión
                con.Close();
            }
        }//Fin del método

        public void ACT_TCPU(string indica1, string indica2, string mFam, string mVel, string mMod)
        {
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@ind1", indica1);
                    com.Parameters.AddWithValue("@ind2", indica2);
                    com.Parameters.AddWithValue("@mfam", mFam);
                    com.Parameters.AddWithValue("@mVelo", mVel);
                    com.Parameters.AddWithValue("@mMod", mMod);
                    com.CommandText = "Act_TCPU ";
                    com.ExecuteNonQuery();
                }
                //Cierras la cadena de conexión
                con.Close();
            }
        }//Fin del método

        public void ACT_GABI(string indica1, string indica2, string mMod, string mFor, string mMar)
        {
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@indicar1", indica1);
                    com.Parameters.AddWithValue("@indicar2", indica2);
                    com.Parameters.AddWithValue("@caModelo", mMod);
                    com.Parameters.AddWithValue("@tForma", mFor);
                    com.Parameters.AddWithValue("@idMarca", mMar);
                    com.CommandText = "Act_GABINETE ";
                    com.ExecuteNonQuery();
                }
                //Cierras la cadena de conexión
                con.Close();
            }
        }//Fin del método

        public void ACT_RAM(string indica1, string indica2, string mCap, string mVel, string mTR)
        {
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@indicar", indica1);
                    com.Parameters.AddWithValue("@indicar2", indica2);
                    com.Parameters.AddWithValue("@caCapacida", mCap);
                    com.Parameters.AddWithValue("@camVelocida", mVel);
                    com.Parameters.AddWithValue("@tipoR", mTR);
                    com.CommandText = "Act_RAM ";
                    com.ExecuteNonQuery();
                }
                //Cierras la cadena de conexión
                con.Close();
            }
        }//Fin del método

        public void ACT_MONI(string indica1, string indica2, string mConec, string mTam, string mMar)
        {
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@indicar", indica1);
                    com.Parameters.AddWithValue("@indicar2", indica2);
                    com.Parameters.AddWithValue("@camConec", mConec);
                    com.Parameters.AddWithValue("@tamano", mTam);
                    com.Parameters.AddWithValue("@camMarca", mMar);
                    com.CommandText = "Act_MONITOR ";
                    com.ExecuteNonQuery();
                }
                //Cierras la cadena de conexión
                con.Close();
            }
        }//Fin del método

        public void ACT_TECL(string indica1, string indica2, string mConec, string mMar)
        {
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@indicar", indica1);
                    com.Parameters.AddWithValue("@indicar2", indica2);
                    com.Parameters.AddWithValue("@camConec", mConec);
                    com.Parameters.AddWithValue("@camMarca", mMar);
                    com.CommandText = "Act_TECLADO ";
                    com.ExecuteNonQuery();
                }
                //Cierras la cadena de conexión
                con.Close();
            }
        }//Fin del método

        public void ACT_MOUS(string indica1, string indica2, string mConec, string mMar)
        {
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@indica", indica1);
                    com.Parameters.AddWithValue("@indca2", indica2);
                    com.Parameters.AddWithValue("@camConec", mConec);
                    com.Parameters.AddWithValue("@camMarca", mMar);
                    com.CommandText = "Act_MOUSES ";
                    com.ExecuteNonQuery();
                }
                //Cierras la cadena de conexión
                con.Close();
            }
        }//Fin del método

        public void ACT_UBI(string indica1, string caml)
        {
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@elijo", indica1);
                    com.Parameters.AddWithValue("@cam1", caml);
                    com.CommandText = "Act_UBICACION ";
                    com.ExecuteNonQuery();
                }
                //Cierras la cadena de conexión
                con.Close();
            }
        }//Fin del método

        //-------------------------------------------------------------------------------------------------------------------------------
        //-----------------------------------------------------------ELIMINAR------------------------------------------------------------
        public void ELIMINAR_COMPO(int idCompo)
        {
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@idComp", idCompo);
                    com.CommandText = "ELIMINA_COMPONENTE";
                    com.ExecuteNonQuery();
                }
                //Cierras la cadena de conexión
                con.Close();
            }
        }//Fin del método

        public void ELIMINAR_MARCA(int idMar)
        {
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@idMar", idMar);
                    com.CommandText = "ELIMINA_MARCA";
                    com.ExecuteNonQuery();
                }
                //Cierras la cadena de conexión
                con.Close();
            }
        }//Fin del método

        public void ELIMINAR_MONITOR(int idMoni)
        {
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@Mon", idMoni);
                    com.CommandText = "ELIMINA_MONITOR";
                    com.ExecuteNonQuery();
                }
                //Cierras la cadena de conexión
                con.Close();
            }
        }//Fin del método

        public void ELIMINAR_DISCO(string idDisco)
        {
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@idDisco", idDisco);
                    com.CommandText = "ELIMINA_DISCO";
                    com.ExecuteNonQuery();
                }
                //Cierras la cadena de conexión
                con.Close();
            }
        }//Fin del método

        public void ELIMINAR_TECLADO(int idTecla)
        {
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@idTecla", idTecla);
                    com.CommandText = "ELIMINA_TECLADO";
                    com.ExecuteNonQuery();
                }
                //Cierras la cadena de conexión
                con.Close();
            }
        }//Fin del método

        public void ELIMINAR_MOUSE(int idMouse)
        {
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@idMouse", idMouse);
                    com.CommandText = "ELIMINA_MOUSE";
                    com.ExecuteNonQuery();
                }
                //Cierras la cadena de conexión
                con.Close();
            }
        }//Fin del método

        public void ELIMINAR_CPU_GEN(int idCPU)
        {
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@idCPUGEN", idCPU);
                    com.CommandText = "ELIMINA_CPU_GEN";
                    com.ExecuteNonQuery();
                }
                //Cierras la cadena de conexión
                con.Close();
            }
        }//Fin del método

        public void ELIMINAR_RAM(int idRAM)
        {
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@idRAM", idRAM);
                    com.CommandText = "ELIMINA_RAM";
                    com.ExecuteNonQuery();
                }
                //Cierras la cadena de conexión
                con.Close();
            }
        }//Fin del método

        public void ELIMINAR_TIPORAM(int idTIPORAM)
        {
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@idRAM", idTIPORAM);
                    com.CommandText = "ELIMINA_RAM";
                    com.ExecuteNonQuery();
                }
                //Cierras la cadena de conexión
                con.Close();
            }
        }//Fin del método

        public void ELIMINAR_GABINETE(int idGABI)
        {
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@idGab", idGABI);
                    com.CommandText = "ELIMINA_GABI";
                    com.ExecuteNonQuery();
                }
                //Cierras la cadena de conexión
                con.Close();
            }
        }//Fin del método

        public void ELIMINAR_TIPOCPU(int idTCPU)
        {
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@idTipo", idTCPU);
                    com.CommandText = "ELIMINA_TIPOCPU";
                    com.ExecuteNonQuery();
                }
                //Cierras la cadena de conexión
                con.Close();
            }
        }//Fin del método

        public void ELIMINAR_MODELOCPU(int idMCPU)
        {
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@idModelo", idMCPU);
                    com.CommandText = "ELIMINA_MODELOCPU";
                    com.ExecuteNonQuery();
                }
                //Cierras la cadena de conexión
                con.Close();
            }
        }//Fin del método

        public void ELIMINAR_CANTDISCO(int id)
        {
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@idModelo", id);
                    com.CommandText = "ELIMINA_CANTDISK";
                    com.ExecuteNonQuery();
                }
                //Cierras la cadena de conexión
                con.Close();
            }
        }//Fin del método

        public void ELIMINAR_CPUFINAL(string id)
        {
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@idCPU", id);
                    com.CommandText = "ELIMINAR_CPUFINAL";
                    com.ExecuteNonQuery();
                }
                //Cierras la cadena de conexión
                con.Close();
            }
        }//Fin del método

        public void ELIMINAR_ACTUALIZACION(int id)
        {
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@idACT", id);
                    com.CommandText = "ELIMINAR_ACTUALIZACION";
                    com.ExecuteNonQuery();
                }
                //Cierras la cadena de conexión
                con.Close();
            }
        }//Fin del método

        public void ELIMINAR_LABORATORIO(string labo)
        {
            using (SqlConnection con = new SqlConnection(CadConnectSql))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand())
                {
                    com.Connection = con;
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@nomLab", labo);
                    com.CommandText = "ELIMINAR_LABO";
                    com.ExecuteNonQuery();
                }
                //Cierras la cadena de conexión
                con.Close();
            }
        }//Fin del método

    }//Fin de la clase
}