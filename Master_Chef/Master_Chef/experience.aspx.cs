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
    int user_id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            user_id = Convert.ToInt32("select user_id from Users where user_name =  " + Session["user"].ToString());
           // user_id = Convert.ToInt32(q);
        }
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String constring = "Data Source=DESKTOP-1RVC546\\SQLEXPRESS; Initial Catalog=Master_Chef; Integrated Security=true";
        SqlConnection sqlcon = new SqlConnection(constring);
        FileUpload1.SaveAs(Server.MapPath("~/foodpic/") + Path.GetFileName(FileUpload1.FileName));
        String link = "foodpic/" + Path.GetFileName(FileUpload1.FileName);
        String query = "Insert into Experience(e_text,e_image,user_id) values('" + TextBox1.Text + "','" + link + "',user_id)";
        SqlCommand cmd = new SqlCommand(query, sqlcon);
        sqlcon.Open(); ;
        cmd.ExecuteNonQuery();
        sqlcon.Close();
        Label3.Text = "Posted Successfully";
        TextBox1.Text = "";
        
    }
}