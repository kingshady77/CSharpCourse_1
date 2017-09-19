using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnAdmin_Click(object sender, EventArgs e)
    {
        Response.Redirect("TheAdmin.aspx");
    }

    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminCategory.aspx");
    }

    protected void BtnAddCont_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminCategory.aspx");
    }

    protected void BtnAdsStatus_Click(object sender, EventArgs e)
    {
        Response.Redirect("TheAds.aspx");
    }
}