using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class RecipeManage : System.Web.UI.Page
{
    string conStringManage = @"Data Source=DESKTOP-1RVC546\SQLEXPRESS; Initial Catalog=Master_Chef;Integrated Security=True";
    

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            manageGridView();
        }
    }

    void manageGridView()
    {
        DataTable dtbl = new DataTable();
        using (SqlConnection sqlConManage = new SqlConnection(conStringManage))
        {
            sqlConManage.Open();
            SqlDataAdapter sqlDM = new SqlDataAdapter("select * from Recipe", sqlConManage);
            
            sqlDM.Fill(dtbl);
        }

        if(dtbl.Rows.Count >0)
        {
            recipeGV.DataSource = dtbl;
            recipeGV.DataBind();
        }
        else
        {
            dtbl.Rows.Add(dtbl.NewRow());
            recipeGV.DataSource = dtbl;
            recipeGV.DataBind();
            recipeGV.Rows[0].Cells.Clear();
            recipeGV.Rows[0].Cells.Add(new TableCell());
            recipeGV.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
            recipeGV.Rows[0].Cells[0].Text = "No data found....";
            recipeGV.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
        }
        
    }

    protected void recipeGV_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName.Equals("AddNew"))
            {
                using (SqlConnection sqlConManage = new SqlConnection(conStringManage))
                {
                    sqlConManage.Open();
                    string queryManage = "INSERT INTO Recipe(recipe_title,category,preparation_time,description,admin_id) VALUES (@recipe_title,@category,@preparation_time,@description,1101)";
                    SqlCommand sqlcmdManage = new SqlCommand(queryManage, sqlConManage);
                    sqlcmdManage.Parameters.AddWithValue("@recipe_title", (recipeGV.FooterRow.FindControl("txtRTfooter") as TextBox).Text.Trim());
                    sqlcmdManage.Parameters.AddWithValue("@category", (recipeGV.FooterRow.FindControl("txtCatfooter") as TextBox).Text.Trim());
                    sqlcmdManage.Parameters.AddWithValue("@preparation_time", (recipeGV.FooterRow.FindControl("txtPTfooter") as TextBox).Text.Trim());
                    sqlcmdManage.Parameters.AddWithValue("@description", (recipeGV.FooterRow.FindControl("txtDesfooter") as TextBox).Text.Trim());
                    //sqlcmdManage.Parameters.AddWithValue("@recipe_image", (recipeGV.FooterRow.FindControl("txtRimgfooter") as TextBox).Text.Trim());

                    sqlcmdManage.ExecuteNonQuery();
                    manageGridView();
                    lblSuccessManage.Text = "New record added successfully";
                    lblErrorManage.Text = "";

                }
            }
        }
        catch(Exception ex)
        {
            lblSuccessManage.Text = "";
            lblErrorManage.Text = ex.Message;
        }
        
    }

    protected void recipeGV_RowEditing(object sender, GridViewEditEventArgs e)
    {
        recipeGV.EditIndex = e.NewEditIndex;
        manageGridView();

    }

    protected void recipeGV_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        recipeGV.EditIndex = -1;
        manageGridView();
    }

   

    protected void recipeGV_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
           
                using (SqlConnection sqlConManage = new SqlConnection(conStringManage))
                {
                    sqlConManage.Open();
                    string queryManage = "UPDATE Recipe SET recipe_title=@recipe_title,category=@category,preparation_time=@preparation_time,description=@description WHERE recipe_id=@id";
                    SqlCommand sqlcmdManage = new SqlCommand(queryManage, sqlConManage);
                    sqlcmdManage.Parameters.AddWithValue("@recipe_title", (recipeGV.Rows[e.RowIndex].FindControl("txtRT") as TextBox).Text.Trim());
                    sqlcmdManage.Parameters.AddWithValue("@category", (recipeGV.Rows[e.RowIndex].FindControl("txtCat") as TextBox).Text.Trim());
                    sqlcmdManage.Parameters.AddWithValue("@preparation_time", (recipeGV.Rows[e.RowIndex].FindControl("txtPT") as TextBox).Text.Trim());
                    sqlcmdManage.Parameters.AddWithValue("@description", (recipeGV.Rows[e.RowIndex].FindControl("txtDes") as TextBox).Text.Trim());
                //sqlcmdManage.Parameters.AddWithValue("@recipe_image", (recipeGV.FooterRow.FindControl("txtRimgfooter") as TextBox).Text.Trim());
                    sqlcmdManage.Parameters.AddWithValue("@id", Convert.ToInt32(recipeGV.DataKeys[e.RowIndex].Value.ToString()));
                    sqlcmdManage.ExecuteNonQuery();
                    recipeGV.EditIndex = -1;
                    manageGridView();
                    lblSuccessManage.Text = "Selected row updated successfully";
                    lblErrorManage.Text = "";

                }
            
        }
        catch (Exception ex)
        {
            lblSuccessManage.Text = "";
            lblErrorManage.Text = ex.Message;
        }
    }

    protected void recipeGV_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {

            using (SqlConnection sqlConManage = new SqlConnection(conStringManage))
            {
                sqlConManage.Open();
                string queryManage = "DELETE FROM Recipe WHERE recipe_id=@id";
                SqlCommand sqlcmdManage = new SqlCommand(queryManage, sqlConManage);
                
                sqlcmdManage.Parameters.AddWithValue("@id", Convert.ToInt32(recipeGV.DataKeys[e.RowIndex].Value.ToString()));
                sqlcmdManage.ExecuteNonQuery();
          
                manageGridView();
                lblSuccessManage.Text = "Selected row deleted successfully";
                lblErrorManage.Text = "";

            }

        }
        catch (Exception ex)
        {
            lblSuccessManage.Text = "";
            lblErrorManage.Text = ex.Message;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection sqlcon = new SqlConnection(conStringManage);
        imgFile.SaveAs(Server.MapPath("~/foodpic/")+ Path.GetFileName(imgFile.FileName));

        string link = "foodpic/" + Path.GetFileName(imgFile.FileName);
        string qim = "INSERT INTO Recipe(recipe_title,category,preparation_time,description,recipe_image,admin_id) VALUES ('jhkj','category',10,'description','" + link + "',1101)";
        //string qim = "insert into Recipe (recipe_image) values ('" + link + "')";
        SqlCommand cmdi = new SqlCommand(qim, sqlcon);
        sqlcon.Open();
        cmdi.ExecuteNonQuery();
        sqlcon.Close();

    }
}