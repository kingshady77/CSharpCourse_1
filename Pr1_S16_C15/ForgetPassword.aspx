<%@ Page Title="" Language="C#" MasterPageFile="~/Pr1_MasterPage.master" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="Server">

    <div id="page-wrapper" class="sign-in-wrapper">
        <div class="graphs">
            <div class="sign-in-form">
                <div class="sign-in-form-top">
                    <h2>Forgot Password!</h2>
                </div>
                <div class="signin">
                    <div class="signin-rit">
                        <h5>Enter your email address below, and we'll reset your password and email you the new one:
                        </h5>
                        <br />
                    </div>
                    <form id="Form1" runat="server">
                        <div class="log-input">
                            <div class="log-input-left">
                                <asp:TextBox ID="TextMail" runat="server" placeholder="Your Email"></asp:TextBox>
                            </div>
                            <div class="clearfix"></div>

                            <asp:Label ID="lblMessage" runat="server" />
                            <br />

                            <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />
                            <div class="log-input-left">
                            </div>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Check Email Address" BackColor="White" ControlToValidate="TextMail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

