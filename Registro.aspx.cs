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
    public partial class Registro : System.Web.UI.Page
    {
        private string _connectionString = Conexion.connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                using (var connection = new MySqlConnection(_connectionString))
                {
                    connection.Open();
                    using (var cmd = new MySqlCommand("SELECT * FROM estados", connection))
                    {
                        using(var reader = cmd.ExecuteReader())
                        {
                            if(reader.HasRows)
                            {
                                ddlEstatus.DataSource = reader;
                                ddlEstatus.DataTextField = "nom_estado";
                                ddlEstatus.DataValueField = "estados_id";
                                ddlEstatus.DataBind();
                            }
                        }
                    }
                    using (var cmd = new MySqlCommand("SELECT tipoempleado_id, nom_tipoempleado FROM tipoempleado", connection))
                    {
                        using (var reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                ddlTipoEmpleado.DataSource = reader;
                                ddlTipoEmpleado.DataTextField = "nom_tipoempleado";
                                ddlTipoEmpleado.DataValueField = "tipoempleado_id";
                                ddlTipoEmpleado.DataBind();
                            }
                        }
                    }
                    connection.Close();
                    connection.Dispose();
                }
            }
        }

        protected void SingUp(object sender, EventArgs e)
        {
            string connection = Conexion.connection;
            MySqlConnection conn = new MySqlConnection(connection);
            conn.Open();

            
            string query = "INSERT INTO `membresia` (`membresia_id`, `nom_miembro`, `ape_miembro`, `fechanac_miembro`, `telefono_miembro`, `email_miembro`, `nom_estado`, `fechareg_miembro`, `estatus_miembro` , `pass`) " +
                                                    "VALUES (NULL, ?name, ?apellido, ?fechaNac, ?tel, ?correo, ?estado, sysdate(), ?estatus, ?pass);";

            MySqlCommand mycomand = new MySqlCommand(query, conn);
            mycomand.Parameters.AddWithValue("?name", txtNombre.Text);
            mycomand.Parameters.AddWithValue("?apellido", txtApellidoPaterno.Text);
            mycomand.Parameters.AddWithValue("?fechaNac", txtFechaNac.Text);
            mycomand.Parameters.AddWithValue("?tel", txtTelefono.Text);
            mycomand.Parameters.AddWithValue("?correo", txtCorreo.Text);
            mycomand.Parameters.AddWithValue("?estado", ddlTipoEmpleado.Text);
            mycomand.Parameters.AddWithValue("?estatus", ddlEstatus.SelectedValue);
            mycomand.Parameters.AddWithValue("?pass", txtContrasenia.Text);

            MySqlDataReader myreader = mycomand.ExecuteReader();

            if (myreader.Read())
            {
                estatusRegistro2.Text = txtNombre.Text + " has sido registrado exitosamente";
            }
            else // SI EL REGISTRO SE HIZO EXITOSAMENTE
            {
                estatusRegistro2.Text = txtNombre.Text + ", has sido registrado exitosamente";
                confirmLabelCcontent.Visible = true;                
            }
            conn.Close();
        }
    }
}