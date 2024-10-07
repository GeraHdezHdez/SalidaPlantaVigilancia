using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace SalidaPlanta.Clases
{
    public class InicioSesion
    {
        public string Usuario { get; set; }
        public string Contraseña { get; set; }

        public int res { get; set; }
        public DataTable dtuser { get; set; }
    }
}