using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProject.Funciones;
using MySql.Data.MySqlClient;

namespace FinalProject
{
    public partial class Login : System.Web.UI.Page
    {
        private string connection = Conexion.connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                //SI EXISTE LA VARIABLE ES POR QUE YA HAY UNA SESION NO DEBERIA DE ESTAR AQUI
                Response.Redirect("Default.aspx");
            }
            if (!IsPostBack) {
                
            }
        }

        protected void loggeo(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection(connection);
            conn.Open();

            string query = "Select * From membresia Where email_miembro = ?correo or nom_miembro = ?name";

            MySqlCommand mycomand = new MySqlCommand(query, conn);
            mycomand.Parameters.AddWithValue("?correo", userid.Text);
            mycomand.Parameters.AddWithValue("?name", userid.Text);

            MySqlDataReader myreader = mycomand.ExecuteReader();

            if (myreader.Read())
            {
                if (myreader["pass"].ToString() == txtBoxpass.Text)
                {
                    alertID.Text = "Sesion Iniciada Correctamente";
                    Session["UserName"] = myreader["nom_miembro"].ToString();
                    Session["tipo_usr"] = myreader["tipo_usr"].ToString();
                    //Session["tipo"] = myreader["kind"].ToString();
                    Response.Redirect("Default.aspx");
                    //alertID.Text = "Bienvenido " + Session["UserName"] + ", eres usuario tipo ";
                }
                else {
                    alertID.Text = "Olvidaste tu contraseña?";
                }                
            }
            else {
                alertID.Text = "Aun no tienes sesion?";
            }
            conn.Close();
        }

        protected void lnk1_Click(object sender, EventArgs e)
        {
            //Session["UserName"] = userid.Text;
            Response.Redirect("~/Registro.aspx");
        }

        protected void lnk2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("testinLog.aspx");
        }
    }
}