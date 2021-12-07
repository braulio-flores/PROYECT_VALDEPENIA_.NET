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
        private string cCone = Conexion.cCone;
        private string connection = Conexion.connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                alertID.Text = "Bienvenido " + Session["UserName"] ;
            }
            //using (var con = new MySqlConnection(cCone))
            //{
            //    con.Open();
            //    using (var cmd = new MySqlCommand("SELECT * FROM users", con))
            //    {
            //        using (var reader = cmd.ExecuteReader())
            //        {
            //            DropDownList1.DataSource = reader;
            //            DropDownList1.DataValueField = "name_";
            //            DropDownList1.DataTextField = "correo";
            //            DropDownList1.DataBind();
            //        }
            //    }
            //    con.Close();
            //}
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
                    Session["nom_miembro"] = myreader["name_"].ToString();
                    //Session["tipo"] = myreader["kind"].ToString();
                    alertID.Text = "Bienvenido " + Session["UserName"] + ", eres usuario tipo ";
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
            Session["UserName"] = userid.Text;
            Response.Redirect("testinLog.aspx");
        }

        protected void lnk2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("testinLog.aspx");
        }
    }
}