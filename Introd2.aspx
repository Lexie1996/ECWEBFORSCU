<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Introd2.aspx.cs" Inherits="Intro2" %>

<%@ Register Src="~/UserControl/SiteMap.ascx" TagPrefix="uc1" TagName="SiteMap" %>


<asp:Content ID="tree" ContentPlaceHolderID="ContentPlaceHolderlup" runat="server">
    <uc1:SiteMap runat="server" ID="SiteMap" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderonepart" runat="Server">
    <h2 class="text-center">学位与学业要求</h2>
    <h3>基本学制及修业年限</h3>
    <p>四年；三至六年</p>
    <h3>毕业最低总学分</h3>
    <p>155</p>
    <h3>授予学位</h3>
    <p>管理学学士</p>
</asp:Content>


