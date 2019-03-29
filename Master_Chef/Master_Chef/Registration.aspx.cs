using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
        con.Open();



        if (!txtUser.Text.Equals(String.Empty) && txtPw.Text.Equals(txtConfirmPw.Text))
        {
            string queryReg = "insert into Users (user_name,user_password) values ('" + txtUser.Text + "','" + txtConfirmPw.Text + "')";
            SqlCommand cmdreg = new SqlCommand(queryReg, con);

            cmdreg.ExecuteNonQuery();



            lblNoti.Text = "Successfully Registered!!!!";
        }
        else
        {
            btnSubmit.Enabled = false;
            lblNoti.Text = "Registration Failed!!!!";
        }




        txtUser.Text = "";
        
        txtPw.Text = "";
        txtConfirmPw.Text = "";


    }

}
