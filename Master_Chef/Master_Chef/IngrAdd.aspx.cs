using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class IngrAdd : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        List<string> keys = Request.Form.AllKeys.Where(key => key.Contains("txtDynamic")).ToList();
        int i = 1;
        foreach (string key in keys)
        {
            this.createBox("txtDynamic" + i);
            i++;
        }
    }

    protected void btngo_Click(object sender, EventArgs e)
    {
        foreach (TextBox textBox in pnlSearch.Controls.OfType<TextBox>())
        {
            string constr = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                // using (SqlCommand cmd = new SqlCommand("INSERT INTO Name(Name) VALUES(@Name)"))
                using (SqlCommand cmd = new SqlCommand("INSERT INTO Ingredients(i_name) VALUES(@Name)"))
                {
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@Name", textBox.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }



        }
        
    }

    protected void btnAddIn_Click(object sender, EventArgs e)
    {
        int index = pnlSearch.Controls.OfType<TextBox>().ToList().Count + 1;
        this.createBox("txtDynamic" + index);
    }

    private void createBox(string id)
    {
        TextBox txt = new TextBox();
        txt.ID = id;
        pnlSearch.Controls.Add(txt);
        Literal lt = new Literal();
        lt.Text = "<br />";
        pnlSearch.Controls.Add(lt);
    }


}