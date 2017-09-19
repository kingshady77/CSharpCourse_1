<%@ Page Title="" Language="C#" MasterPageFile="~/Pr1_MasterPage.master" AutoEventWireup="true" CodeFile="AdminCategory.aspx.cs" Inherits="AdminCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <form id="form1" runat="server">
        <table class="sign-in-wrapper-background">
            <tr>
                <td style="width: 63px" colspan="2">&nbsp;</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="ADD CATEGORY"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 63px" colspan="2">&nbsp;</td>
                <td>
                    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource_Cat" GridLines="Both" DataKeyNames="Id">
                        <EditItemTemplate>
                            Id:
                            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                            <br />
                            Name:
                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                            <br />
                            Description:
                            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                            <br />
                            Image:
                            <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <InsertItemTemplate>
                            Name:
                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                            <br />
                            Description:
                            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                            <br />
                            Image:
                            <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            Id:
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                            <br />

                            Name:
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                            <br />
                            Description:
                            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
                            <br />
                            Image:
                            <asp:Label ID="ImageLabel" runat="server" Text='<%# Bind("Image") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />

                        </ItemTemplate>
                        <PagerStyle ForeColor="#003399" HorizontalAlign="Left" VerticalAlign="Middle" BackColor="#99CCCC" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource_Cat" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="SELECT * FROM [Category]" DeleteCommand="DELETE FROM [Category] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Category] ([Name], [Description], [Image]) VALUES (@Name, @Description, @Image)" UpdateCommand="UPDATE [Category] SET [Name] = @Name, [Description] = @Description, [Image] = @Image WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Description" Type="String" />
                            <asp:Parameter Name="Image" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Description" Type="String" />
                            <asp:Parameter Name="Image" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 63px" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 63px" colspan="2">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDataBound="GridView1_RowDataBound" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource_Cat" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" DeleteImageUrl="~/images/delete.gif" EditImageUrl="~/images/edit.gif" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="35%" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="40%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="40%" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="40%" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#01d0aa" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Width="40%" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" HorizontalAlign="Center" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" HorizontalAlign="Center" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" HorizontalAlign="Center" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" HorizontalAlign="Center" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="width: 63px" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 63px" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 60px">&nbsp;</td>
                <td style="height: 60px" colspan="2">
                    <div class="sub_home_left">
                        <p>
                            Go Back to
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminHome.aspx">Admin Home</asp:HyperLink>
                        </p>
                    </div>
                    <div class="clearfix"></div>
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>




