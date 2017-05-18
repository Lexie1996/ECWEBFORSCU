using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddNews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        ECDBDataContext db = new ECDBDataContext();
        News news = new News();
        news.Title = txtTitle.Text;
        news.Content = txtContent.Text;
        db.News.InsertOnSubmit(news);
        db.SubmitChanges();
        Response.Redirect("~/Admin/Newsmanage.aspx");
    }

   
}