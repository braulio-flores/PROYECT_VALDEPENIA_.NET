﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class RecuperarContrasenia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sesionVal = "" + Session["tipo_usr"];
            //Response.Redirect("Login.aspx");
            if (Session["tipo_usr"] != null)
            {
                Response.Redirect("Default.aspx");
            }

        }

        protected void BtnRestaurar_Click(object sender, EventArgs e)
        {

        }
    }
}