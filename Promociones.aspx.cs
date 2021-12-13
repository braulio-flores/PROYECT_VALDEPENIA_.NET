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
                LimpiarControles();
                BindData();
            }
        }

        public void BindData()
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
                using (var cmd = new MySqlCommand("SELECT * FROM promocion", connection))
                {
                    using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            dgInventario.DataSource = reader;
                            dgInventario.DataBind();
                        }
                    }
                }
                connection.Close();
                connection.Dispose();
            }
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            using (var connection = new MySqlConnection(_connectionString))
            {
                connection.Open();
                string strCommand = $"INSERT INTO producto(nom_promocion, porcentaje_promocion, des_promocion, fecha_promocion, estatus_promocion) VALUES('{txtNombre.Text}', {Convert.ToInt32(txtPorcentaje.Text)}, '{txtDescripcion.Text}', '{txtFechaTermino.Text}', '{ddlEstatus.SelectedValue}')";
                using (var cmd = new MySqlCommand(strCommand, connection))
                {
                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Console.WriteLine("OK");
                        BindData();
                    }
                }
                using (var cmd = new MySqlCommand("SELECT * FROM producto", connection))
                {
                    using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            dgInventario.DataSource = reader;
                            dgInventario.DataBind();
                        }
                    }
                }
                connection.Close();
                connection.Dispose();
                LimpiarControles();
            }
        }

        protected void BtnModificar_Click(object sender, EventArgs e)
        {
            using (var connection = new MySqlConnection(_connectionString))
            {
                connection.Open();
                string uptadeCommand = $"UPDATE producto SET nom_promocion = '{txtNombre.Text}', porcentaje_promocion = {Convert.ToInt32(txtPorcentaje.Text)}, des_promocion = '{txtDescripcion.Text}', fecha_promocion = '{txtFechaTermino.Text}', estatus_promocion = '{ddlEstatus.SelectedValue}' WHERE promocion_id = {Convert.ToInt32(hiddenId.Value)}";
                using (var cmd = new MySqlCommand(uptadeCommand, connection))
                {
                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Console.WriteLine("OK");
                        BindData();
                    }
                }
                using (var cmd = new MySqlCommand("SELECT * FROM promocion", connection))
                {
                    using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            dgInventario.DataSource = reader;
                            dgInventario.DataBind();
                        }
                    }
                }
                connection.Close();
                connection.Dispose();
                LimpiarControles();
            }
        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            using (var connection = new MySqlConnection(_connectionString))
            {
                connection.Open();
                string uptadeCommand = $"DELETE FROM promocion WHERE promocion_id = {Convert.ToInt32(hiddenId.Value)}";
                using (var cmd = new MySqlCommand(uptadeCommand, connection))
                {
                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Console.WriteLine("OK");
                        BindData();
                    }
                }
                using (var cmd = new MySqlCommand("SELECT * FROM promocion", connection))
                {
                    using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            dgInventario.DataSource = reader;
                            dgInventario.DataBind();
                        }
                    }
                }
                connection.Close();
                connection.Dispose();
            }
        }
        public void LimpiarControles()
        {
            hiddenId.Value = null;
            txtNombre.Text = string.Empty;
            txtPorcentaje.Text = string.Empty;
            txtNombrePromocion.Text = string.Empty;
            txtFechaTermino.Text = string.Empty;
            ddlEstatus.SelectedIndex = 0;
            txtDescripcion.Text = string.Empty;
            txtFechaInicio.Text = string.Empty;
            BtnEliminar.Enabled = false;
        }

        protected void BtnLimpiar_Click(object sender, EventArgs e)
        {
            LimpiarControles();
        }

        protected void BtnRellenar_Click(object sender, EventArgs e)
        {

        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            using (var connection = new MySqlConnection(_connectionString))
            {
                connection.Open();
                string searchCommand = (txtNombrePromocion.Text.Equals(string.Empty)) ? "SELECT * FROM promocion " : $"SELECT * FROM promocion WHERE nom_promocion LIKE '%{txtNombrePromocion.Text}%'";
                using (var cmd = new MySqlCommand(searchCommand, connection))
                {
                    using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            dgInventario.DataSource = reader;
                            dgInventario.DataBind();
                        }
                    }
                }
                connection.Close();
                connection.Dispose();
            }
        }

        protected void dgInventario_EditCommand(object source, DataGridCommandEventArgs e)
        {
            dgInventario.EditItemIndex = e.Item.ItemIndex;
            int promocionId = (int)dgInventario.DataKeys[(int)e.Item.ItemIndex];
            using (var connection = new MySqlConnection(_connectionString))
            {
                connection.Open();
                using (var cmd = new MySqlCommand($"SELECT * FROM promocion WHERE promocion_id = {promocionId}", connection))
                {
                    using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            if (reader.Read())
                            {
                                hiddenId.Value = promocionId.ToString();
                                txtNombre.Text = reader["nom_promocion"].ToString();
                                txtPorcentaje.Text = reader["porcentaje_promocion"].ToString();
                                txtDescripcion.Text = reader["des_promocion"].ToString();
                                txtFechaInicio.Text = DateTime.Now.ToString();
                                txtFechaTermino.Text = reader["fecha_promocion"].ToString();
                                var res = reader["estatus_promocion"].ToString();
                                ddlEstatus.SelectedIndex = (Convert.ToInt32(reader["estatus_promocion"]) == 1) ? 0 : 1;

                                BtnGuardar.Enabled = false;
                                BtnEliminar.Enabled = true;
                                BtnModificar.Enabled = true;
                            }
                        }
                    }
                }
                connection.Close();
                connection.Dispose();
            }
        }

        protected void dgInventario_SelectedIndexChanged(object sender, EventArgs e)
        {
            int promocionId = Convert.ToInt32(dgInventario.SelectedItem.Cells[0].Text);
            using (var connection = new MySqlConnection(_connectionString))
            {
                connection.Open();
                using (var cmd = new MySqlCommand($"SELECT * FROM promocion WHERE producto_id = {promocionId}", connection))
                {
                    using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            if (reader.Read())
                            {
                                hiddenId.Value = promocionId.ToString();
                                txtNombre.Text = reader["nom_promocion"].ToString();
                                txtPorcentaje.Text = reader["porcentaje_promocion"].ToString();
                                txtDescripcion.Text = reader["des_promocion"].ToString();
                                txtFechaInicio.Text = DateTime.Now.ToString();
                                txtFechaTermino.Text = reader["fecha_promocion"].ToString();
                                var res = reader["estatus_promocion"].ToString();
                                ddlEstatus.SelectedIndex = (Convert.ToInt32(reader["estatus_promocion"]) == 1) ? 0 : 1;
                                txtDescripcion.Text = reader["des_producto"].ToString();

                                BtnGuardar.Enabled = false;
                                BtnEliminar.Enabled = true;
                                BtnModificar.Enabled = true;
                            }
                        }
                    }
                }
                connection.Close();
                connection.Dispose();
            }
        }
    }
}