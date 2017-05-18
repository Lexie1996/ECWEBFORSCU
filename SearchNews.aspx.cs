using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq.SqlClient;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();  
        }
    }
    protected void Bind()
    {
        if(Request.QueryString["SearchText"] != null)
        {
            string strSearchText = Request.QueryString["SearchText"].ToString();
            ECDBDataContext db = new ECDBDataContext();
            var news = from p in db.News
                       where SqlMethods.Like(p.Title, "%" + strSearchText.Trim() + "%")
                       select p;
            gvNews.DataSource = news;
            gvNews.DataBind();

        }
    }


   
}