using SalidaPlanta.Clases;
using SalidaPlanta.Objetos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalidaPlanta
{
    public partial class Crear_Usuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                TxbCorreo.Attributes.Add("autocomplete", "off");
                TxbContraseña.Attributes.Add("autocomplete", "off");
                TxbNUsuario.Attributes.Add("autocomplete", "off");

                SPs SP = new SPs();
                DataTable dtrol = new DataTable();
                DataTable dtdepa= new DataTable();
                DataTable dtsocie = new DataTable();
                DataTable dtpespe = new DataTable();

                dtrol = SP.Roles();
                dtdepa = SP.Departamentos();
                dtsocie= SP.Sociedades();
                dtpespe = SP.PEspecial();
                if (dtrol.Rows.Count > 0)
                {
                    DDLRol.DataSource = dtrol;
                    DDLRol.DataValueField = "CveRol";
                    DDLRol.DataTextField = "Descripcion";
                    DDLRol.DataBind();

                    DDLSocied.DataSource = dtsocie;
                    DDLSocied.DataValueField = "CveSociedad";
                    DDLSocied.DataTextField = "Descripcion";
                    DDLSocied.DataBind();

                    DDLDepa.DataSource = dtdepa;
                    DDLDepa.DataValueField = "CveDepartamento";
                    DDLDepa.DataTextField = "Descripcion";
                    DDLDepa.DataBind();

                    LBPespe.DataSource = dtpespe;
                    LBPespe.DataValueField = "CveTipoS";
                    LBPespe.DataTextField = "Descripcion";
                    LBPespe.DataBind();

                }
            }
        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {             
            CrearUsuario cus= new CrearUsuario();
            SPs sp = new SPs();
            int val;

            cus.Usuario = TxbNUsuario.Text;
            cus.Contraseña = TxbContraseña.Text;
            cus.Nombre = TxbNombre.Text;
            cus.ApPaterno = TxbAPaterno.Text;
            cus.ApMaterno = TxbAMaterno.Text;
            cus.correo = TxbCorreo.Text;
            cus.CveDepartamento= Convert.ToInt16(DDLDepa.SelectedValue.ToString());
            cus.CveRol = Convert.ToInt16(DDLRol.SelectedValue.ToString());
            cus.CveSociedad= Convert.ToInt16(DDLSocied.SelectedValue.ToString());

            List<string> elementosSeleccionados = new List<string>();
            foreach (ListItem i in LBPespe.Items)
            {
                if (i.Selected)
                {
                    elementosSeleccionados.Add(i.Value);
                }
            }
            cus.PEspecial = string.Join("|", elementosSeleccionados);

            val = sp.CrearUsuario(cus);

            switch (val) 
            {
                case 0:
                    ScriptManager.RegisterStartupScript(this, GetType(), "SweetAlert", "Swal.fire('Error', 'Error', 'error');", true);
                    break;

                case 1:
                    TxbNUsuario.Text = "";
                    TxbContraseña.Text = "";
                    TxbNombre.Text = "";
                    TxbAMaterno.Text = "";
                    TxbAPaterno.Text = "";
                    TxbCorreo.Text = "";
                    LBPespe.SelectedIndex = 0;
                    ScriptManager.RegisterStartupScript(this, GetType(), "SweetAlert", "Swal.fire('Listo', 'El usuario se creó correctamente', 'success');", true);
                    break;

                case 2:
                    ScriptManager.RegisterStartupScript(this, GetType(), "SweetAlert", "Swal.fire('Error', 'El usuario ya existe', 'error');", true);
                    break;

                default:
                    ScriptManager.RegisterStartupScript(this, GetType(), "SweetAlert", "Swal.fire('Error', 'El usuario ya existe', 'error');", true);
                    break;
            }
            
        }
    }
}