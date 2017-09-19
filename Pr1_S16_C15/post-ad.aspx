<%@ Page Title="" Language="C#" MasterPageFile="~/Pr1_MasterPage.master" AutoEventWireup="true" CodeFile="post-ad.aspx.cs" Inherits="post_ad" %>


<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <!-- Submit Ad -->
    <div class="submit-ad main-grid-border">
        <div class="container">
            <h2 class="head">Post an Ad</h2>
            <div class="post-ad-form">
                <form id="Form1" runat="server">

                    <label>Select Country <span>*</span></label>
                    <asp:DropDownList ID="DDLCount" runat="server" Width="320px"></asp:DropDownList>
                    <div class="clearfix"></div>
                    <div class="clearfix"></div>
                    <br />


                    <label>Select Category <span>*</span></label>
                    <asp:DropDownList ID="DDLCat" runat="server" Width="320px"></asp:DropDownList>
                    <div class="clearfix"></div>
                    <div class="clearfix"></div>
                    <br />

                    <asp:TextBox ID="AdsNumber" runat="server" Width="200px" Visible="false"></asp:TextBox>
                    <div class="clearfix"></div>

                    <label>Ad Title <span>*</span></label>
                    <asp:TextBox ID="AdTitle" runat="server" Width="320px"></asp:TextBox>
                    <div class="clearfix"></div>


                    <label>Brand <span>*</span></label>
                    <asp:TextBox ID="AdBrand" runat="server" Width="320px"></asp:TextBox>
                    <div class="clearfix"></div>

                    <label>Model <span>*</span></label>
                    <asp:TextBox ID="AdsModel" runat="server" Width="320px"></asp:TextBox>
                    <div class="clearfix"></div>

                    <label>Price <span>*</span></label>
                    <asp:TextBox ID="AdPrice" runat="server" Width="320px"></asp:TextBox>
                    <div class="clearfix"></div>

                    <label>Condition <span>*</span></label>
                    <asp:TextBox ID="AdCondition" runat="server" Width="320px"></asp:TextBox>
                    <div class="clearfix"></div>


                    <label>Ad Description <span>*</span></label>
                    <asp:TextBox ID="TextDesc" runat="server" TextMode="MultiLine" Height="150" placeholder="Pleaase provide more specific details of your ads features, condition, warranty, insurance, etc.."></asp:TextBox>
                    <div class="clearfix"></div>


                    <div class="upload-ad-photos">
                        <label>Photos for your ad :</label>
                        <div class="photos-upload-view">
                            <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="False" />
                            <br />
                            <asp:FileUpload ID="FileUpload2" runat="server" AllowMultiple="False" />
                            <br />
                            <asp:FileUpload ID="FileUpload3" runat="server" AllowMultiple="False" />
                            <br />
                        </div>
                        <asp:Label ID="lblMessage" runat="server" Text="" Font-Names="Arial"></asp:Label>
                        <br />
                        <div class="clearfix"></div>
                    </div>
                    <div class="personal-details">

                        <label>Your User Name <span>*</span></label>
                        <asp:TextBox ID="TextUserName" runat="server" class="name" placeholder=""></asp:TextBox>
                        &nbsp;
                        <div class="clearfix"></div>

                        <label>Your Mobile No <span>*</span></label>
                        <asp:TextBox ID="TextMobile" runat="server" class="phone" placeholder=""></asp:TextBox>
                        <div class="clearfix"></div>

                        <label>Your Email Address<span>*</span></label>
                        <asp:TextBox ID="TextMail" runat="server" class="email" placeholder=""></asp:TextBox>
                        <div class="clearfix"></div>

                        <p class="post-terms">By clicking <strong>Post Button</strong> you accept our <a href="terms.aspx" target="_blank">Terms of Use </a>and <a href="privacy.aspx" target="_blank">Privacy Policy</a></p>
                        <br />
                        <table align="center">
                            <tr>
                                <td>
                                    <asp:Button ID="SubmitBtn" runat="server" Text="Post" OnClick="SubmitBtn_Click" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- // Submit Ad -->

</asp:Content>
