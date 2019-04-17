using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class experience : System.Web.UI.Page
{
    string q;
    string user_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            //String constring = "Data Source=DESKTOP-1RVC546\\SQLEXPRESS; Initial Catalog=Master_Chef; Integrated Security=true";
            //SqlConnection sqlcon = new SqlConnection(constring);
            //user_id = "select user_id from Users where user_name =  " + Session["user"].ToString();
            // user_id = Convert.ToInt32(q);
            //SqlCommand cmd = new SqlCommand(user_id, sqlcon);
            //sqlcon.Open(); ;
            //cmd.ExecuteNonQuery();
            //sqlcon.Close();
        }
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String constring = "Data Source=DESKTOP-1RVC546\\SQLEXPRESS; Initial Catalog=Master_Chef; Integrated Security=true";
        SqlConnection sqlcon = new SqlConnection(constring);
        FileUpload1.SaveAs(Server.MapPath("~/foodpic/") + Path.GetFileName(FileUpload1.FileName));
        String link = "foodpic/" + Path.GetFileName(FileUpload1.FileName);
        String query = "Insert into Experience(e_text,e_image) values('" + TextBox1.Text + "','" + link + "')";
        SqlCommand cmd = new SqlCommand(query, sqlcon);
        sqlcon.Open(); ;
        cmd.ExecuteNonQuery();
        sqlcon.Close();
        Label3.Text = "Posted Successfully";
        TextBox1.Text = "";
        
    }
}