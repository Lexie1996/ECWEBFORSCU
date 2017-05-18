<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="LessonsManage.aspx.cs" Inherits="Admin_LessonsManage" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderonepart" Runat="Server">
    <table>
        <tr>
            <td>
                <asp:GridView ID="gvLessons" runat="server" AutoGenerateColumns="False" DataKeyNames="LessonsId" DataSourceID="ldsGrid" CellPadding="4" ForeColor="#333333" GridLines="None" Height="136px" Width="434px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="LessonsId" HeaderText="LessonsId" InsertVisible="False" ReadOnly="True" SortExpression="LessonsId" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:CommandField SelectText="详细资料" ShowSelectButton="True" />
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
                <asp:DetailsView ID="dvLessons" runat="server" AutoGenerateRows="False" DataSourceID="ldsDetails" DataKeyNames="LessonsId" HeaderText="详细资料" OnItemDeleted="dvLessons_ItemDeleted" OnItemInserting="dvLessons_ItemInserting" CellPadding="4" ForeColor="#333333" GridLines="None" Height="132px" Width="389px" >
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="LessonsId" HeaderText="LessonsId" InsertVisible="False" ReadOnly="True" SortExpression="LessonsId" />
                        <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" SortExpression="CategoryId" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Descn" HeaderText="Descn" SortExpression="Descn" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
            </td>
        </tr>
    </table>
    <asp:LinqDataSource ID="ldsGrid" runat="server" ContextTypeName="ECDBDataContext" EntityTypeName="" TableName="Lessons"></asp:LinqDataSource>
    <asp:LinqDataSource ID="ldsDetails" runat="server" ContextTypeName="ECDBDataContext" EntityTypeName="" EnableDelete="true" EnableInsert="true" EnableUpdate="true" TableName="Lessons" Where="LessonsId == @LessonsId">
        <WhereParameters>
            <asp:ControlParameter ControlID="gvLessons" DefaultValue="1" Name="LessonsId" PropertyName="SelectedValue" Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>
</asp:Content>


