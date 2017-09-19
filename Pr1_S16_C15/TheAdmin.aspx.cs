using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class TheAdmin : System.Web.UI.Page
{
    private void init()
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        loadData();
    }

    private void loadData()
    {
        requiredFieldStatus(false);
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        con.Open();

        SqlCommand cmd2 = new SqlCommand("Select * from MyUser", con);
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
        }

        con.Close();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        loadData();
    }
    protected void BtnAdmin_Click(object sender, EventArgs e)
    {
        try
        {
            requiredFieldStatus(true);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();

            string checkusername = "select count (*) from MyUser where UserName = '" + TextBoxAdminName.Text + "'";
            string checkemail = "select count (*) from MyUser where Email = '" + TextBoxAdminEmail.Text + "'";

            SqlCommand cmd = new SqlCommand("Select * from MyUser where Email='" + TextBoxAdminEmail.Text + "' and Password='" + TextBoxAdminPass.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                Response.Write("This admin already exists");
                //Response.Redirect("TheAdmin.aspx");
                FieldsClear();
            }
            else
            {
                SqlCommand insertUser = new SqlCommand(checkusername, con);
                insertUser.Connection = con;

                insertUser.CommandText = "insert into MyUser (FName, LName, UserName, Email, Password, ConfirmPassword, Mobile, Level) values(@p1,@p2,@p3,@p4,@p5, @p6, @p7, 1)";  // 0 is used for normal user and 1 will be used for admin
                insertUser.Parameters.AddWithValue("@p1", TextFName.Text);
                insertUser.Parameters.AddWithValue("@p2", TextLName.Text);
                insertUser.Parameters.AddWithValue("@p3", TextBoxAdminName.Text);
                insertUser.Parameters.AddWithValue("@p4", TextBoxAdminEmail.Text);
                insertUser.Parameters.AddWithValue("@p5", TextBoxAdminPass.Text);
                insertUser.Parameters.AddWithValue("@p6", TextConfirmPassword.Text);
                insertUser.Parameters.AddWithValue("@p7", TextMobile.Text);

                insertUser.ExecuteNonQuery();
                Response.Write("Your Registration is Successful");
                FieldsClear();

                SqlCommand cmd2 = new SqlCommand("Select * from MyUser", con);
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
                }
            }
            con.Close();

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        requiredFieldStatus(false);
    }

    public void FieldsClear()
    {
        TextBoxAdminEmail.Text = "";
        TextBoxAdminName.Text = "";
        TextBoxAdminPass.Text = "";
        TextFName.Text = "";
        TextLName.Text = "";
        TextConfirmPassword.Text = "";
        TextMobile.Text = "";
    }

    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            TableCell UserType = e.Row.Cells[8];
            if (int.Parse(UserType.Text) == 0)
            {
                UserType.Text = "User";
            }

            else if (int.Parse(UserType.Text) == 1)
            {
                UserType.Text = "Admin";
            }
        }
    }

    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        GridView2.DataBind();
    }

    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int id = (int)e.CommandArgument;
        if (e.CommandName == "Edit")
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
            SqlCommand cmd = new SqlCommand();
            using (con)
            {
                con.Open();
                cmd.CommandText = "select Id from MyUser where id = " + id + "";
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable("Category");
                da.Fill(dt);
            }
        }
        else
        {

        }
    }


    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }


    protected void GridView2_PageIndexChanging1(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        GridView2.DataBind();
    }


    protected void lnkdelete_Click(object sender, EventArgs e)
    {
        requiredFieldStatus(false);
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
        LinkButton lnkbtn = sender as LinkButton;
        //getting particular row linkbutton
        GridViewRow gvrow = lnkbtn.NamingContainer as GridViewRow;
        //getting userid of particular row
        int Id = Convert.ToInt32(GridView2.DataKeys[gvrow.RowIndex].Value.ToString());
        string FName = gvrow.Cells[0].Text;
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from MyUser where Id=" + Id, con);
        int result = cmd.ExecuteNonQuery();
        con.Close();
        if (result == 1)
        {
            GridView2.DataBind();
            //Displaying alert message after successfully deletion of user
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "javascript:alert('" + FName + " details deleted successfully')", true);
        }
        loadData();
        requiredFieldStatus(true);
    }

    private void requiredFieldStatus(bool status)
    {
        RequiredFieldValidator3.Enabled = status;
        RequiredFieldValidator2.Enabled = status;
        RequiredFieldValidator4.Enabled = status;
        RequiredFieldValidator5.Enabled = status;
        RequiredFieldValidator6.Enabled = status;
        RequiredFieldValidator1.Enabled = status;
        RequiredFieldValidator7.Enabled = status;
    }
}
