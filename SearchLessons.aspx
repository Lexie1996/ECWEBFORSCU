<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SearchLessons.aspx.cs" Inherits="SearchLessons" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderonepart" Runat="Server">
    <asp:GridView ID="gvLessons" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/bullet.png" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="LessonsId" HeaderText="课程号" ReadOnly="True" SortExpression="LessonId" />
            <asp:HyperLinkField DataNavigateUrlFields="LessonsId" DataNavigateUrlFormatString="~/Lessonsdetails.aspx?LessonsId={0}" DataTextField="Name" DataTextFormatString="{0:c}" HeaderText="课程名" />
        </Columns>
    </asp:GridView>
</asp:Content>

