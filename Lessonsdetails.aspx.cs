using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lessonsdetails : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Count == 0)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            Bind();
        }
    }
    protected void Bind()
    {
        ECDBDataContext db = new ECDBDataContext();
        if (Request.QueryString["LessonsId"] != null)
        {
            int lessonsid = int.Parse(Request.QueryString["LessonsId"]);
            var results = from p in db.Lessons
                          where p.LessonsId == lessonsid
                          select p;
            DataList1.DataSource = results;
            DataList1.DataBind();

        }
    }
}