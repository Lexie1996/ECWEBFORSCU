<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="NewsManage.aspx.cs" Inherits="Admin_NewsManage" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderonepart" Runat="Server">
    <table>
        <tr>
            <td>
                <asp:GridView ID="gvNews" runat="server" AutoGenerateColumns="False" DataKeyNames="NewsId" DataSourceID="ldsGrid" CellPadding="4" ForeColor="#333333" GridLines="None" Height="129px" Width="298px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="NewsId" HeaderText="NewsId" InsertVisible="False" ReadOnly="True" SortExpression="NewsId" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:CommandField SelectText="详情" ShowSelectButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
            <td>
                <asp:DetailsView ID="dvNews" runat="server" AutoGenerateRows="False" DataKeyNames="NewsId" DataSourceID="ldsDetails" HeaderText="详情" OnItemDeleted="dvNews_ItemDeleted" OnItemUpdated="dvNews_ItemUpdated" CellPadding="4" ForeColor="#333333" GridLines="None" Height="130px" Width="505px" >
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="NewsId" HeaderText="新闻编号" InsertVisible="False" ReadOnly="True" SortExpression="NewsId" />
                        <asp:BoundField DataField="Title" HeaderText="新闻标题" SortExpression="Title" />
                        <asp:BoundField DataField="Content" HeaderText="新闻内容" SortExpression="Content" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
            </td>
        </tr>
    </table>
    <asp:LinqDataSource ID="ldsGrid" runat="server" ContextTypeName="ECDBDataContext" EntityTypeName="" TableName="News"></asp:LinqDataSource>
    <asp:LinqDataSource ID="ldsDetails" runat="server" ContextTypeName="ECDBDataContext" EntityTypeName="" EnableDelete="true" EnableUpdate="true" TableName="News" Where="NewsId == @NewsId">
        <WhereParameters>
            <asp:ControlParameter ControlID="gvNews" DefaultValue="1" Name="NewsId" PropertyName="SelectedValue" Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>
    <h4>
        <a href="AddNews.aspx">点我创建新公告</a>
    </h4>
</asp:Content>

