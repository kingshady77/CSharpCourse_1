using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void CrBtn_Click(object sender, EventArgs e)
    {

        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();

            string checkusername = "select count (*) from MyUser where UserName = '" + TextUserName.Text + "'";
            string checkemail = "select count (*) from MyUser where Email = '" + TextEmail.Text + "'";

            SqlCommand insertUser = new SqlCommand(checkusername, con);
            insertUser.Connection = con;

            insertUser.CommandText = "insert into MyUser (FName, LName, UserName, Email, Password, ConfirmPassword, Mobile, Level) values(@p1,@p2,@p3,@p4,@p5, @p6, @p7, 0)";  // 0 is used for normal user and 1 will be used for admin
            insertUser.Parameters.AddWithValue("@p1", TextFName.Text);
            insertUser.Parameters.AddWithValue("@p2", TextLName.Text);
            insertUser.Parameters.AddWithValue("@p3", TextUserName.Text);
            insertUser.Parameters.AddWithValue("@p4", TextEmail.Text);
            insertUser.Parameters.AddWithValue("@p5", TextPassword.Text);
            insertUser.Parameters.AddWithValue("@p6", TextConfirmPassword.Text);
            insertUser.Parameters.AddWithValue("@p7", TextMobile.Text);

            insertUser.ExecuteNonQuery();
            Response.Write("Your Registration is Successful");

            con.Close();

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}
