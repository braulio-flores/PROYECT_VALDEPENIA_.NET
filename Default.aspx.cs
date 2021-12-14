using FinalProject.Funciones;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class _Default : Page
    {
        private string connection = Conexion.connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            welcomeLabel.Text = "Bienvenido " + Session["UserName"] + ", eres usuario tipo " + Session["tipo_usr"];
            
            if (Session["tipo_usr"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            //PARA MOSTRAR LOS PRODUCTOS DE LA BD AQUI
            MySqlConnection conn = new MySqlConnection(connection);
            conn.Open();

            //COMENZAMOS HACIENDO UN SLEECT DE LA TABLA PRODUCTO PARA VER LOS PRODUCTOS
            string query = "Select * From producto";
            MySqlCommand mycomand = new MySqlCommand(query, conn);            
            MySqlDataReader myreader = mycomand.ExecuteReader();
            contProduct.Text += "<ul class='productsGrid'>";
            while (myreader.Read())
            {
                contProduct.Text += "<li class='productCard'><img width=322 height = 215 src= 'Images/prueba.png'></img>";

                contProduct.Text += "<div class='infoCard'><strong>"+ myreader["nom_producto"] + "</strong><br>Precio: $" +
                    myreader["precio_producto"] + ", Marca: " + myreader["marca_producto"] + ", Descripcion: " + myreader["des_producto"] +
                    "</div></li>";
            }
            contProduct.Text += "</ul>";
            conn.Close();
            conn.Open();
            //AHORA USAMOS LA MISMA CONEXION PARA MOSTRAR LAS PROMOCIONES HACIENDO UN SELECT DE PROMOCIONES
            query = "Select * From promocion";
            mycomand = new MySqlCommand(query, conn);
            myreader = mycomand.ExecuteReader();
            contPromoc.Text += "<ul class='productsGrid'>";
            while (myreader.Read())
            {
                contPromoc.Text += "<li class='productCard'><img width=322 height = 215 src= 'Images/test.jpg'></img>";

                contPromoc.Text += "<div class='infoCard'><strong>" + myreader["nom_promocion"] + "</strong><br>Porcentaje: $" +
                    myreader["porcentaje_promocion"] + ", Validez: " + myreader["fecha_promocion"] + ", Descripcion: " + myreader["des_promocion"] +
                    "</div></li>";
            }
            
            conn.Close();

        }
    }
}