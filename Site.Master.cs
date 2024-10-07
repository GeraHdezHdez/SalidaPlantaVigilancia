using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalidaPlanta
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.AppendHeader("Cache-Control", "no-store");

            //if (Session["cvRol"]==null)
            //    Response.Redirect("Login.aspx");

            //if (Session["AlertaInicio"] == null)
            //{
            //    ScriptManager.RegisterStartupScript(this, GetType(), "SweetAlertToast", @"const Toast = Swal.mixin({toast: true, position: 'top-end',showConfirmButton: false,
            //            timer: 3500, timerProgressBar: true, didOpen: (toast) => { toast.addEventListener('mouseenter', Swal.stopTimer);toast.addEventListener('mouseleave', Swal.resumeTimer);
            //            } }); Toast.fire({ icon: 'success', title: 'Inicio de sesión correcto'});", true);

            //    Session["AlertaInicio"] = true;

            //}

            //if(!IsPostBack)
            //{
            //    int rol = Convert.ToInt32(Session["cvRol"].ToString());
            //    switch (rol)
            //    {
            //        case 1:
            //            //Usuarios

            //            linkUsuarios.Visible = true;
            //            TagUsuarios.Visible = true;
            //            linkCUser.Visible=true;
            //            linkEUser.Visible=true;
            //            linkMUser.Visible=true;

            //            // Tipos de Salidas

            //            TagTipos.Visible=true;
            //            linkTipos.Visible = true;
            //            linkSalidaP.Visible=true;
            //            linkSMP.Visible=true;
            //            linkSActivos.Visible=true;

            //            //Autorizaciones

            //            linkAtorizaciones.Visible=true;
            //            TagAutorizar.Visible=true;
            //            linkASalida.Visible=true;
            //            linkAVigilancia.Visible=true;


            //            //Regreso
            //            tagRegreso.Visible=true;
            //            linkReingresar.Visible=true;
            //            linkExtnder.Visible=true;

            //            break;

            //        case 2:

            //            //Usuarios

            //            linkUsuarios.Visible = false;
            //            TagUsuarios.Visible = false;
            //            linkCUser.Visible = false;
            //            linkEUser.Visible = false;
            //            linkMUser.Visible = false;

            //            // Tipos de Salidas

            //            TagTipos.Visible = true;
            //            linkTipos.Visible = true;
            //            linkSalidaP.Visible = true;
            //            linkSMP.Visible = false;
            //            linkSActivos.Visible = false;

            //            //Autorizaciones

            //            linkAtorizaciones.Visible = true;
            //            TagAutorizar.Visible = true;
            //            linkASalida.Visible = false;
            //            linkAVigilancia.Visible = true;


            //            //Regreso
            //            tagRegreso.Visible = true;
            //            linkReingresar.Visible = true;
            //            linkExtnder.Visible = false;

            //            break;

            //        case 3:

            //            //Usuarios

            //            linkUsuarios.Visible = false;
            //            TagUsuarios.Visible = false;
            //            linkCUser.Visible = false;
            //            linkEUser.Visible = false;
            //            linkMUser.Visible = false;

            //            // Tipos de Salidas

            //            TagTipos.Visible = true;
            //            linkTipos.Visible = true;
            //            linkSalidaP.Visible = true;
            //            linkSMP.Visible = true;
            //            linkSActivos.Visible = true;

            //            //Autorizaciones

            //            linkAtorizaciones.Visible = false;
            //            TagAutorizar.Visible = false;
            //            linkASalida.Visible = false;
            //            linkAVigilancia.Visible = false;


            //            //Regreso
            //            tagRegreso.Visible = true;
            //            linkReingresar.Visible = false;
            //            linkExtnder.Visible = false;

            //            break;

            //        case 4:
            //            //Usuarios

            //            linkUsuarios.Visible = false;
            //            TagUsuarios.Visible = false;
            //            linkCUser.Visible = false;
            //            linkEUser.Visible = false;
            //            linkMUser.Visible = false;

            //            // Tipos de Salidas

            //            TagTipos.Visible = true;
            //            linkTipos.Visible = true;
            //            linkSalidaP.Visible = true;
            //            linkSMP.Visible = false;
            //            linkSActivos.Visible = false;

            //            //Autorizaciones

            //            linkAtorizaciones.Visible = true;
            //            TagAutorizar.Visible = true;
            //            linkASalida.Visible = true;
            //            linkAVigilancia.Visible = false;


            //            //Regreso
            //            tagRegreso.Visible = true;
            //            linkReingresar.Visible = false;
            //            linkExtnder.Visible = true;
            //            break;

            //        case 5:

            //            //Usuarios

            //            linkUsuarios.Visible = false;
            //            TagUsuarios.Visible = false;
            //            linkCUser.Visible = false;
            //            linkEUser.Visible = false;
            //            linkMUser.Visible = false;

            //            // Tipos de Salidas

            //            TagTipos.Visible = false;
            //            linkTipos.Visible = false;
            //            linkSalidaP.Visible = false;
            //            linkSMP.Visible = false;
            //            linkSActivos.Visible = false;

            //            //Autorizaciones

            //            linkAtorizaciones.Visible = false;
            //            TagAutorizar.Visible = false;
            //            linkASalida.Visible = false;
            //            linkAVigilancia.Visible = false;


            //            //Regreso
            //            tagRegreso.Visible = true;
            //            linkReingresar.Visible = true;
            //            linkExtnder.Visible = false;
            //            break;

            //        case 6:

            //        //Usuarios

            //            linkUsuarios.Visible = true;
            //            TagUsuarios.Visible = true;
            //            linkCUser.Visible = false;
            //            linkEUser.Visible = false;
            //            linkMUser.Visible = true;

            //            // Tipos de Salidas

            //            TagTipos.Visible = true;
            //            linkTipos.Visible = true;
            //            linkSalidaP.Visible = true;
            //            linkSMP.Visible = false;
            //            linkSActivos.Visible = true;

            //            //Autorizaciones

            //            linkAtorizaciones.Visible = false;
            //            TagAutorizar.Visible = false;
            //            linkASalida.Visible = false;
            //            linkAVigilancia.Visible = false;


            //            //Regreso
            //            tagRegreso.Visible = false;
            //            linkReingresar.Visible = false;
            //            linkExtnder.Visible = false;

            //        break;
            //        default:

            //            break;
            //    }

            //    LblSMUsuario.Text = Session["Nombre"].ToString();
            //    LblSociedad.Text= Session["Sociedad"].ToString() ;
            //}
        }
    }
}