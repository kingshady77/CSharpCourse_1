<%@ Page Title="" Language="C#" MasterPageFile="~/Pr1_MasterPage.master" AutoEventWireup="true" CodeFile="TheAds.aspx.cs" Inherits="TheAds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <form id="form1" runat="server" style="direction: ltr">
        <table class="sign-in-wrapper-background">
            <tr>
                <td style="width: 359px; height: 47px">&nbsp;</td>
                <td style="height: 47px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 21px; height: 47px">&nbsp;</td>
                <td style="width: 420px; height: 47px; font-size: large;">

                    <asp:Label ID="Label8" runat="server" Text="UPDATE ADS POST" Font-Bold="True"></asp:Label>

                </td>
                <td style="width: 359px; height: 47px">&nbsp;</td>
                <td style="height: 47px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 21px; height: 47px">&nbsp;</td>
                <td style="height: 47px" colspan="2">

                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style8" style="width: 162px">
                                <asp:Label ID="lblAdNo" runat="server" Style="text-align: right" Text="Ads Number:*"></asp:Label>
                            </td>
                            <td style="width: 205px" class="auto-style12">
                                <asp:TextBox ID="TextAdNo" runat="server" placeholder="Type Ad Number"></asp:TextBox>
                            </td>

                            <td class="auto-style9" style="width: 310px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style8" style="width: 162px">
                                <asp:Label ID="lblLastName" runat="server" Style="text-align: right" Text="Status:*"></asp:Label>
                            </td>
                            <td class="auto-style12" style="width: 205px">
                                <asp:DropDownList ID="ddlstStatus" runat="server"></asp:DropDownList>
                            </td>
                            <td style="width: 310px">&nbsp;</td>
                            <td class="auto-style9"></td>
                        </tr>
                        <tr>
                            <td class="auto-style3" style="width: 162px">&nbsp;</td>
                            <td class="auto-style12" style="width: 205px">
                                <asp:Button ID="btnUpdateStatus" runat="server" Height="34px" Text="Update" Width="137px" OnClick="btnUpdateStatus_Click" />
                            </td>
                            <td style="width: 310px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 47px; text-align: left; font-size: large;" colspan="3">

                                <asp:Label ID="Label9" runat="server" Text="LIST OF POSTS" Font-Bold="True"></asp:Label>

                            </td>
                            <td style="height: 47px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 47px" colspan="3">
                                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateEditButton="True" BorderColor="#999999" BorderStyle="Solid" EnableSortingAndPagingCallbacks="True" HorizontalAlign="Left" Width="10px" AutoGenerateColumns="False" BackColor="White" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnRowEditing="GridView2_RowEditing" OnPageIndexChanging="GridView2_PageIndexChanging">
                                   
                                    <AlternatingRowStyle BorderStyle="Double" HorizontalAlign="Center" VerticalAlign="Middle" Width="15px" BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:BoundField DataField="AdsId" HeaderText="AdsId">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Ad_Title" HeaderText="Ad Title">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Country" HeaderText="Country">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Brand" HeaderText="Brand">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Model" HeaderText="Model">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Price" HeaderText="Price">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="City" HeaderText="City">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Date" HeaderText="Date">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Status" HeaderText="Status">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Cat_ID" HeaderText="Category ID">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Description" HeaderText="Description">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField />
                                        <asp:BoundField DataField="Conditions" HeaderText="Conditions">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Owner" HeaderText="Owner">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Contact" HeaderText="Contact">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:CommandField ShowDeleteButton="True" />
                                        <asp:CommandField ShowEditButton="True" />
                                    </Columns>
                                    <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                </asp:GridView>
                            </td>
                            <td style="height: 47px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 60px" colspan="3">
                                <div class="sub_home_right">
                                    <p>Go Back to
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminHome.aspx">Admin Home</asp:HyperLink></p>
                                </div>
                                <div class="clearfix"></div>
                                &nbsp;</td>
                        </tr>
                    </table>
        </table>
    </form>

</asp:Content>
