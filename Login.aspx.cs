using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MySql.Data.MySqlClient;

namespace FinalProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cCone = "Server=db4free.net;UserID=valdepenia;Database=finalprojectvald;Password=valdepeniaroot"; 
            //string cCone = "Server=localhost;UserID=root;Database=segobajax;Password=root";
            using (var con = new MySqlConnection(cCone))
            {
                con.Open();
                using (var cmd = new MySqlCommand("SELECT * FROM users", con))
                {
                    using (var reader = cmd.ExecuteReader())
                    {
                        DropDownList1.DataSource = reader;
                        DropDownList1.DataValueField = "nombre";
                        DropDownList1.DataTextField = "correo";
                        DropDownList1.DataBind();
                    }
                }
            }
        }
    }
}