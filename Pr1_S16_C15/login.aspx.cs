using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
    }

    
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from MyUser where Email='" + TextMail.Text + "' and Password='" + TextPass.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["UserId"] = dt.Rows[0]["Id"].ToString();
            Session["UserName"] = dt.Rows[0]["UserName"].ToString();
            Session["Email"] = TextMail.Text;
            Session["Level"] = dt.Rows[0]["Level"].ToString();
            Response.Cookies["Email"].Value = TextMail.Text;
            Response.Cookies["Password"].Value = TextPass.Text;
            if (int.Parse(dt.Rows[0]["Level"].ToString()) == 0)
            {
                Response.Redirect("post-ad.aspx");
            }
            if (int.Parse(dt.Rows[0]["Level"].ToString()) == 1)
            {
                Response.Redirect("AdminHome.aspx");
            }

        }
        else
        {
            Label1.Text = "Please Check your Email or Password";
            
        }
        con.Close();
    }
}