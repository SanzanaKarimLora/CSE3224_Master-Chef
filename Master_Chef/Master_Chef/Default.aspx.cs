using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
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
    protected void btngo_Click(object sender, EventArgs e)
    {
        try
        {
            string qu = "";
            foreach (TextBox textBox in pnlSearch.Controls.OfType<TextBox>())
            {
                List<string> li = new List<string>();
                // string[] s = new string[10];
                /*foreach (char s in Convert.ToString(textBox.Text))
                {

                    Label1.Text = Convert.ToString(s);
                }*/
                li.Add(textBox.Text);
                int size = li.Count;
                //for(int i=0; i<size;i++)
                //Label1.Text += li[i]+",";

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
                con.Open();

                // string queryPrep = "select recipe_title from Recipe where recipe_id in (select recipe_id from Recipe_Ingredients where i_id in (select i_id from Ingredients where i_name = ";

                for (int i = 0; i < size; i++)
                {
                    // queryPrep  += li[i];
                    string q = " or";
                    qu = li[i];
                    //qu += q;

                }

                string queryPrep = "select recipe_title from Recipe where recipe_id in (select recipe_id from Recipe_Ingredients where i_id in (select i_id from Ingredients where i_name ='" + qu + "'))";
                SqlCommand cmdprep = new SqlCommand(queryPrep, con);

                string outputpt = cmdprep.ExecuteScalar().ToString();

                con.Close();

                if (!string.IsNullOrEmpty(outputpt))
                    lblPrep.Text = outputpt;
                else
                    lblPrep.Text = "Not found";




            }
        }
        catch (Exception ex)
        {
            lblPrep.Text = "No item found!!!";
        }
    }
}
