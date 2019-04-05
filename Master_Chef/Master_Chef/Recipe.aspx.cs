using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Recipe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCmnt_Click(object sender, EventArgs e)
    {
        string c_date;
        c_date = DateTime.Now.ToLongDateString().ToString();
        String qrycmt = "INSERT INTO Comment(c_name,c_email,c_text) VALUES ('"+TextBox1+"','"+TextBox2+"','"+TextBox3+"')";
        string conCmnt = @"Data Source=DESKTOP-1RVC546\SQLEXPRESS; Initial Catalog=Master_Chef;Integrated Security=True";
        SqlConnection conC = new SqlConnection(conCmnt);
        conC.Open();
        SqlCommand cmdC = new SqlCommand();
        cmdC.CommandText = qrycmt;
        cmdC.Connection = conC;
        cmdC.ExecuteNonQuery();
        DataList1.DataBind();
    }
}