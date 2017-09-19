<%@ Page Title="" Language="C#" MasterPageFile="~/Pr1_MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">

    <section>
        <form id="Form1" runat="server">

            <div id="page-wrapper" class="sign-in-wrapper">
                <div class="graphs">
                    <div class="sign-up">
                        <h1>Create an account</h1>
                        <p class="creating">
                            Having hands on experience in creating innovative designs,I do offer design 
							solutions which harness.
                        </p>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is required" ControlToValidate="TextFName" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is required" ControlToValidate="TextLName" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email Address is required" ControlToValidate="TextEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextEmail" ErrorMessage="Enter a valid E-Mail Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password is required" ControlToValidate="TextPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Confimr Password is required" ControlToValidate="TextConfirmPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextPassword" ControlToValidate="TextConfirmPassword" ErrorMessage="Both Passwords must be same" ForeColor="Red"></asp:CompareValidator>
                        

                        <h2>Personal Information</h2>

                        <div class="sign-u" style="height: 76px">
                            <div class="sign-up1">
                                <h4>First Name* :</h4>
                            </div>
                            <div class="sign-up2">
                                <asp:TextBox ID="TextFName" runat="server" placeholder=" " required=" "></asp:TextBox>
                            </div>

                            <div class="clearfix"></div>
                        </div>

                        <div class="sign-u">
                            <div class="sign-up1">
                                <h4>Last Name* :</h4>
                            </div>
                            <div class="sign-up2">
                                <asp:TextBox ID="TextLName" runat="server" placeholder=" " required=" "></asp:TextBox>
                            </div>
                            <div class="clearfix"></div>
                        </div>


                        <div class="sign-up1">
                            <h4>User Name* :</h4>
                        </div>
                        <div class="sign-up2">
                            <asp:TextBox ID="TextUserName" runat="server" placeholder=" " required=" "></asp:TextBox>
                        </div>
                        <div class="sign-u">
                            <div class="sign-up1">
                                <h4>Email Address* :</h4>
                            </div>
                            <div class="sign-up2">
                                <asp:TextBox ID="TextEmail" runat="server" placeholder=" " required=" "></asp:TextBox>
                            </div>
                            <div class="clearfix"></div>
                        </div>

                        <div class="sign-u">
                            <div class="sign-up1">
                                <h4>Password* :</h4>
                            </div>
                            <div class="sign-up2">
                                <asp:TextBox ID="TextPassword" runat="server" placeholder=" " required=" " TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="clearfix"></div>
                        </div>

                        <div class="sign-u">
                            <div class="sign-up1">
                                <h4>Confirm Password* :</h4>
                            </div>
                            <div class="sign-up2">
                                <asp:TextBox ID="TextConfirmPassword" runat="server" placeholder=" " required=" " TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="clearfix"></div>
                        </div>

                        <div class="sign-u">
                            <div class="sign-up1">
                                <h4>Mobile* :</h4>
                            </div>
                            <div class="sign-up2">
                                <asp:TextBox ID="TextMobile" runat="server" placeholder=" " required=" "></asp:TextBox>
                            </div>
                            <div class="clearfix"></div>
                        </div>

                        <div class="sub_home">
                            <div class="sub_home_left">
                                <asp:Button ID="CrBtn" runat="server" Text="Create" OnClick="CrBtn_Click" />
                            </div>
                            <div class="sub_home_right">
                                
                                <p>Go Back to <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/home.aspx">Home</asp:HyperLink></p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>

</asp:Content>

