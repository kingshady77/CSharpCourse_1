<%@ Page Title="" Language="C#" MasterPageFile="~/Pr1_MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="index" %>


<asp:Content ID="ThePostButton" runat="server" ContentPlaceHolderID="head">


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">

 
    <!-- content-starts-here -->
<style>
i {
    border: solid black;
    border-width: 0 3px 3px 0;
    display: inline-block;
    padding: 3px;
}

.right {
    transform: rotate(-45deg);
    -webkit-transform: rotate(-45deg);
}

.left {
    transform: rotate(135deg);
    -webkit-transform: rotate(135deg);
}
.owl-prev {
    position: absolute;
    top: 50%;
    left: -50px;
}
.owl-next {
    position: absolute;
    top: 50%;
    right: -50px;
}
</style>
    <div class="content">
        <div class="categories">
            <div class="container">
               
                <asp:Repeater ID="Repeater1" runat="server"  DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div class="col-md-2 focus-grid">
                            <a href="all-classifieds.aspx?CatId=<%# Eval("Id") %>">
                                <div class="focus-border">
                                    <div class="focus-layout">
                                        <div class="focus-image"><i class="fa <%# Eval("Image") %>"></i></div>
                                        <h4 class="clrchg"><%# Eval("Name") %></h4>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                        
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="SELECT * FROM [Category] WHERE ([Id] &gt; @Id)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="21" Name="Id" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                <div class="clearfix"></div>
            </div>
        </div>
        <div class="trending-ads">
            <div class="container">
                <!-- slider -->
                <div class="trend-ads">
                    <h2>Trending Ads</h2>
                    <ul id="flexiselDemo3_" class="owl-carousel">
                        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                                <ItemTemplate>
                                    <li>
                                        <div class="biseller-column">
                                            <a href="details.aspx?AdvId=<%# Eval("AdsId") %>">
                                                <img src="<%# Eval("Photo1Path").ToString().Replace("~/", "") %>" height="300" width="400" />
                                                <span class="price">&#36; <%# Eval("Price") %>"</span>
                                            </a>
                                            <div class="ad-info">
                                                <h5><%# Eval("Ad_Title") %></h5>
                                                <span>Posted On : <%# Eval("Date") %></span>
                                            </div>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="SELECT * FROM [Ads]"></asp:SqlDataSource>

                    </ul>
<script src="https://owlcarousel2.github.io/OwlCarousel2/assets/owlcarousel/owl.carousel.js"></script>
                    <script type="text/javascript">
                        $(window).load(function () {

                            $('#flexiselDemo3_').owlCarousel({
    loop:true,
slideBy: 4, 
    margin:10,
rtl:true,
    nav:true,
autoplay:true,
navText:['<i class="arrow left"></i>','<i class="arrow right"></i>'],
    responsive:{
        0:{
            items:1
        },
        600:{
            items:3
        },
        1000:{
            items:4
        }
    }
})
                        });
                    </script>
                    <script type="text/javascript" src="js/jquery.flexisel.js"></script>
                </div>
            </div>
            <!-- //slider -->
        </div>
        <div class="mobile-app">
            <div class="container">
                <div class="col-md-5 app-left">
                    <a href="mobileapps.aspx">
                        <img src="images/app.png" alt=""></a>
                </div>
                <div class="col-md-7 app-right">
                    <h3><span style="color: orangered">AdsValley</span>App is the Easiest way for Selling and buying second-hand goods</h3>
                    <p>Find amazing deals on the go. Download the app now! (Under Construction)</p>
                    <div class="app-buttons">
                        <div class="app-button">
                            <a href="#">
                                <img src="images/1.png" alt=""></a>
                        </div>
                        <div class="app-button">
                            <a href="#">
                                <img src="images/2.png" alt=""></a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>



</asp:Content>

