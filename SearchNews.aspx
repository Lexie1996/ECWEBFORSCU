<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SearchNews.aspx.cs" Inherits="Search" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderonepart" runat="Server">
    <asp:GridView ID="gvNews" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/bullet.png" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="NewsId" HeaderText="NewsId" ReadOnly="True" SortExpression="NewsId" />
            <asp:HyperLinkField DataNavigateUrlFields="NewsId" DataNavigateUrlFormatString="~/Newsdetails.aspx?NewsId={0}" DataTextField="Title" DataTextFormatString="{0:c}" HeaderText="Title" />
        </Columns>
    </asp:GridView>
</asp:Content>


