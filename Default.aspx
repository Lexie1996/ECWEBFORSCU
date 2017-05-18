<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderbanner" runat="server">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/coolbanner.png" Width="100%" />
</asp:Content>

<asp:Content runat="server" ID="majorbrief" ContentPlaceHolderID="ContentPlaceHoldertwopartsleft">
    <div id='write' class='is-node'>
        <h3 class="text-center"><a name='header-c5' class='md-header-anchor '></a>电子商务本科专业简介</h3>
        <p>本专业培养具备管理、经济、现代信息技术及电子商务方面基本理论素养、专业基础知识和较高综合素质的复合型高级专门人才。毕业生既懂管理和经济、又懂现代信息技术、掌握电子商务知识和技能，能在企业、事业单位及政府部门从事电子商务规划、开发、运作和管理的实际工作，以及相关的教学、科研方面的工作。</p>

        <p>学生主要学习管理学、经济学、现代信息技术和电子商务的基本理论和基本知识，接受电子商务策划、开发、运作和管理方法与技巧方面的基本训练，具有分析和解决电子商务问题的基本能力。毕业生应获得以下几方面的知识和能力……</p>
    </div>
    <div id="link">
        <a href="Intro.aspx">…查看更多内容</a>
    </div>
</asp:Content>

<asp:Content runat="server" ID="weather" ContentPlaceHolderID="ContentPlaceHolderldown">
    <iframe src="//www.seniverse.com/weather/weather.aspx?uid=U23C5AE101&cid=CHSC000000&l=zh-CHS&p=SMART&a=0&u=C&s=11&m=2&x=1&d=3&fc=&bgc=&bc=&ti=0&in=0&li=" frameborder="0" scrolling="no" width="200" height="300" allowtransparency="true"></iframe>
</asp:Content>

<asp:Content runat="server" ID="roolnews" ContentPlaceHolderID="ContentPlaceHoldertwopartsright">
    <div id="rollnews">
        <marquee onmouseover="this.stop()" onmouseout="this.start()" scrollamount="2" scrolldelay="2" direction="up" height="250" style="width: 400px">
                    <asp:GridView ID="GridView1" runat="server" ShowHeader="false" Font-Size="12px" Height="50px" BackColor="White" CellPadding="4" DataKeyNames="NewsId" DataSourceID="LinqDataSource1" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="NewsId" ReadOnly="True" SortExpression="NewsId" InsertVisible="False" />
                        <asp:HyperLinkField DataNavigateUrlFields="NewsId" DataNavigateUrlFormatString="~/Newsdetails.aspx?NewsId={0}" DataTextField="Title" DataTextFormatString="{0:c}" />
                    </Columns>
                    </asp:GridView></marquee>
    </div>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="ECDBDataContext" EntityTypeName="" OrderBy="NewsId desc" TableName="News">
    </asp:LinqDataSource>
</asp:Content>

<asp:Content ID="bottom" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp &nbsp 访问统计：<asp:Label ID="Label1" runat="server" Text=""></asp:Label>

</asp:Content>
