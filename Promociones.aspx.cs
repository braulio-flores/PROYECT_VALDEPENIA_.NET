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
    public partial class Promociones : System.Web.UI.Page
    {
        private string _connectionString = Conexion.connection;

        protected void Page_Load(object sender, EventArgs e)
        {
            string sesionVal = "" + Session["tipo_usr"];
            //Response.Redirect("Login.aspx");
            if (Session["tipo_usr"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            if (sesionVal == "0")
            {
                Response.Redirect("Default.aspx");
            }
            if (!IsPostBack)
            {
                using (var connection = new MySqlConnection(_connectionString))
                {
                    connection.Open();
                    using (var cmd = new MySqlCommand("SELECT * FROM estados", connection))
                    {
                        using (var reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                ddlEstatus.DataSource = reader;
                                ddlEstatus.DataTextField = "nom_estado";
                                ddlEstatus.DataValueField = "estados_id";
                                ddlEstatus.DataBind();
                            }
                        }
                    }
                }
            }
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {

        }

        protected void BtnModificar_Click(object sender, EventArgs e)
        {

        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {

        }

        protected void BtnLimpiar_Click(object sender, EventArgs e)
        {

        }

        protected void BtnRellenar_Click(object sender, EventArgs e)
        {

        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {

        }
    }
}