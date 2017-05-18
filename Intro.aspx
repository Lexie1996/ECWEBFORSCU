<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Intro.aspx.cs" Inherits="Intro" %>

<%@ Register Src="~/UserControl/SiteMap.ascx" TagPrefix="uc1" TagName="SiteMap" %>


<asp:Content ID="tree" ContentPlaceHolderID="ContentPlaceHolderlup" runat="server">
    <uc1:SiteMap runat="server" ID="SiteMap" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderonepart" Runat="Server">
    <div  id='write'  class = 'is-node'><h1 style="text-align: center"><a name='header-c5' class='md-header-anchor '></a>电子商务本科专业简介</h1><p style="text-align: center"><strong>学科门类：管理学 </strong></p><p style="text-align: center"><strong>类    别：电子商务类 </strong></p><p style="text-align: center"><strong>专业名称：电子商务</strong></p><p>本专业培养具备管理、经济、现代信息技术及电子商务方面基本理论素养、专业基础知识和较高综合素质的复合型高级专门人才。毕业生既懂管理和经济、又懂现代信息技术、掌握电子商务知识和技能，能在企业、事业单位及政府部门从事电子商务规划、开发、运作和管理的实际工作，以及相关的教学、科研方面的工作。</p><p></p></div>
</asp:Content>
<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHoldertwopartsleft" runat="server">
    <h3 class="text-center">
        <a href="Introd1.aspx">培养要求与学科课程</a>
    </h3>
</asp:Content>
<asp:Content ID="content3" ContentPlaceHolderID="ContentPlaceHoldertwopartsright" runat="server">
    <h3 class="text-center">
        <a href="Introd2.aspx">学位与学业要求</a>
    </h3>
</asp:Content>