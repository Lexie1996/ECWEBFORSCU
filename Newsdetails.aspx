<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Newsdetails.aspx.cs" Inherits="Newsdetails" %>

<%@ Register Src="~/UserControl/SiteMap.ascx" TagPrefix="uc1" TagName="SiteMap" %>


<asp:Content ID="tree" ContentPlaceHolderID="ContentPlaceHolderlup" runat="server">
    <uc1:SiteMap runat="server" ID="SiteMap" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderonepart" Runat="Server" DataKeyField="NewsId" DataSourceID="LinqDataSource1">
    
    <asp:DataList ID="DataList1" runat="server" DataKeyField="NewsId" DataSourceID="LinqDataSource1" >
        <ItemTemplate>
            <h4>
                新闻编号：
            </h4>
            <asp:Label ID="NewsIdLabel" runat="server" Text='<%# Eval("NewsId") %>' ></asp:Label>
            <br />
            <h4>
                新闻标题：
            </h4>
            <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' ></asp:Label>
            <br />
            <h4>
                新闻内容：
            </h4>
            <asp:Label ID="ContentLabel" runat="server" Text='<%# Eval("Content") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="ECDBDataContext" EntityTypeName="" TableName="News" Where="NewsId == @NewsId">
        <WhereParameters>
            <asp:QueryStringParameter Name="NewsId" QueryStringField="NewsId" Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>
   
    
</asp:Content>

