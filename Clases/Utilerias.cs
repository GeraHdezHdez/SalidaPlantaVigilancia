using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace SalidaPlanta.Clases
{
    public class Utilerias
    {
        public static string Encriptar(string pass)
        {
            StringBuilder sb = new StringBuilder();

            using (SHA256 hash= SHA256Managed.Create()) 
            {
                Encoding enc= Encoding.UTF8;
                byte[] res= hash.ComputeHash(enc.GetBytes(pass));

                foreach (byte b in res)
                {
                    sb.Append(b.ToString("x2"));
                }
            }
            return sb.ToString();
        }
    }
}