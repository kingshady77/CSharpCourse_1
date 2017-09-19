<%@ Page Title="" Language="C#" MasterPageFile="~/Pr1_MasterPage.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="TheAdmin.aspx.cs" Inherits="TheAdmin" %>

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
                <td style="height: 47px; font-size: large;">

                    <asp:Label ID="Label8" runat="server" Text="ADD ADITIONAL ADMIN" Font-Bold="True" Style="text-align: left"></asp:Label>

                </td>
                <td style="height: 47px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 21px; height: 47px">&nbsp;</td>
                <td style="height: 47px">

                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style8" style="width: 162px">
                                <asp:Label ID="lblFName" runat="server" Style="text-align: right" Text="First Name:*"></asp:Label>
                            </td>
                            <td style="width: 205px" class="auto-style12">
                                <asp:TextBox ID="TextFName" runat="server" placeholder=" " required=" "></asp:TextBox>
                            </td>

                            <td class="auto-style9" style="width: 310px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxAdminPass" ErrorMessage="Enter FName" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8" style="width: 162px">
                                <asp:Label ID="lblLastName" runat="server" Style="text-align: right" Text="Last Name:*"></asp:Label>
                            </td>
                            <td class="auto-style10" style="width: 205px">
                                <asp:TextBox ID="TextLName" runat="server" placeholder=" " required=" "></asp:TextBox>
                            </td>
                            <td style="width: 310px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxAdminName" ErrorMessage="Enter Admin LName" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style9"></td>
                        </tr>
                        <tr>
                            <td class="auto-style8" style="width: 162px">
                                <asp:Label ID="Label5" runat="server" Style="text-align: right" Text="Admin Name:*"></asp:Label>
                            </td>
                            <td class="auto-style10" style="width: 205px">
                                <asp:TextBox ID="TextBoxAdminName" runat="server" placeholder=" " required=" "></asp:TextBox>
                            </td>
                            <td class="auto-style9" style="width: 310px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxAdminName" ErrorMessage="Enter Admin Name" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8" style="width: 162px">
                                <asp:Label ID="Label6" runat="server" Text="Admin Email:*"></asp:Label>
                            </td>

                            <td class="auto-style10" style="width: 205px">
                                <asp:TextBox ID="TextBoxAdminEmail" runat="server" placeholder=" " required=" "></asp:TextBox>
                            </td>
                            <td class="auto-style9" style="width: 310px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxAdminEmail" ErrorMessage="Enter Admin Email" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBoxAdminEmail"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8" style="width: 162px">
                                <asp:Label ID="Label7" runat="server" Text="Admin Password:*"></asp:Label>
                            </td>

                            <td class="auto-style10" style="width: 205px">
                                <asp:TextBox ID="TextBoxAdminPass" runat="server" placeholder=" " required=" " TextMode="Password"></asp:TextBox>
                            </td>

                            <td class="auto-style9" style="width: 310px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxAdminPass" ErrorMessage="Enter Admin Password" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8" style="width: 162px">
                                <asp:Label ID="lblConfirmPass" runat="server" Text="Retype Password:*"></asp:Label>
                            </td>
                            <td style="width: 205px" class="auto-style12">
                                <asp:TextBox ID="TextConfirmPassword" runat="server" placeholder=" " required=" " TextMode="Password"></asp:TextBox>
                            </td>
                            <td class="auto-style9" style="width: 310px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxAdminPass" ErrorMessage="Enter Retype Password" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8" style="width: 162px">
                                <asp:Label ID="lblMobile" runat="server" Text="Mobile Phone:*"></asp:Label>
                            </td>
                            <td style="width: 205px" class="auto-style12">
                                <asp:TextBox ID="TextMobile" runat="server" placeholder=" " required=" "></asp:TextBox>
                            </td>
                            <td class="auto-style9" style="width: 310px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxAdminPass" ErrorMessage="Enter Mobile Number" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3" style="width: 162px">&nbsp;</td>
                            <td class="auto-style12" style="width: 205px">
                                <asp:Button ID="BtnAdmin0" runat="server" Height="34px" Text="Add Admin" Width="137px" OnClick="BtnAdmin_Click" />

                            </td>
                            <td style="width: 310px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 47px; text-align: center; font-size: large;" colspan="3">

                                <asp:Label ID="Label9" runat="server" Text="LIST OF USERS" Font-Bold="True" Style="text-align: center"></asp:Label>

                            </td>
                            <td style="height: 47px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 47px" colspan="3">

                                <asp:GridView ID="GridView2" runat="server" DataKeyNames="Id" PageSize="10" OnRowDeleting="GridView2_RowDeleting" OnRowDataBound="OnRowDataBound" OnPageIndexChanging="GridView2_PageIndexChanging1" AllowPaging="True" AllowSorting="True" BorderColor="ForestGreen" BorderStyle="Solid" EnableSortingAndPagingCallbacks="false" HorizontalAlign="Center" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderWidth="3px" CellPadding="10" CellSpacing="20" ForeColor="Black" OnRowCommand="GridView2_RowCommand">
                                    <AlternatingRowStyle BorderStyle="Double" HorizontalAlign="Center" VerticalAlign="Middle" Width="55px" />
                                    <Columns>
                                        <asp:BoundField DataField="FName" HeaderText="&nbsp;&nbsp;&nbsp;First&nbsp;&nbsp; Name&nbsp;&nbsp;">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="LName" HeaderText="Last Name" ItemStyle-Width="100%">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="UserName" HeaderText="User Name" ItemStyle-Width="100%">
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Email" HeaderText="Email" ItemStyle-Width="100%">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Password" HeaderText="Password" ItemStyle-Width="100%">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="ConfirmPassword" HeaderText="Confirm Password" ItemStyle-Width="100%">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" ItemStyle-Width="100%">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Level" HeaderText="Level">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Id" HeaderText="UserID">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>

                                        <asp:TemplateField HeaderText="Delete User Details">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkdelete" runat="server" OnClick="lnkdelete_Click">Delete</asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                    </Columns>
                                    <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200%" />

                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="#01d0aa" Font-Bold="True" ForeColor="Black" />
                                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                    <RowStyle BackColor="White" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="Gray" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />

                                </asp:GridView>

                            </td>
                            <td style="height: 47px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 60px" colspan="3">
                                <div class="sub_home_right">
                                    <p>
                                        Go Back to
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminHome.aspx">Admin Home</asp:HyperLink>
                                    </p>
                                </div>
                                <div class="clearfix"></div>
                                &nbsp;</td>

                        </tr>
                    </table>
        </table>
        <script type="text/javascript">

            function ConfirmationBox(FName) {
                var result = confirm('Are you sure you want to delete ' + FName + ' Details');
                if (result) {

                    return true;
                }
                else {
                    return false;
                }
            }
        </script>

    </form>

</asp:Content>
