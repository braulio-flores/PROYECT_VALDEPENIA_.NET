﻿using MySql.Data.MySqlClient;

namespace FinalProject.Funciones
{
    public class Conexion
    {
        //public static string cCone = "Server=db4free.net;UserID=valdepenia;Database=finalprojectvald;Password=valdepeniaroot";
        public static string MyConnection2 = "datasource=localhost;port=3307;username=root;password=root";
        public static string cCone = "Server=localhost;UserID=root;Database=valdepeniaproject;Password=root";

        //Conexion AXEL
        public static string connection = "Server=localhost;Database=valdepeniaproject;User ID=root;Password=;Pooling=false;";
        //Conexion BRAULIO, SOLO CAMBIA EL PASS**
        //public static string connection = "Server=localhost;Database=valdepeniaproject;User ID=root;Password=root;Pooling=false;";
    }
}