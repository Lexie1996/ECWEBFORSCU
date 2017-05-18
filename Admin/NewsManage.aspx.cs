using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_NewsManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void dvNews_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        gvNews.DataBind();
    }

    protected void dvNews_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        gvNews.DataBind();
    }
}