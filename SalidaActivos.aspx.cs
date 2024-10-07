using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalidaPlanta
{
    public partial class SalidaActivos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtSAFecha.Text = DateTime.Today.ToShortDateString() + " " + DateTime.Now.ToLongTimeString();
        }
    }
}