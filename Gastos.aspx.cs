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
    public partial class Gastos : System.Web.UI.Page
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
                using (var cmd = new MySqlCommand("SELECT * FROM gastos", connection))
                {
                    using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            dgGastos.DataSource = reader;
                            dgGastos.DataBind();
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
                //AQUI DECIA PRODUCTO, PERO ES PROMOCION NO?
                string strCommand = $"INSERT INTO gastos(nom_gasto, des_gasto, total_gasto, fecha_gasto) VALUES('{txtTipoGasto.Text}', '{txtDescripcion.Text}', {Convert.ToInt32(txtTotal.Text)}, '{txtFechaGasto.Text}')";
                using (var cmd = new MySqlCommand(strCommand, connection))
                {
                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Console.WriteLine("OK");
                    }
                }
                connection.Close();
                connection.Dispose();
                BindData();
                LimpiarControles();
            }
        }

        protected void BtnModificar_Click(object sender, EventArgs e)
        {
            using (var connection = new MySqlConnection(_connectionString))
            {
                connection.Open();
                string uptadeCommand = $"UPDATE gastos SET nom_gasto = '{txtTipoGasto.Text}', total_gasto = {Convert.ToInt32(txtTotal.Text)}, des_gasto= '{txtDescripcion.Text}', fecha_gasto = '{txtFechaGasto.Text}' WHERE gastos_id = {Convert.ToInt32(hiddenId.Value)}";
                using (var cmd = new MySqlCommand(uptadeCommand, connection))
                {
                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Console.WriteLine("OK");
                    }
                }
                connection.Close();
                connection.Dispose();
                BindData();
                LimpiarControles();
            }
        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            using (var connection = new MySqlConnection(_connectionString))
            {
                connection.Open();
                string uptadeCommand = $"DELETE FROM gastos WHERE gastos_id = {Convert.ToInt32(hiddenId.Value)}";
                using (var cmd = new MySqlCommand(uptadeCommand, connection))
                {
                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Console.WriteLine("OK");
                    }
                }
                connection.Close();
                connection.Dispose();
                BindData();
                LimpiarControles();
            }
        }
        public void LimpiarControles()
        {
            hiddenId.Value = null;
            txtTipoGasto.Text = string.Empty;
            txtTotal.Text = string.Empty;
            txtDescripcion.Text = string.Empty;
            txtFechaGasto.Text = string.Empty;
            txtBuscar.Text = string.Empty;
            BtnEliminar.Enabled = false;
        }

        protected void BtnLimpiar_Click(object sender, EventArgs e)
        {
            LimpiarControles();
        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            using (var connection = new MySqlConnection(_connectionString))
            {
                connection.Open();
                string searchCommand = (txtBuscar.Text.Equals(string.Empty)) ? "SELECT * FROM gastos " : $"SELECT * FROM gastos WHERE nom_gasto LIKE '%{txtBuscar.Text}%'";
                using (var cmd = new MySqlCommand(searchCommand, connection))
                {
                    using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            dgGastos.DataSource = reader;
                            dgGastos.DataBind();
                        }
                    }
                }
                connection.Close();
                connection.Dispose();
                LimpiarControles();
            }
        }

        protected void dgInventario_EditCommand(object source, DataGridCommandEventArgs e)
        {
            dgGastos.EditItemIndex = e.Item.ItemIndex;
            int gastoId = (int)dgGastos.DataKeys[(int)e.Item.ItemIndex];
            using (var connection = new MySqlConnection(_connectionString))
            {
                connection.Open();
                using (var cmd = new MySqlCommand($"SELECT * FROM gastos WHERE gastos_id = {gastoId}", connection))
                {
                    using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            if (reader.Read())
                            {
                                hiddenId.Value = gastoId.ToString();
                                txtTipoGasto.Text = reader["nom_gasto"].ToString();
                                txtTotal.Text = reader["total_gasto"].ToString();
                                txtDescripcion.Text = reader["des_gasto"].ToString();
                                txtFechaGasto.Text = reader["fecha_gasto"].ToString();
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
            int gastosId = Convert.ToInt32(dgGastos.SelectedItem.Cells[0].Text);
            using (var connection = new MySqlConnection(_connectionString))
            {
                connection.Open();
                using (var cmd = new MySqlCommand($"SELECT * FROM gastos WHERE gastos_id = {gastosId}", connection))
                {
                    using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            if (reader.Read())
                            {
                                hiddenId.Value = gastosId.ToString();
                                txtTipoGasto.Text = reader["nom_gasto"].ToString();
                                txtTotal.Text = reader["total_gasto"].ToString();
                                txtDescripcion.Text = reader["des_gasto"].ToString();
                                txtFechaGasto.Text = reader["fecha_gasto"].ToString();
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