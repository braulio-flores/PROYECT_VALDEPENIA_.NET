﻿using FinalProject.Funciones;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class Membresia : System.Web.UI.Page
    {
        private string _connectionString = Conexion.connection;

        protected void Page_Load(object sender, EventArgs e)
        {
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
    }
}