using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Drawing;


public partial class post_ad : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            var CheckSession = Session["Email"].ToString();

            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
                SqlCommand cmd = new SqlCommand("Select Id, Name from Category", con);
                con.Open();
                DDLCat.DataSource = cmd.ExecuteReader();
                DDLCat.DataTextField = "Name";
                DDLCat.DataValueField = "Id";
                DDLCat.DataBind();
                con.Close();

                SqlCommand cmd_1 = new SqlCommand("Select CountryName from Country", con);
                con.Open();
                DDLCount.DataSource = cmd_1.ExecuteReader();
                DDLCount.DataTextField = "CountryName";
                DDLCount.DataBind();
                con.Close();

                SqlCommand cmd_2 = new SqlCommand("Select AdsId from Ads", con);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd_2);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    List<string> MyItems = new List<string>();
                    foreach (DataRow MyRow in dt.Rows)
                    {
                        MyItems.Add(MyRow["AdsId"].ToString());
                    }
                    AdsNumber.Enabled = false;
                    AdsNumber.Text = (int.Parse(MyItems.Last<string>()) + 1).ToString();
                }
                else
                {
                    Response.Write("<script> alert ('No Ads available')</script>");
                    AdsNumber.Text = "1";
                }
                con.Close();


                SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
                con2.Open();
                SqlCommand cmd2 = new SqlCommand("Select UserName, Email, Mobile from MyUser where Email='" + CheckSession + "'", con2);
                SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
                DataSet ds = new DataSet();
                da2.Fill(ds, "MyUser");
                if (ds.Tables["MyUser"].Rows.Count > 0)
                {
                    TextUserName.Text = ds.Tables["MyUser"].Rows[0]["UserName"].ToString();
                    TextMail.Text = ds.Tables["MyUser"].Rows[0]["Email"].ToString();
                    TextMobile.Text = ds.Tables["MyUser"].Rows[0]["Mobile"].ToString();
                }
                else
                {
                    Response.Write("<script> alert ('User Details were not fetched')</script>");
                }

                con2.Close();

            } 
        }
        catch (Exception)
        {
            Response.Redirect("login.aspx");
        }
    }

    protected void SubmitBtn_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();

            SqlCommand InsertAd = new SqlCommand();
            InsertAd.Connection = con;

            InsertAd.CommandText = "insert into Ads (AdsId, Country, Cat_ID, Ad_Title, Brand, Model, Price, Conditions, Description, Photo1Name, Photo1Path,Photo2Name, Photo2Path,Photo3Name, Photo3Path,Status,Owner_Id,Date) values(@p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11,@p12,@p13,@p14, @p15, @p16,@p17,@p18)";
            InsertAd.Parameters.AddWithValue("@p1", int.Parse(AdsNumber.Text));
            InsertAd.Parameters.AddWithValue("@p2", DDLCount.SelectedValue);
            InsertAd.Parameters.AddWithValue("@p3", int.Parse(DDLCat.SelectedValue));
            InsertAd.Parameters.AddWithValue("@p4", AdTitle.Text);
            InsertAd.Parameters.AddWithValue("@p5", AdBrand.Text);
            InsertAd.Parameters.AddWithValue("@p6", AdsModel.Text);
            InsertAd.Parameters.AddWithValue("@p7", int.Parse(AdPrice.Text));
            InsertAd.Parameters.AddWithValue("@p8", AdCondition.Text);
            InsertAd.Parameters.AddWithValue("@p9", TextDesc.Text);

            //Read the file and convert it to Byte Array
            string filePath = FileUpload1.PostedFile.FileName;
            string filename = Path.GetFileName(filePath);
            string filePath2 = FileUpload2.PostedFile.FileName;
            string filename2 = Path.GetFileName(filePath2);
            string filePath3 = FileUpload3.PostedFile.FileName;
            string filename3 = Path.GetFileName(filePath3);
            string ext = Path.GetExtension(filename);
            string contenttype = String.Empty;
            string ext2 = Path.GetExtension(filename2);
            string contenttype2 = String.Empty;
            string ext3 = Path.GetExtension(filename3);
            string contenttype3 = String.Empty;

            //Set the contenttype based on File Extension
            switch (ext)
            {
                case ".jpg":
                    contenttype = "image/jpg";
                    break;
                case ".png":
                    contenttype = "image/png";
                    break;
                case ".gif":
                    contenttype = "image/gif";
                    break;
                case ".jpeg":
                    contenttype = "image/jpeg";
                    break;
                case ".bmp":
                    contenttype = "image/bmp";
                    break;
            }
            switch (ext2)
            {
                case ".jpg":
                    contenttype2 = "image/jpg";
                    break;
                case ".png":
                    contenttype2 = "image/png";
                    break;
                case ".gif":
                    contenttype2 = "image/gif";
                    break;
                case ".jpeg":
                    contenttype2 = "image/jpeg";
                    break;
                case ".bmp":
                    contenttype2 = "image/bmp";
                    break;
            }
            switch (ext3)
            {
                case ".jpg":
                    contenttype3 = "image/jpg";
                    break;
                case ".png":
                    contenttype3 = "image/png";
                    break;
                case ".gif":
                    contenttype3 = "image/gif";
                    break;
                case ".jpeg":
                    contenttype3 = "image/jpeg";
                    break;
                case ".bmp":
                    contenttype3 = "image/bmp";
                    break;
            }
            if (contenttype != String.Empty & contenttype2 != String.Empty & contenttype3 != String.Empty)
            {
                string fileName = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Data/" + fileName));
                string fileName2 = FileUpload2.FileName;
                FileUpload2.PostedFile.SaveAs(Server.MapPath("~/Data/" + fileName2));
                string fileName3 = FileUpload3.FileName;
                FileUpload3.PostedFile.SaveAs(Server.MapPath("~/Data/" + fileName3));


                InsertAd.Parameters.AddWithValue("@p10", SqlDbType.VarChar).Value = filename;
                InsertAd.Parameters.AddWithValue("@p11", SqlDbType.VarChar).Value = "~/Data/"+fileName;
                InsertAd.Parameters.AddWithValue("@p12", SqlDbType.VarChar).Value = filename2;
                InsertAd.Parameters.AddWithValue("@p13", SqlDbType.VarChar).Value = "~/Data/" + fileName2;
                InsertAd.Parameters.AddWithValue("@p14", SqlDbType.VarChar).Value = filename3;
                InsertAd.Parameters.AddWithValue("@p15", SqlDbType.VarChar).Value = "~/Data/" + fileName3;
                InsertAd.Parameters.AddWithValue("@p16", SqlDbType.VarChar).Value = "Pending";
                InsertAd.Parameters.AddWithValue("@p17", SqlDbType.Int).Value = Session["UserId"] == null ? DBNull.Value : (object)Session["UserId"];
                InsertAd.Parameters.AddWithValue("@p18", SqlDbType.DateTime).Value = DateTime.Now;

                InsertAd.ExecuteNonQuery();
                //Sending E-mail to the admin
                MailMessage mm = new MailMessage("info.adsvalley@gmail.com", TextMail.Text.Trim());
                mm.Subject = "New Add";
                mm.Body = string.Format("Advertisment No: {0},<br /><br />Added by user: {1}.<br /><br />at this time: {2}.", AdsNumber.Text, Session["UserName"], System.DateTime.Now);
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential();
                NetworkCred.UserName = "info.adsvalley@gmail.com";
                NetworkCred.Password = "password12345";
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = NetworkCred;
                smtp.Port = 25;
                smtp.Send(mm);
                lblMessage.ForeColor = Color.Green;
                Response.Redirect("home.aspx");

            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "File format not recognised." +
                  " Upload PNG/JPG/JPEG/BMP formats";
            }

            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }

    private Boolean InsertUpdateData(SqlCommand cmd)
    {
        String strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            return true;
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
            return false;
        }
        finally
        {
            con.Close();
            con.Dispose();
        }
    }
}



