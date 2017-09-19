<%@ Page Title="" Language="C#" MasterPageFile="~/Pr1_MasterPage.master" AutoEventWireup="true" CodeFile="details.aspx.cs" Inherits="details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <%--<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>--%>
<script type="text/javascript" language="javascript">
    $(document).ready(function () {
        ShowPreview();
    });
    // Configuration of the x and y offsets
    function ShowPreview() {
        xOffset = -20;
        yOffset = 0;

        $("a.preview").hover(function (e) {
            this.t = this.title;
            this.title = "";
            var c = (this.t != "") ? "<br/>" + this.t : "";
            $("body").append("<p id='preview'><img src='" + this.href + "' alt='Image preview' />" + c + "</p>");
            $("#preview")
.css("top", (e.pageY - xOffset) + "px")
.css("left", (e.pageX + yOffset) + "px")
.fadeIn("slow");
        },

function () {
    this.title = this.t;
    $("#preview").remove();
});

        $("a.preview").mousemove(function (e) {
            $("#preview")
.css("top", (e.pageY - xOffset) + "px")
.css("left", (e.pageX + yOffset) + "px");
        });
    };
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <form id="form1" runat="server">

        <!--single-page-->
        <div class="single-page main-grid-border">
            <div class="container">

                <div class="product-desc">
                    <div class="col-md-7 product-view">

                        <asp:Label ID="lblAdv" runat="server" Text="ndjwndjwendnewjdwn"></asp:Label>
                        <asp:Label ID="lblAdsNumber" runat="server"></asp:Label>
                        
                        <p> <i class="glyphicon glyphicon-map-marker"></i><asp:Label ID="LabelCity" runat="server" Text="City"></asp:Label> | <asp:Label ID="LabelTime" runat="server" Text="Added At "></asp:Label></p>

                        <div class="flexslider">
                            

                            <ul  class="slides" >
                                <li id="FirstPhoto" >
                                    <a class="preview" Id="Image1Link" runat="server"><asp:Image class="preview" ID="Image1" runat="server" Width="400" Height="300" /></a>
                                
                                </li>
                                <li  data-thumb="ImageUrl='<%# Eval("Photo1Path") %>'">
                                    <a class="preview" Id="Image2Link" runat="server"><asp:Image ID="Image2" runat="server" Width="400" Height="300"/></a>
                                </li>
                                <li data-thumb='<%# Eval("Photo3Path") %>'>
                                    <a class="preview" id="Image3Link" runat="server"><asp:Image ID="Image3" runat="server" Width="400" Height="300"/></a>
                                </li>
                            </ul>
                        </div>
                        <!-- FlexSlider -->
                        <script defer src="js/jquery.flexslider.js"></script>
                        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

                        <script>
                            // Can also be used with $(document).ready()
                            $(window).load(function () {
                                $('.flexslider').flexslider({
                                    animation: "slide",
                                    controlNav: "thumbnails"
                                });
                            });
                        </script>
        
                        <!-- //FlexSlider -->
                        <div class="product-details">
                            <asp:Label ID="LabelBrand" runat="server" Text="Brand"> <a href="#">Company Name</a></asp:Label>

                            <p><strong>Summary</strong> : <asp:Label ID="LabelDescription" runat="server" Text="Description"></asp:Label></p>


                        </div>
                    </div>
                    <div class="col-md-5 product-details-grid">
                        <div class="item-price">
                            <div class="product-price">
                                
                                <asp:Label ID="Label1" runat="server" Text="Price:" CssClass="p-price"></asp:Label>
                                <asp:Label ID="lblPrice" runat="server" Text="295 $" CssClass="rate"></asp:Label>
                                <div class="clearfix"></div>
                            </div>


                            <div class="condition">
                                <asp:Label ID="Label2" runat="server" Text="Condition:" CssClass="p-price"></asp:Label>
                                <asp:Label ID="lblCondition" runat="server" Text="Good" CssClass="p-price" ></asp:Label>
                                <div class="clearfix"></div>
                            </div>

                            <div class="itemtype">
                                <asp:Label ID="Label3" runat="server" Text="Year:" CssClass="p-price"></asp:Label>
                                <asp:Label ID="lblItem" runat="server" Text="Iphone" CssClass="p-price"></asp:Label>
                                
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="interested text-center">
                            <h4>Interested in this Ad?<small> Contact the Seller!</small></h4>
                            <p><i class="glyphicon glyphicon-earphone"></i><asp:Label ID="LabelContact" runat="server" Text="Contact"></asp:Label></p>
                        </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        <!--//single-page-->
    </form>
   
</asp:Content>

