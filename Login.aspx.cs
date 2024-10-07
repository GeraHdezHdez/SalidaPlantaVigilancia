using SalidaPlanta.Clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalidaPlanta
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AppendHeader("Cache-Control", "no-store");
        }

        protected void BtnIngresar_Click(object sender, EventArgs e)
        {
            if (TxtCorreo.Text == "" || TxtPassword.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "SweetAlert", "Swal.fire('Ooops', 'Todos los campos son obligatorios', 'warning');", true);
            }
            else
            {
                SPs sp= new SPs();
                InicioSesion IS = new InicioSesion();
                IS.Usuario= TxtCorreo.Text;
                IS.Contraseña= TxtPassword.Text;

                IS.dtuser= sp.login(IS);
                if(IS.dtuser.Columns.Count > 0)
                {
                    Session["User"] = TxtCorreo.Text;
                    Session["Nombre"] = IS.dtuser.Rows[0][0].ToString();
                    Session["Sociedad"] = IS.dtuser.Rows[0][2].ToString();
                    Session["Departamento"] = IS.dtuser.Rows[0][3].ToString();
                    Session["cvRol"] = IS.dtuser.Rows[0][4].ToString();
                    Session["Rol"] = IS.dtuser.Rows[0][5].ToString();

                    Response.Redirect("Index.aspx");
                }
                else
                ScriptManager.RegisterStartupScript(this, GetType(), "SweetAlert", "Swal.fire('Error', 'Usuario o contraseña incorrectos', 'error');", true);

            }
                
        }
    }
}