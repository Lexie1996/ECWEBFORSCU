<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" Async="true" %>




<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolderonepart">
    <style>
        input {
            display: inline-block;
            height: 40px;
            background: #FCFCFC;
            vertical-align: middle;
            border: none;
            border-radius: 10px;
            color: 	#000000;
            padding-left: 10px;
        }

        .mycode {
            display: inline-block;
            width: 80px;
            height: 40px;
            vertical-align: middle;
        }
    </style>
    <h2>登录</h2>

    <div class="row">
        <div class="col-md-8">
            <section id="loginForm">
                <div class="form-horizontal">
                    <hr />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label">用户名</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                CssClass="text-danger" ErrorMessage="The user name field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">密码</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />

                        </div>
                    </div>


                    <script src="../Scripts/js.KinerCode.js" type="text/javascript"></script>

                    <div>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <input id="inputCode" type="text" />
                        <span id="code" class="mycode"></span>
                    </div>
                    <script>
                        var inp = document.getElementById('inputCode');
                        var code = document.getElementById('code');
                        var c = new KinerCode({
                            len: 4,
                            chars: [
                                1, 2, 3, 4, 5, 6, 7, 8, 9, 0,
                                'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
                                'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
                            ],
                            question: false,
                            copy: false,
                            bgColor: "white",
                            inputArea: inp,
                            codeArea: code,
                            click2refresh: true,
                            false2refresh: true,
                            validateEven: "blur",
                            validateFn: function (result, code) {
                                if (result) 
                                {
                                    alert('验证成功');
                                } 
                                else 
                                {
                                    alert('验证失败:' + code.answer);
                                }

                            }
                        });

                    </script>

                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <div class="checkbox">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">记住我?</asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" OnClick="LogIn" Text="登录" CssClass="btn btn-default" />
                        </div>
                    </div>
                </div>
                <p>
                    <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">还没有账号？点我注册</asp:HyperLink>
                </p>
            </section>
        </div>

    </div>
</asp:Content>

