using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class TheAds : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
    DataTable dt;
    SqlDataAdapter sqlda = new SqlDataAdapter();


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            RefreshData();
            con.Close();
            ddlstStatus.Items.Add("OK");
            ddlstStatus.Items.Add("Pending");
        }
    }

    private void RefreshData()
    {
        SqlCommand cmd2 = new SqlCommand("Select * from Ads where Status='Pending'", con);
        SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
        DataSet ds = new DataSet();
        da2.Fill(ds);
        if (ds != null)
        {
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView2.DataSource = ds;
                GridView2.DataBind();
            }
            cmd2.Dispose();
            da2.Dispose();
        }
    }

    protected void btnUpdateStatus_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update Ads Set Status=@Status where AdsId=@AdsId", con);
            cmd.Parameters.AddWithValue("@Status", ddlstStatus.SelectedValue);
            cmd.Parameters.AddWithValue("@AdsId", TextAdNo.Text);
            cmd.ExecuteNonQuery();
            cmd.Dispose();

            GridView2.DataBind();
            RefreshData();
        }
        catch (SqlException ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            con.Close();
            TextAdNo.Text = "";
        }
    }

    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        GridView2.DataBind();
    }

    protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
    {
        string message = "alert('Do you want to Edit this record !!')";
        ScriptManager.RegisterStartupScript((sender as Control), this.GetType(), "alert", message, true);
        GridView2.EditIndex = 1;
    }

    void GridView2_RowDeleting (Object sender, GridViewDeleteEventArgs e)
    {

    }

}