<%@ Page Title="" Language="C#" MasterPageFile="~/Pr1_MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <div id="page-wrapper" class="sign-in-wrapper">
        <div class="graphs">
            <div class="sign-in-form">
                <div class="sign-in-form-top">
                    <h1>Login to your Account</h1>
                </div>
                <div class="signin">
                    <div class="signin-rit">
                        <span class="checkbox1">
                            <label class="checkbox">
                                <input type="checkbox" name="checkbox" checked="">Forgot Password ?
                            </label>
                        </span>
                        <p><a href="ForgetPassword.aspx">Click Here</a> </p>

                       <div class="clearfix"></div>
                    </div>
                    <form id="Form1" runat="server">
                        <div class="log-input">
                            <div class="log-input-left">
                                <asp:TextBox ID="TextMail" runat="server" placeholder="Your Email"></asp:TextBox>
                            </div>

                            <div class="clearfix"></div>
                            <div class="log-input">
                                <div class="log-input-left">
                                    <asp:TextBox ID="TextPass" runat="server" TextMode="Password" placeholder="Enter your Password"></asp:TextBox>
                                </div>

                                <div class="clearfix"></div>
                            </div>
                            <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" />

                            <div class="log-input-left">
                                <asp:Label ID="Label1" runat="server" ForeColor="Red" Font-Bold="False"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                            </div>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Check Email Address" BackColor="White" ControlToValidate="TextMail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </form>
                </div>
                <div class="new_people">
                    <h2>For New People</h2>
                    <p>
                        Having hands on experience in creating innovative designs,I do offer design 
								solutions which harness.
                    </p>
                    <asp:HyperLink ID="Register" runat="server" NavigateUrl="~/register.aspx">Register Now</asp:HyperLink>
                </div>
            </div>
        </div>
    </div>

</asp:Content>