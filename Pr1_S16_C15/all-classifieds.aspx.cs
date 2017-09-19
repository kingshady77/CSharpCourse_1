using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class all_classifieds : System.Web.UI.Page
{

    SqlConnection con;
    SqlCommand cmd;
    string CounteryName = "";
    string MyCategory = "";
    int CategoryNum;
    string MySearch = "";
    object catId;
    public all_classifieds()
    {
        con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ToString();
        cmd = new SqlCommand();
    }


    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            //DDL_SelectCat.Enabled = false;
            FillAdCombo();

            catId = Request.QueryString["CatId"];
            if (catId != null)
            {
                int cat_Id = Convert.ToInt32(catId);

                for (int index = 0; index < DDL_SelectCat.Items.Count; index++)
                {
                    if (Convert.ToInt32(DDL_SelectCat.Items[index].Value) == cat_Id)
                        DDL_SelectCat.SelectedIndex = index;
                }

                loadgrid(string.Empty, cat_Id);
            }
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

    private void loadgrid(string MyCountry, int MyCat)
    {

        con.Open();
        if (string.IsNullOrEmpty(MyCountry) || MyCountry.Equals("Select Country", StringComparison.OrdinalIgnoreCase))
            cmd.CommandText = "select Description,Price, AdsId, Ad_Title, Date, Country,Photo1Path, Photo2Path, Photo3Path from Ads where Cat_ID =" + MyCat + "and Status ='OK' ";
        else
            cmd.CommandText = "select Description,Price, AdsId, Ad_Title, Date, Country,Photo1Path, Photo2Path, Photo3Path from Ads where Cat_ID =" + MyCat + "and Country = '" + MyCountry + "'and Status ='OK' ";
        cmd.Connection = con;
        DataSet ds = new DataSet();
        SqlDataAdapter adpter = new SqlDataAdapter(cmd);
        adpter.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();


    }

    protected void DDL_SelectCat_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Convert.ToInt32(DDL_SelectCat.SelectedValue) > 0)
        {
            var category = DDL_SelectCat.SelectedValue;
            var country = DDL_SelectCont.SelectedItem.Text;
            con.Open();
            if(DDL_SelectCont.SelectedIndex>0)
            {
                cmd.CommandText = "select * from Ads where Cat_ID = '" + category + "' and Country like '" + country + "'";
                cmd.Connection = con;
                DataSet ds = new DataSet();
                SqlDataAdapter adpter = new SqlDataAdapter(cmd);
                adpter.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();
            }
            else
            { 
            GridView1.DataSource = null;
            GridView1.DataBind();
            }
            //SelectAd();
        }

    }

    protected void DDL_SelectCont_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DDL_SelectCont.SelectedIndex > 0)
        {
            var country = DDL_SelectCont.SelectedItem.Text;
            var category = DDL_SelectCat.SelectedValue;
            con.Open();
            cmd.CommandText = "select * from Ads where Cat_ID = '" + category + "' and Country like '" + country + "'";
            cmd.Connection = con;
            DataSet ds = new DataSet();
            SqlDataAdapter adpter = new SqlDataAdapter(cmd);
            adpter.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();

            DDL_SelectCat.Enabled = true;
        }

    }
    
    private void FillAdCombo()
    {
        con.Open();
        cmd.CommandText = "select Id,Name from Category";
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable("Category");
        da.Fill(dt);
        DDL_SelectCat.DataSource = dt;
        DDL_SelectCat.DataTextField = "Name";
        DDL_SelectCat.DataValueField = "Id";
        DDL_SelectCat.DataBind();
        con.Close();
    }

    protected void BtnSearch_Click(object sender, EventArgs e)
    {
        MySearch = SearchTxtBox.Text;
        var country = DDL_SelectCont.SelectedItem.Text;
        var category = DDL_SelectCat.SelectedValue;
        con.Open();
        cmd.CommandText = "select * from Ads where (Country = '" + country +  "' and Cat_ID = '"  + category+"')  and (Ad_Title like '" + '%' + MySearch + '%' + "' or Brand like '" + '%' + MySearch + '%' + "' or Model like '" + '%' + MySearch + '%' + "' or Price like '" + '%' + MySearch + '%' + "' or Description like '" + '%' + MySearch + '%' + "')";
        cmd.Connection = con;
        DataSet ds = new DataSet();
        SqlDataAdapter adpter = new SqlDataAdapter(cmd);
        adpter.Fill(ds);
        GridView1.DataSource = ds; ;
        GridView1.DataBind();
        con.Close();

    }
   

    public string FormatData(string Price)
    {
        string str = string.Empty;

        str = '$' + Price;
        return str;
    }



    protected void ddlsort_SelectedIndexChanged(object sender, EventArgs e)
    {
        var category = DDL_SelectCat.SelectedValue;
        var country = DDL_SelectCont.SelectedItem.Text;
        var sortValue = ddlsort.SelectedValue;
        con.Open();
        if (sortValue == "ASC")
        {
            if(DDL_SelectCont.SelectedIndex > 0)
            {
                cmd.CommandText = "select * from Ads where Cat_ID = '" + category + "' and Country like '" + country + "' order by Date asc";
            }
            else
            {
                cmd.CommandText = "select * from Ads where Cat_ID = '" + category + "' order by Date asc";
            }            
        }
        else if (sortValue == "PriceASC")
        {
            if (DDL_SelectCont.SelectedIndex > 0)
            {
                cmd.CommandText = "select * from Ads where Cat_ID = '" + category + "' and Country like '" + country + "' order by price asc";
            }
            else
            {
                cmd.CommandText = "select * from Ads where Cat_ID = '" + category + "' order by  price asc";
            }
        }
        else if (sortValue == "PriceDESC")
        {
            if (DDL_SelectCont.SelectedIndex > 0)
            {
                cmd.CommandText = "select * from Ads where Cat_ID = '" + category + "' and Country like '" + country + "' order by price desc";
            }
            else
            {
                cmd.CommandText = "select * from Ads where Cat_ID = '" + category + "' order by  price desc";
            }
        }
        cmd.Connection = con;
        DataSet ds = new DataSet();
        SqlDataAdapter adpter = new SqlDataAdapter(cmd);
        adpter.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
        //loadgrid(null, 0);
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        loadgrid(string.Empty, Convert.ToInt32(catId));
    }
}
