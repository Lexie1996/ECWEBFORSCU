<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Newscenter.aspx.cs" Inherits="Newscenter" %>

<%@ Register Src="~/UserControl/SiteMap.ascx" TagPrefix="uc1" TagName="SiteMap" %>


<asp:Content ID="tree" ContentPlaceHolderID="ContentPlaceHolderlup" runat="server">
    <uc1:SiteMap runat="server" ID="SiteMap" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderonepart" runat="Server">
    <div id="news">
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataSourceID="LinqDataSource1" Width="801px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/bullet.png" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="NewsId" HeaderText="NewsId" ReadOnly="True" SortExpression="NewsId" />
                <asp:HyperLinkField DataNavigateUrlFields="NewsId" DataNavigateUrlFormatString="~/Newsdetails.aspx?NewsId={0}" DataTextField="Title" DataTextFormatString="{0:c}" HeaderText="Title" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="ECDBDataContext" EntityTypeName="" OrderBy="NewsId desc" Select="new (NewsId, Title)" TableName="News">
        </asp:LinqDataSource>
    </div>
</asp:Content>
<asp:Content ID="search" ContentPlaceHolderID="ContentPlaceHolderldown" runat="server">
    <br />
    <br />
    <h4>输入新闻名称，查询相关课程</h4>
    <asp:TextBox ID="txtSearch" runat="server" Height="20px" Width="150px">输入感兴趣的新闻</asp:TextBox>
    <asp:ImageButton ID="ImageButton1" runat="server" Height="15px" ImageUrl="~/Images/search.png" OnClick="ImageButton1_Click" />
</asp:Content>

