using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lessons : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string strQuery = "";
        if (txtSearch.Text.Trim() == "")
        {
            strQuery = "";
        }
        else
        {
            strQuery = "?SearchText=" + txtSearch.Text.Trim();
        }
        Response.Redirect("~/SearchLessons.aspx" + strQuery);
    }
}