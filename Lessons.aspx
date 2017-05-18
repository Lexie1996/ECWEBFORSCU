<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Lessons.aspx.cs" Inherits="Lessons" %>

<%@ Register Src="~/UserControl/SiteMap.ascx" TagPrefix="uc1" TagName="SiteMap" %>


<asp:Content ID="tree" ContentPlaceHolderID="ContentPlaceHolderlup" runat="server">
    <uc1:SiteMap runat="server" ID="SiteMap" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderonepart" runat="Server">

    <h3 class="text-center">选择课程类型，查看相关课程</h3>
    <h3 class="text-center">点击课程，查看课程详情</h3>
    <table style="width: 903px; height: 256px">
        <tr>
            <td>
                <asp:GridView ID="gvCategory" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CategoryId" DataSourceID="ldsCategory" PageSize="7" CellPadding="4" ForeColor="#333333" GridLines="None" Height="238px" Style="margin-right: 0px" Width="408px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="CategoryId" HeaderText="类型编号" InsertVisible="False" ReadOnly="True" SortExpression="CategoryId" />
                        <asp:BoundField DataField="Name" HeaderText="类别" SortExpression="Name" />
                        <asp:BoundField DataField="Descn" HeaderText="描述" SortExpression="Descn" />
                        <asp:CommandField ShowCancelButton="False" ShowSelectButton="True" />
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
                <asp:GridView ID="gvLessons" runat="server" DataSourceID="ldsLessons" AutoGenerateColumns="False" DataKeyNames="LessonsId" CellPadding="4" ForeColor="#333333" GridLines="None" Width="388px" Height="169px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="LessonsId" HeaderText="课程号" InsertVisible="False" ReadOnly="True" SortExpression="LessonsId" />
                        <asp:BoundField DataField="CategoryId" HeaderText="课程类型" />
                        <asp:HyperLinkField DataNavigateUrlFields="LessonsId" DataNavigateUrlFormatString="~/Lessonsdetails.aspx?LessonsId={0}" DataTextField="Name" DataTextFormatString="{0:c}" HeaderText="课程名称" />
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
        </tr>
    </table>

    <asp:LinqDataSource ID="ldsCategory" runat="server" ContextTypeName="ECDBDataContext" EntityTypeName="" TableName="Category"></asp:LinqDataSource>
    <asp:LinqDataSource ID="ldsLessons" runat="server" ContextTypeName="ECDBDataContext" EntityTypeName="" TableName="Lessons" Where="CategoryId == @CategoryId">
        <WhereParameters>
            <asp:ControlParameter ControlID="gvCategory" DefaultValue="1" Name="CategoryId" PropertyName="SelectedValue" Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>

</asp:Content>

<asp:Content ID="search" ContentPlaceHolderID="ContentPlaceHolderldown" runat="server">
    <br />
    <br />

    <h4>输入课程名称，查询相关课程</h4>
    <div id="searchxx">
        <asp:TextBox ID="txtSearch" runat="server" Height="20px" Width="150px" >输入感兴趣的课程</asp:TextBox> 
        &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="15px" ImageUrl="~/Images/search.png" OnClick="ImageButton1_Click" />
    </div>

</asp:Content>
