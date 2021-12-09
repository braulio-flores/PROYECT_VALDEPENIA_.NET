using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sesionVal = "" + Session["tipo_usr"];
            if (Session["tipo_usr"] == null)
            {
                navMain.Visible = true;
                navLogAdm.Visible = false;
                navLogUser.Visible = false;
            }
            if (sesionVal == "1")
            {
                navLogAdm.Visible = true;
                navLogUser.Visible = false;
                navMain.Visible = false;
            }
            if (sesionVal == "0") {
                navLogUser.Visible = true;
                navLogAdm.Visible = false;
                navMain.Visible = false;
            }
        }

        protected void cerrarSesion_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
    }
}