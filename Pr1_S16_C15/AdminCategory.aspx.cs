using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //In this sample, there are  3 buttons and the second one is Delete button, that's why we use the index 2
            //indexing goes as 0 is button #1, 1 Literal (Space between buttons), 2 button #2, 3 Literal (Space) etc.
            // ((Button)e.Row.Cells[0].Controls[2]).OnClientClick = "return confirm('Do yo want to Delete')";
            ((LinkButton)e.Row.Cells[0].Controls[2]).OnClientClick = "return confirm('Do you really want to delete?');";
        }
    }
}