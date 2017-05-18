<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Introd1.aspx.cs" Inherits="Introd1" %>

<%@ Register Src="~/UserControl/SiteMap.ascx" TagPrefix="uc1" TagName="SiteMap" %>


<asp:Content ID="tree" ContentPlaceHolderID="ContentPlaceHolderlup" runat="server">
    <uc1:SiteMap runat="server" ID="SiteMap" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderonepart" runat="Server">
    <h2 class="text-center">培养要求与学科课程</h2>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHoldertwopartsleft" runat="Server">
    <div id="d1l">
        <h3 class="text-center"><strong>专业培养要求</strong></h3>
        <p>本专业学生主要学习管理学、经济学、现代信息技术和电子商务的基本理论和基本知识，接受电子商务策划、开发、运作和管理方法与技巧方面的基本训练，具有分析和解决电子商务问题的基本能力。毕业生应获得以下几方面的知识和能力：</p>
        <ol>
            <li>掌握管理学、经济学、现代信息技术的基本原理和电子商务的基本理论、基本知识；</li>
            <li>具有利用现代信息技术和电子商务改造传统管理和商务的初步能力；</li>
            <li>掌握电子商务的规划、开发、运作和管理方法；</li>
            <li>具有较强的语言与文字表达、人际沟通、协调以及分析和解决电子商务实际问题的基本能力；</li>
            <li>熟悉我国电子商务的有关方针、政策和法规以及国际电子商务的惯例与规则；</li>
            <li>了解本学科的理论前沿和发展动态；</li>
            <li>掌握文献检索、资料查询的基本方法，具有初步的科学研究和实际工作能力；</li>
            <li>具有一门外语的综合运用能力。</li>
        </ol>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHoldertwopartsright" runat="Server">
    <div id="d2r">
        <h3 class="text-center"><strong>主干学科</strong></h3>
        <p>电子商务、计算机科学与技术、管理学</p>
        <h3 class="text-center">主要课程</h3>
        <p>管理信息系统、数据结构、计算机网络与信息安全、数据库技术、市场营销、电子商务与网络营销、电子商务物流管理、商务智能、网上支付与电子银行、电子商务网站设计等课程</p>
        <a href="Lessons.aspx">点击查看更多课程设置</a>
    </div>
</asp:Content>


