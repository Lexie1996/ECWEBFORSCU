using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq.SqlClient;
public partial class SearchLessons : System.Web.UI.Page
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
        if (Request.QueryString["SearchText"] != null)
        {
            string strSearchText = Request.QueryString["SearchText"].ToString();
            ECDBDataContext db = new ECDBDataContext();
            var lessons = from p in db.Lessons
                       where SqlMethods.Like(p.Name, "%" + strSearchText.Trim() + "%")
                       select p;
            gvLessons.DataSource = lessons;
            gvLessons.DataBind();

        }
    }
}