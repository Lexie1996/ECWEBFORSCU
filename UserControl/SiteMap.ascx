<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SiteMap.ascx.cs" Inherits="UserControl_SiteMap" %>
<h4>
    网站导航：
</h4>
<asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1"></asp:TreeView>
<asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />

