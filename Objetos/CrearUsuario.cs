using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SalidaPlanta.Objetos
{
    public class CrearUsuario
    {
        public string Usuario { get; set; }
        public string Contraseña { get; set;}
        public string Nombre {get; set; }
        public string ApPaterno { get; set;}
        public string ApMaterno { get; set; }
        public string correo { get; set; }
        public int CveRol { get; set; }

        public int CveSociedad { get; set; }
        public int CveDepartamento { get; set; }
        public string PEspecial { get; set; }

    }
}