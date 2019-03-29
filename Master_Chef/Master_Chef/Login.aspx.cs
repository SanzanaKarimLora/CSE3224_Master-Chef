using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            Response.Redirect("~/Welcome.aspx");
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
        con.Open();

        string queryLogin = "select count(*) from Users where user_name = '" + txtUserName.Text + "' and user_password = '" + txtPassword.Text + "'";
        SqlCommand cmdlog = new SqlCommand(queryLogin, con);

        string outputlog = cmdlog.ExecuteScalar().ToString();

        if (outputlog == "1")
        {
            Session["user"] = txtUserName.Text;
            Response.Redirect("~/Welcome.aspx");

        }

        else
        {
            Response.Write("Login failed");
        }


    }
}
