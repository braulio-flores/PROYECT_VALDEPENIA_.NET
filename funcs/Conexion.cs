using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MySql.Data.MySqlClient;

namespace FinalProject.funcs
{
    public class Conexion
    {
        //public static string cCone = "Server=db4free.net;UserID=valdepenia;Database=finalprojectvald;Password=valdepeniaroot";
        public static string MyConnection2 = "datasource=localhost;port=3307;username=root;password=root";
        public static string cCone = "Server=localhost;UserID=root;Database=valdepeniaproject;Password=root";
        public static string conexion = "Server=localhost;Database=valdepeniaproject;User ID=root;Password=root;Pooling=false;";
    }
}