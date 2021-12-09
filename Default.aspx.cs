using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            welcomeLabel.Text = "Bienvenido " + Session["UserName"] + ", eres usuario tipo " + Session["tipo_usr"];
            
            if (Session["tipo_usr"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            
        }
    }
}