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

        if (!txtUserName.Text.Equals(String.Empty) && !txtPassword.Text.Equals(String.Empty))
        {
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
                //Response.Write("Login failed");
                lblLog.Text = "User name and password do not match!!!!";
            }

        }
        else
        {
            btnLogin.Enabled = false;
            lblLog.Text = "Please Enter All Fields!!!!";
        }
       

        //SqlConnection con = new SqlConnection("Your Connection String");

       /* if (con.State == ConnectionState.Open)
        {
            string queryLogin = "";
            queryLogin = "select user_id,user_password from Users where user_id= '" + txtUserName.Text.Trim().Replace("'", "''") + "' and user_password='" + txtPassword.Text.Trim().Replace("'", "''") + "'";
            SqlCommand cmd = new SqlCommand(queryLogin, con);
            SqlDataReader readerl = cmd.ExecuteReader();
            if (readerl.Read())
            {
                //redirect to other page
                Session["user"] = txtUserName.Text;
                Response.Redirect("~/Welcome.aspx");
            }
            else
            {
                //MessageBox.Show("Please check User Name and Password");
                //txtUserName.Focus();
                Response.Write("Login failed");
            }
        }*/


    }
}
