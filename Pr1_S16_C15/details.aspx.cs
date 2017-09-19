using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;




public partial class details: System.Web.UI.Page
{
    int MyNumber;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con;
        SqlCommand cmd;
        con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ToString();
        cmd = new SqlCommand();

        //if (Session["AdvID"] != "")
        //{
        //    MyNumber = int.Parse(Session["AdvID"].ToString());

        object advId = Request.QueryString["AdvId"];
        if (advId != null && advId != "")
        {
            MyNumber = int.Parse(advId.ToString());
         
            con.Open();
            cmd.CommandText = "select * from Ads a inner join MyUser m ON a.Owner_Id=m.Id where AdsId = " + MyNumber +  "";
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                lblAdv.Text = Convert.ToString(dt.Rows[0]["Ad_Title"]);//.ToString();
                lblPrice.Text = Convert.ToString(dt.Rows[0]["Price"]) + " $";//.ToString();
                lblItem.Text = Convert.ToString(dt.Rows[0]["Model"]);//.ToString();
                Image1.ImageUrl = Convert.ToString(dt.Rows[0]["Photo1Path"]);//.ToString();
                Image2.ImageUrl = Convert.ToString(dt.Rows[0]["Photo2Path"]);//.ToString();
                Image3.ImageUrl = Convert.ToString(dt.Rows[0]["Photo3Path"]);//.ToString();
                Image1Link.HRef = Convert.ToString(dt.Rows[0]["Photo1Path"]);//.ToString();
                Image2Link.HRef = Convert.ToString(dt.Rows[0]["Photo2Path"]);//.ToString();
                Image3Link.HRef = Convert.ToString(dt.Rows[0]["Photo3Path"]);//.ToString();
                lblAdsNumber.Text = Convert.ToString(dt.Rows[0]["AdsId"]);//.ToString();
                LabelDescription.Text = Convert.ToString(dt.Rows[0]["Description"]);//.ToString();
                LabelBrand.Text = Convert.ToString(dt.Rows[0]["Brand"]);
                lblCondition.Text = Convert.ToString(dt.Rows[0]["Conditions"]);
                LabelCity.Text = Convert.ToString(dt.Rows[0]["Country"]);
                //LabelState.Text = Convert.ToString(dt.Rows[0]["State"]);
                LabelTime.Text = GetTimeAgo(dt.Rows[0]["Date"]);
                LabelContact.Text = Convert.ToString(dt.Rows[0]["Mobile"]);
            }
            con.Close();
        }
        


    }
    public string GetTimeAgo(object postedOn)
    {
        DateTime currentDate = DateTime.Now;
        DateTime postDate = Convert.ToDateTime(postedOn);

        TimeSpan timegap = currentDate.Subtract(postDate);

        if (timegap.Days >= 7)
            return string.Concat("Posted on ", postDate.ToString("MMMM dd, yyyy"), " at ", postDate.ToString("hh:mm tt"));
        else if (timegap.Days > 1)
            return string.Concat("Posted ", timegap.Days, " days ago");
        else if (timegap.Days == 1)
            return "Posted yesterday";
        else if (timegap.Hours >= 2)
            return string.Concat("Posted ", timegap.Hours, " hours ago");
        else if (timegap.Hours >= 1)
            return "Posted an hour ago";
        else if (timegap.Minutes >= 60)
            return "Posted more than an hour ago";
        else if (timegap.Minutes >= 5)
            return string.Concat("Posted ", timegap.Minutes, " minutes ago");
        else if (timegap.Minutes >= 1)
            return "Posted a few minutes ago";
        else
            return "Posted less than a minute ago";
    }
}