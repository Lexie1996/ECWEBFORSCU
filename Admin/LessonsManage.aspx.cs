using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_LessonsManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        gvLessons.DataBind();
    }

    protected void dvLessons_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        gvLessons.DataBind();
    }

    protected void dvLessons_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
        gvLessons.DataBind();
    }
}