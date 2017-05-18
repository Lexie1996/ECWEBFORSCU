<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddNews.aspx.cs" Inherits="Admin_AddNews" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderonepart" Runat="Server">
    <h2 class="text-center" style="font-size: xx-large">发布新闻</h2>
    <p>
        <b><span style="font-size: medium">新闻标题：</span></b><asp:TextBox ID="txtTitle" runat="server" Height="26px" Width="277px"></asp:TextBox>
    </p>
    <p style="font-size: medium">
        <strong>新闻内容：</strong></p>
    <p>
        <asp:TextBox ID="txtContent" runat="server" Height="189px"  Width="541px" TextMode="MultiLine"></asp:TextBox>
    </p>
    <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" Height="27px" Width="82px" />

</asp:Content>


