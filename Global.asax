<%@ Application Language="C#" %>
<%@ Import Namespace="recw" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        RouteConfig.RegisterRoutes(RouteTable.Routes);
        BundleConfig.RegisterBundles(BundleTable.Bundles);
        // Create the custom role and user.

        RoleActions roleActions = new RoleActions();
        roleActions.createAdmin();

        Application["CurrentUserCount"] = 0;
    }

    void Application_End(object sender, EventArgs e) 
    {

 
    }
    
     void Application_Error(object sender, EventArgs e) 
    { 

 
    }
    void Session_Start(object sender, EventArgs e) 
    {

        Application.Lock();
        Application["CurrentUserCount"] = (int)Application["CurrentUserCount"] + 1;
        Application.UnLock();
    } 
    void Session_End(object sender, EventArgs e) 
    {

        Application.Lock();
        Application["CurrentUserCount"] = (int)Application["CurrentUserCount"] - 1;
        Application.UnLock();
    }


</script>
