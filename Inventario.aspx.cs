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
    public partial class Inventario : System.Web.UI.Page
    {
        private string _connectionString = Conexion.connection;

        protected void Page_Load(object sender, EventArgs e)
        {
            BtnEliminar.Enabled = false;
            BtnModificar.Enabled = false;
           // txtPrecio.Text = string.Format("{0:#,##0.00}", double.Parse(txtPrecio.Text));
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
            }
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            using (var connection = new MySqlConnection(_connectionString))
            {
                connection.Open();
                string strCommand = $"INSERT INTO producto(nom_producto, precio_producto, marca_producto, existencia_producto, fechaprov_producto, estatus_producto, des_producto) VALUES('{txtNombre.Text}', {Convert.ToDouble(txtPrecio.Text)}, '{txtMarca.Text}', {Convert.ToInt32(txtExistencia.Text)}, sysdate(), '{ddlEstatus.SelectedValue}', '{txtDescripcion.Text}')";
                using (var cmd = new MySqlCommand(strCommand, connection))
                {
                    int rowsAffected = cmd.ExecuteNonQuery();
                    if(rowsAffected > 0)
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
                string uptadeCommand = $"UPDATE producto SET nom_producto = '{txtNombre.Text}', precio_producto = {Convert.ToDouble(txtPrecio.Text)}, marca_producto = '{txtMarca.Text}', existencia_producto = {Convert.ToInt32(txtExistencia.Text)}, estatus_producto = '{ddlEstatus.SelectedValue}', des_producto = '{txtDescripcion.Text}' WHERE producto_id = {Convert.ToInt32(hiddenId.Value)}";
                using (var cmd = new MySqlCommand(uptadeCommand, connection))
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

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            using (var connection = new MySqlConnection(_connectionString))
            {
                connection.Open();
                string uptadeCommand = $"DELETE FROM producto WHERE producto_id = {Convert.ToInt32(hiddenId.Value)}";
                using (var cmd = new MySqlCommand(uptadeCommand, connection))
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
            }
        }

        public void LimpiarControles()
        {
            hiddenId.Value = null;
            txtNombre.Text = string.Empty;
            txtPrecio.Text = string.Empty;
            txtMarca.Text = string.Empty;
            txtExistencia.Text = string.Empty;
            ddlEstatus.SelectedIndex = 0;
            txtDescripcion.Text = string.Empty;
            txtIdProducto2.Text = string.Empty;
            txtNombreProducto.Text = string.Empty;
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
                string searchCommand = (txtNombreProducto.Text.Equals(string.Empty)) ? "SELECT * FROM producto " : $"SELECT * FROM producto WHERE nom_producto LIKE '%{txtNombreProducto.Text}%'";
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
            int productoId = (int)dgInventario.DataKeys[(int)e.Item.ItemIndex];
            using (var connection = new MySqlConnection(_connectionString))
            {
                connection.Open();
                using (var cmd = new MySqlCommand($"SELECT * FROM producto WHERE producto_id = {productoId}", connection))
                {
                    using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            if (reader.Read())
                            {
                                hiddenId.Value = productoId.ToString();
                                txtNombre.Text = reader["nom_producto"].ToString();
                                txtPrecio.Text = reader["precio_producto"].ToString();
                                txtMarca.Text = reader["marca_producto"].ToString();
                                txtExistencia.Text = reader["existencia_producto"].ToString();
                                var res = reader["estatus_producto"].ToString();
                                ddlEstatus.SelectedIndex = (Convert.ToInt32(reader["estatus_producto"]) == 1) ? 0 : 1;
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

        protected void dgInventario_SelectedIndexChanged(object sender, EventArgs e)
        {
            int productoId = Convert.ToInt32(dgInventario.SelectedItem.Cells[0].Text);
            using (var connection = new MySqlConnection(_connectionString))
            {
                connection.Open();
                using (var cmd = new MySqlCommand($"SELECT * FROM producto WHERE producto_id = {productoId}", connection))
                {
                    using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            if (reader.Read())
                            {
                                hiddenId.Value = productoId.ToString();
                                txtNombre.Text = reader["nom_producto"].ToString();
                                txtPrecio.Text = reader["precio_producto"].ToString();
                                txtMarca.Text = reader["marca_producto"].ToString();
                                txtExistencia.Text = reader["existencia_producto"].ToString();
                                var res = reader["estatus_producto"].ToString();
                                ddlEstatus.SelectedIndex = (Convert.ToInt32(reader["estatus_producto"]) == 1) ? 0 : 1;
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