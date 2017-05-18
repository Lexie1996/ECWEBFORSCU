<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Lessonsdetails.aspx.cs" Inherits="Lessonsdetails" %>

<%@ Register Src="~/UserControl/SiteMap.ascx" TagPrefix="uc1" TagName="SiteMap" %>


<asp:Content ID="tree" ContentPlaceHolderID="ContentPlaceHolderlup" runat="server">
    <uc1:SiteMap runat="server" ID="SiteMap" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderonepart" Runat="Server">
    <asp:DataList ID="DataList1" runat="server"  >
        <ItemTemplate>
            <h4>
                课程编号：
            </h4>
            <asp:Label ID="NewsIdLabel" runat="server" Text='<%# Eval("LessonsId") %>' ></asp:Label>
            <br />
            <h4>
                课程名称：
            </h4>
            <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Name") %>' ></asp:Label>
            <br />
            <h4>
                课程描述：
            </h4>
            <asp:Label ID="ContentLabel" runat="server" Text='<%# Eval("Descn") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    
    
</asp:Content>

