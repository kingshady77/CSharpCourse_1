<%@ Page Title="" Language="C#" MasterPageFile="~/Pr1_MasterPage.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 261px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <form id="form1" runat="server">

        <div style="height: 139px">
            <table class="sign-in-wrapper-background">
                <tr>
                    <td class="auto-style12"></td>
                    &nbsp&nbsp&nbsp
                    <asp:Button ID="BtnAdmin" runat="server" Height="47px" Text="Add Admin" Width="126px" CssClass="AdminAd" OnClick="BtnAdmin_Click" />
                    &nbsp&nbsp&nbsp
                    <asp:Button ID="BtnAdsStatus" runat="server" Height="47px" Text="Check Posts" Width="126px" CssClass="AdminAd" OnClick="BtnAdsStatus_Click" />
                    &nbsp&nbsp&nbsp
                    <asp:Button ID="BtnAdd" runat="server" Height="47px" Text="Modify Category" Width="126px" CssClass="AdminAd" OnClick="BtnAdd_Click" />
                </tr>
            </table>
        </div>
    </form>
</asp:Content>

