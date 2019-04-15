using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            Response.Redirect("~/Welcome.aspx");
        }
    }

    protected void btnLoginA_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
        con.Open();

        if (!txtUserName.Text.Equals(String.Empty) && !txtPassword.Text.Equals(String.Empty))
        {
            string queryLogin = "select count(*) from Administrator where admin_id = '" + txtUserName.Text + "' and admin_password = '" + txtPassword.Text + "'";
            SqlCommand cmdlog = new SqlCommand(queryLogin, con);

            string outputlog = cmdlog.ExecuteScalar().ToString();

            if (outputlog == "1")
            {
                Session["user"] = txtUserName.Text;
                Response.Redirect("~/Welcome.aspx");

            }

            else
            {
                //Response.Write("Login failed");
                lblLog.Text = "User name and password do not match!!!!";
            }

        }
        else
        {
            btnLoginA.Enabled = false;
            lblLog.Text = "Please Enter All Fields!!!!";
        }

    }
}