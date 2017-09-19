<%@ Page Title="" Language="C#" MasterPageFile="~/Pr1_MasterPage.master" AutoEventWireup="true" CodeFile="all-classifieds.aspx.cs" Inherits="all_classifieds" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="Server">
    <!-- Products -->
    <form id="form2" runat="server">

        <div class="total-ads main-grid-border">
            <div class="container">
                <div class="select-box">
                    <div class="select-city-for-local-ads ads-list">
                        <label>Select Your City to See Local Ads</label>
                        <asp:DropDownList ID="DDL_SelectCont" runat="server" DataSourceID="SqlDataSource1_SelectCountry" DataTextField="CountryName" DataValueField="Id" AutoPostBack="True" OnSelectedIndexChanged="DDL_SelectCont_SelectedIndexChanged"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1_SelectCountry" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="SELECT * FROM [Country]"></asp:SqlDataSource>
                    </div>

                    <div class="browse-category ads-list">
                        <label>Browse Categories</label>
                        <asp:DropDownList ID="DDL_SelectCat" runat="server" OnSelectedIndexChanged="DDL_SelectCat_SelectedIndexChanged" AutoPostBack="True" ></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2_SelectCat" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="SELECT [Id],[Name] FROM [Category]"></asp:SqlDataSource>

                    </div>

                    <div class="search-product ads-list">
                        <label>Search</label>
                        <div class="search">
                            <div id="custom-search-input">
                                <div class="input-group">
                                    <asp:TextBox ID="SearchTxtBox" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                                    <span class="input-group-btn">
                                        <button class="btn btn-info btn-lg" type="button" runat="server" onserverclick="BtnSearch_Click">
                                            <i class="glyphicon glyphicon-search"></i>
                                        </button>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>

                <div class="clearfix"></div>

                <div class="ads-display col-md-9">
                    <div class="wrapper">
                        <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                            <div id="myTabContent" class="tab-content">
                                <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
                                    <div>
                                        <div id="container">
                                            <div class="sort">
                                                <div class="sort-by">
                                                    <label>Sort By : </label>
                                                    <asp:DropDownList ID="ddlsort" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlsort_SelectedIndexChanged">
                                                        <asp:ListItem Text="Most recent" Value="ASC"></asp:ListItem>
                                                        <asp:ListItem Text="Price: $ Low to High" Value="PriceASC"></asp:ListItem>
                                                        <asp:ListItem Text="Price: $ High to Low" Value="PriceDESC"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                            <ul class="list">
                                                <asp:GridView AutoGenerateColumns="false" ID="GridView1" runat="server" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="True" PageSize="5">
                                                    <Columns>
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <li>
                                                                    <asp:Image ID="Image1" runat="server" Height="150px" Width="190px"
                                                                        ImageUrl='<%# Eval("Photo1Path") %>' />
                                                                    <section class="list-left">
                                                  
<%--                                                                         <asp:Label ID="LabelId" runat="server" Visible="false" Text='<%# Eval ("AdsId")%>' CssClass="catpath"></asp:Label>--%>
                                                  
                                                                        <asp:Label ID="LabelTitle" runat="server" Text='<%# Eval ("Ad_Title") %>' CssClass="catpath"></asp:Label>
                                                                        <a href="details.aspx?AdvId=<%# Eval("AdsId") %>">&nbsp; Ad Details</a>
                                                                        <br />
                                                                        <asp:Label ID="LabelDesc" runat="server" CssClass="title_1" Text='<%# Eval ("Description") %>'> </asp:Label>
                                                                        <asp:Label ID="LabelPrice" runat="server" Text='<%# Eval ("Price")+"$" %>' CssClass="adprice"></asp:Label>
                                                                    </section>

                                                                    <section class="list-right">
                                                                        <asp:Label ID="LabelDate" runat="server" Text='<%# GetTimeAgo(Eval ("Date")) %>' CssClass="date"></asp:Label>
                                                                        <asp:Label ID="LabelCont" runat="server" Text='<%# Eval ("Country") %>' CssClass="cityname"></asp:Label>
                                                                    </section>
                                                                    <div class="clearfix"></div>
                                                                </li>

                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>


                                                <div class="clearfix"></div>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
                                    <div>
                                        <div id="Div1">
                                            <div class="view-controls-list" id="Div2">
                                                <label>view :</label>
                                                <a class="gridview"><i class="glyphicon glyphicon-th"></i></a>
                                                <a class="listview active"><i class="glyphicon glyphicon-th-list"></i></a>
                                            </div>
                                            <div class="sort">
                                                <div class="sort-by">
                                                     <label>Sort By : </label>
                                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlsort_SelectedIndexChanged">
                                                        <asp:ListItem Text="Most recent" Value="ASC"></asp:ListItem>
                                                        <asp:ListItem Text="Price: $ Low to High" Value="ASC"></asp:ListItem>
                                                        <asp:ListItem Text="Price: $ High to Low" Value="DESC"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                                                                          </div>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane fade" id="samsa" aria-labelledby="samsa-tab">
                                    <div>
                                        <div id="Div3">
                                            <div class="view-controls-list" id="Div4">
                                                <label>view :</label>
                                                <a class="gridview"><i class="glyphicon glyphicon-th"></i></a>
                                                <a class="listview active"><i class="glyphicon glyphicon-th-list"></i></a>
                                            </div>
                                            <div class="sort">
                                                <div class="sort-by">
                                                     <label>Sort By : </label>
                                                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlsort_SelectedIndexChanged">
                                                        <asp:ListItem Text="Most recent" Value="ASC"></asp:ListItem>
                                                        <asp:ListItem Text="Price: $ Low to High" Value="ASC"></asp:ListItem>
                                                        <asp:ListItem Text="Price: $ High to Low" Value="DESC"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </form>
    <!-- // Products -->
</asp:Content>
