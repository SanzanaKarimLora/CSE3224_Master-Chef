using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class UserRecipeAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String constring = "Data Source=DESKTOP-1RVC546\\SQLEXPRESS; Initial Catalog=Master_Chef; Integrated Security=true";
        SqlConnection sqlcon = new SqlConnection(constring);
        FileUpload1.SaveAs(Server.MapPath("~/foodpic/") + Path.GetFileName(FileUpload1.FileName));
        String link = "foodpic/" + Path.GetFileName(FileUpload1.FileName);
        String query = "Insert into Recipe(recipe_title,category,preparation_time,description,recipe_image) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "','" + link + "')";
        SqlCommand cmd = new SqlCommand(query, sqlcon);
        sqlcon.Open(); ;
        cmd.ExecuteNonQuery();
        sqlcon.Close();
        Label2.Text = "Data Has Been Saved Successfully";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox5.Text = "";
    }
}