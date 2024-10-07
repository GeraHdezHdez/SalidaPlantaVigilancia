using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SalidaPlanta.Clases
{
    public class Conexion
    {
        public string conexionsql()
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["BDSP"].ConnectionString;
                return connectionString;
            }
            catch (SqlException sqlEx) { return sqlEx.ToString(); }
        }
    }
}