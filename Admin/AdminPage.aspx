<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="Admin_AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHoldertwopartsleft" Runat="Server">
    <h1>
        <a href="LessonsManage.aspx">课程管理</a>
    </h1>
</asp:Content>
<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHoldertwopartsright" runat="server">
    <h1>
        <a href="NewsManage.aspx">新闻管理</a> <br />
    </h1>
    <h2>
        <a href="AddNews.aspx">发布新闻</a>
    </h2>
</asp:Content>
