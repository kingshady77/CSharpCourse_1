using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Pr1_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] == null)
        {
            UserNameLabel.Text = "Welcome Visitor";
            HLogin.Visible = true;
            ButtonLogout.Visible = false;
        }
        else
        {
            if (int.Parse(Session["Level"].ToString()) == 0)
            {
                UserNameLabel.Text = Session["UserName"].ToString();
                HLogin.Visible = false;
                ButtonLogout.Visible = true;
            }
            else if (int.Parse(Session["Level"].ToString()) == 1)
            {
                UserNameLabel.Text = Session["UserName"].ToString();
                HLogin.Visible = false;
                ButtonLogout.Visible = true;
            }
        }
    }
}




