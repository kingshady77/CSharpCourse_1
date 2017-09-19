<%@ Page Title="" Language="C#" MasterPageFile="~/Pr1_MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">

    <!-- Terms of use -->
    <div class="contact main-grid-border">
        <div class="container">
            <h2 class="head text-center">Contact Us</h2>
            <section id="hire">
                <form id="filldetails" runat="server">
                    <div class="field name-box">
                        <input type="text" id="name" placeholder="Who Are You?" />
                        <label for="name">Name</label>
                        <span class="ss-icon">check</span>
                    </div>

                    <div class="field email-box">
                        <input type="text" id="email" placeholder="example@email.com" />
                        <label for="email">Email</label>
                        <span class="ss-icon">check</span>
                    </div>

                    <div class="field ad-ID">
                        <input type="text" id="Text1" placeholder="Ad ID" />
                        <label for="email">Ad ID</label>
                        <span class="ss-icon">check</span>
                    </div>

                    <div class="field phonenum-box">
                        <input type="text" id="Text2" placeholder="Phone Number" />
                        <label for="email">Phone</label>
                        <span class="ss-icon">check</span>
                    </div>

                    <div class="field msg-box">
                        <asp:TextBox ID="TextArea1" runat="server" Rows="4" TextMode="MultiLine" placeholder="Your message goes here..."></asp:TextBox>
                        <label for="msg">Your Msg</label>
                        <span class="ss-icon">check</span>
                    </div>

                    <div class="upload">
                        <h3 class="tlt">Add Attachment:</h3>
                    </div>

                    <div id="drop">
                        <a>Choose file</a>
                        <asp:FileUpload ID="Fileupload" runat="server" AllowMultiple="True" />    
                    </div>

                    <ul class="show">
                        <!-- The file uploads will be shown here -->
                    </ul>

                    <div class="clear">
                    </div>
                    <asp:Button class="button" ID="BtnSend" runat="server" Text="Send" />
                    <!-- JavaScript Includes -->
                    <script src="js/jquery.knob.js"></script>

                    <!-- jQuery File Upload Dependencies -->
                    <script src="js/jquery.ui.widget.js"></script>
                    <script src="js/jquery.fileupload.js"></script>

                    <!-- Our main JS file -->
                    <script src="js/script.js"></script>

                    <script>
                        $('textarea').blur(function () {
                            $('#hire textarea').each(function () {
                                $this = $(this);
                                if (this.value != '') {
                                    $this.addClass('focused');
                                    $('textarea + label + span').css({ 'opacity': 1 });
                                } else {
                                    $this.removeClass('focused');
                                    $('textarea + label + span').css({ 'opacity': 0 });
                                }
                            });
                        });
                        $('#hire .field:first-child input').blur(function () {
                            $('#hire .field:first-child input').each(function () {
                                $this = $(this);
                                if (this.value != '') {
                                    $this.addClass('focused');
                                    $('.field:first-child input + label + span').css({ 'opacity': 1 });
                                } else {
                                    $this.removeClass('focused');
                                    $('.field:first-child input + label + span').css({ 'opacity': 0 });
                                }
                            });
                        });
                        $('#hire .field:nth-child(2) input').blur(function () {
                            $('#hire .field:nth-child(2) input').each(function () {
                                $this = $(this);
                                if (this.value != '') {
                                    $this.addClass('focused');
                                    $('.field:nth-child(2) input + label + span').css({ 'opacity': 1 });
                                } else {
                                    $this.removeClass('focused');
                                    $('.field:nth-child(2) input + label + span').css({ 'opacity': 0 });
                                }
                            });
                        });
                        $('#hire .field:nth-child(3) input').blur(function () {
                            $('#hire .field:nth-child(3) input').each(function () {
                                $this = $(this);
                                if (this.value != '') {
                                    $this.addClass('focused');
                                    $('.field:nth-child(3) input + label + span').css({ 'opacity': 1 });
                                } else {
                                    $this.removeClass('focused');
                                    $('.field:nth-child(3) input + label + span').css({ 'opacity': 0 });
                                }
                            });
                        });
                        $('#hire .field:nth-child(4) input').blur(function () {
                            $('#hire .field:nth-child(4) input').each(function () {
                                $this = $(this);
                                if (this.value != '') {
                                    $this.addClass('focused');
                                    $('.field:nth-child(4) input + label + span').css({ 'opacity': 1 });
                                } else {
                                    $this.removeClass('focused');
                                    $('.field:nth-child(4) input + label + span').css({ 'opacity': 0 });
                                }
                            });
                        });
                        //@ sourceURL=pen.js
                    </script>
                    <script>
                        if (document.location.search.match(/type=embed/gi)) {
                            window.parent.postMessage("resize", "*");
                        }
                    </script>
                </form>
            </section>
        </div>
    </div>
    <!-- // Terms of use -->
</asp:Content>
