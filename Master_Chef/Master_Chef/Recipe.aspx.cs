using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Recipe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
            con.Open();

             string queryPrep = "select preparation_time from Recipe where recipe_id = 3";
             SqlCommand cmdprep = new SqlCommand(queryPrep, con);
             string outputpt = cmdprep.ExecuteScalar().ToString();
             lblPrep.Text = outputpt;

            string queryCate = "select category from Recipe where recipe_id = 3";
             SqlCommand cmdcate = new SqlCommand(queryCate, con);
             string outputcate = cmdcate.ExecuteScalar().ToString();
             lblCate.Text = outputcate;

           string queryCal = "select SUM(quantity*calorie)/1000 from Ingredients,Recipe,Recipe_Ingredients where Recipe.recipe_id=Recipe_Ingredients.recipe_id and Recipe_Ingredients.i_id=Ingredients.i_id";
             SqlCommand cmdcal = new SqlCommand(queryCal, con);
             string outputcal = cmdcal.ExecuteScalar().ToString();
             lblCal.Text = outputcal;

        string queryDescription = "select description from Recipe where recipe_id = 3";
            SqlCommand cmddes = new SqlCommand(queryDescription, con);

            string outputdes = cmddes.ExecuteScalar().ToString();
            lblDescription.Text=outputdes;
        }

    protected void btnCmnt_Click(object sender, EventArgs e)
    {

        String c_date;
        c_date = DateTime.Now.ToLongDateString().ToString();
        String qrycmt = "INSERT INTO Comment(c_name,c_email,c_text,c_date) VALUES ('"+txtNameC.Text+"','"+txtEmailC.Text+"','"+txtCmnt.Text+"','"+c_date+"')";
        String conCmnt = @"Data Source=DESKTOP-1RVC546\SQLEXPRESS; Initial Catalog=Master_Chef;Integrated Security=True";
        SqlConnection conC = new SqlConnection(conCmnt);
        conC.Open();
        SqlCommand cmdC = new SqlCommand();
        cmdC.CommandText = qrycmt;
        cmdC.Connection = conC;
        cmdC.ExecuteNonQuery();
        DataList1.DataBind();
    }
}