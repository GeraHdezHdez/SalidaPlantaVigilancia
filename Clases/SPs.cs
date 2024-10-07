using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using SalidaPlanta.Objetos;

namespace SalidaPlanta.Clases
{
    public class SPs
    {
        Conexion cn= new Conexion();

        #region Procedimientos 
        public DataTable login(InicioSesion IS)
        {
            IS.dtuser = new DataTable();
            string cns = cn.conexionsql();
            SqlConnection con = new SqlConnection(cns);

            try
            {
                SqlDataAdapter adapter = new SqlDataAdapter("ValidaPerfil", con);
                adapter.SelectCommand.CommandType = CommandType.StoredProcedure;

                adapter.SelectCommand.Parameters.AddWithValue("@Username", IS.Usuario);
                adapter.SelectCommand.Parameters.AddWithValue("@Contraseña", IS.Contraseña);

                con.Open();
                adapter.Fill(IS.dtuser);
                con.Close();
                return IS.dtuser;
            }
            catch (SqlException) { return null; }
            finally { con.Close(); }
        }

        public int CrearUsuario(CrearUsuario CU) 
        {
            int val;
            string cns = cn.conexionsql();
            SqlConnection con = new SqlConnection(cns);

            try
            {
                SqlCommand command = new SqlCommand("AgregarUsuario", con);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.AddWithValue("@Username", CU.Usuario);
                command.Parameters.AddWithValue("@Contraseña", CU.Contraseña);
                command.Parameters.AddWithValue("@Nombres", CU.Nombre);
                command.Parameters.AddWithValue("@ApPaterno", CU.ApPaterno);
                command.Parameters.AddWithValue("@ApMaterno", CU.ApMaterno);
                command.Parameters.AddWithValue("@Correo", CU.correo);
                command.Parameters.AddWithValue("@CveRol", CU.CveRol);
                command.Parameters.AddWithValue("@CveSociedad", CU.CveSociedad);
                command.Parameters.AddWithValue("@CveDepartamento", CU.CveDepartamento);
                command.Parameters.AddWithValue("@PEspecial", CU.PEspecial);
                
                SqlParameter valor = new SqlParameter("@val",DbType.Int16);
                valor.Direction = ParameterDirection.ReturnValue;
                command.Parameters.Add(valor);
                con.Open();
                command.ExecuteNonQuery();
                val = Int16.Parse(command.Parameters["@val"].Value.ToString());
                con.Close();

                return val;
            }
            catch(SqlException) { return 3; }
            finally { con.Close(); }
        }
        #endregion

        #region Consultas
        public DataTable Roles()
        {
            DataTable dtrol= new DataTable();
            string cns = cn.conexionsql();
            SqlConnection con = new SqlConnection(cns);

            try
            { //Constulta de roles
                string cadena = "Select CveRol,Descripcion From Roles";

                SqlDataAdapter adapter = new SqlDataAdapter(cadena, cns);
                con.Open();
                adapter.Fill(dtrol);
                con.Close();

                return dtrol;
            }
            catch { return null; }
            finally { con.Close(); }
        }

        public DataTable Sociedades()
        {
            DataTable dtsociedad = new DataTable();
            string cns = cn.conexionsql();
            SqlConnection con = new SqlConnection(cns);

            try
            { //Constulta de roles
                string cadena = "Select CveSociedad,Descripcion from Sociedades";

                SqlDataAdapter adapter = new SqlDataAdapter(cadena, cns);
                con.Open();
                adapter.Fill(dtsociedad);
                con.Close();

                return dtsociedad;
            }
            catch { return null; }
            finally { con.Close(); }
        }

        public DataTable Departamentos()
        {
            DataTable dtdepartamento = new DataTable();
            string cns = cn.conexionsql();
            SqlConnection con = new SqlConnection(cns);

            try
            { //Constulta de Departamentos
                string cadena = "Select CveDepartamento, Descripcion From Departamentos";

                SqlDataAdapter adapter = new SqlDataAdapter(cadena, cns);
                con.Open();
                adapter.Fill(dtdepartamento);
                con.Close();

                return dtdepartamento;
            }
            catch { return null; }
            finally { con.Close(); }
        }

        public DataTable PEspecial()
        {
            DataTable dtpespecial = new DataTable();
            string cns = cn.conexionsql();
            SqlConnection con = new SqlConnection(cns);

            try
            { //Constulta de Permisos Especiales
                string cadena = "Select CveTipoS, Descripcion From TipoSalida";

                SqlDataAdapter adapter = new SqlDataAdapter(cadena, cns);
                con.Open();
                adapter.Fill(dtpespecial);
                con.Close();

                return dtpespecial;
            }
            catch { return null; }
            finally { con.Close(); }
        }

        #endregion
    }

}