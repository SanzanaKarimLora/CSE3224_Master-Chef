<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <style type="text/css">
        .auto-style1 {
            width: 72%;
            height: 279px;
            margin-left: 108px;
        }
        .auto-style2 {
            height: 47px;
            width: 353px;
        }
        .auto-style4 {
            height: 47px;
            width: 311px;
            text-align: center;
        }
        .auto-style5 {
            width: 311px;
            text-align: center;
        }
        .auto-style6 {
            margin-top: 0px;
        }
        .auto-style7 {
            height: 504px;
            text-align: center;
        }
        .auto-style8 {
            margin-top: 30px;
        }
        .auto-style9 {
            width: 353px;
        }
    </style>

     <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Master Chef | Registration</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <!-- Preloader -->
    <div id="preloader">
        <i class="circle-preloader"></i>
        <img src="img/core-img/salad.png" alt="">
    </div>

    <!-- Search Wrapper -->
    <div class="search-wrapper">
        <!-- Close Btn -->
        <div class="close-btn"><i class="fa fa-times" aria-hidden="true"></i></div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <form action="#" method="post">
                        <input type="search" name="search" placeholder="Type any keywords...">
                        <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">

        <!-- Top Header Area -->
        <div class="top-header-area">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-between">
                    <!-- Breaking News -->
                    <div class="col-12 col-sm-6">
                        <div class="breaking-news">
                            <div id="breakingNewsTicker" class="ticker">
                                <ul>
                                    <li><a href="#">Hello</a></li>
                                    <li><a href="#">Welcome to Master Chef</a></li>
                                    <li><a href="#">Find all things in a single place</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Top Social Info -->
                    <div class="col-12 col-sm-6">
                        <div class="top-social-info text-right">
                            <a href="https://www.pinterest.com/"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                            <a href="https://www.facebook.com/"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                            <a href="https://www.twitter.com/"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                            
                            <a href="https://www.linkedin.com/"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Navbar Area -->
        <div class="delicious-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="deliciousNav">

                        <!-- Logo -->
                        <a class="nav-brand" href="Default.aspx"><img src="img/core-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li class="active"><a href="Default.aspx">Home</a></li>
                                    <li><a href="#">Pages</a>
                                        <ul class="dropdown">
                                            <li><a href="Default.aspx">Home</a></li>
                                            <li><a href="About.aspx">About Us</a></li>
                                            <li><a href="Post.aspx">Blog Post</a></li>
                                            <li><a href="Receipe.aspx">Receipe Post</a></li>
                                            <li><a href="Contact.aspx">Contact</a></li>
                                            <li><a href="Contents.aspx">Elements</a></li>
                                            <li><a href="#">Dropdown</a>
                                                <ul class="dropdown">
                                                    <li><a href="index.html">Home</a></li>
                                                    <li><a href="about.html">About Us</a></li>
                                                    <li><a href="blog-post.html">Blog Post</a></li>
                                                    <li><a href="receipe-post.html">Receipe Post</a></li>
                                                    <li><a href="contact.html">Contact</a></li>
                                                    <li><a href="elements.html">Elements</a></li>
                                                    <li><a href="#">Dropdown</a>
                                                        <ul class="dropdown">
                                                            <li><a href="index.html">Home</a></li>
                                                            <li><a href="about.html">About Us</a></li>
                                                            <li><a href="blog-post.html">Blog Post</a></li>
                                                            <li><a href="receipe-post.html">Receipe Post</a></li>
                                                            <li><a href="contact.html">Contact</a></li>
                                                            <li><a href="elements.html">Elements</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Categories</a>
                                        <div class="megamenu">
                                            <ul class="single-mega cn-col-4">
                                                <li class="title">Catagory</li>
                                                <li><a href="index.html">Home</a></li>
                                                <li><a href="about.html">About Us</a></li>
                                                <li><a href="blog-post.html">Blog Post</a></li>
                                                <li><a href="receipe-post.html">Receipe Post</a></li>
                                                <li><a href="contact.html">Contact</a></li>
                                                <li><a href="elements.html">Elements</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li class="title">Catagory</li>
                                                <li><a href="index.html">Home</a></li>
                                                <li><a href="about.html">About Us</a></li>
                                                <li><a href="blog-post.html">Blog Post</a></li>
                                                <li><a href="receipe-post.html">Receipe Post</a></li>
                                                <li><a href="contact.html">Contact</a></li>
                                                <li><a href="elements.html">Elements</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li class="title">Catagory</li>
                                                <li><a href="index.html">Home</a></li>
                                                <li><a href="about.html">About Us</a></li>
                                                <li><a href="blog-post.html">Blog Post</a></li>
                                                <li><a href="receipe-post.html">Receipe Post</a></li>
                                                <li><a href="contact.html">Contact</a></li>
                                                <li><a href="elements.html">Elements</a></li>
                                            </ul>
                                            <div class="single-mega cn-col-4">
                                                <div class="receipe-slider owl-carousel">
                                                    <a href="#"><img src="img/bg-img/bg1.jpg" alt=""></a>
                                                    <a href="#"><img src="img/bg-img/bg6.jpg" alt=""></a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li><a href="Registration.aspx">Register</a></li>
                                    <li><a href="Login.aspx">Login</a></li>
                                    <li><a href="Contact.aspx">Contact</a></li>
                                </ul>

                                <!-- Newsletter Form -->
                                <div class="search-btn">
                                    <i class="fa fa-search" aria-hidden="true"></i>
                                </div>

                            </div>
                            <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->
    <form id="form1" runat="server" style="background-color: #FFF">
        <div class="auto-style7">
            
            <asp:Label ID="lblReg" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#000066" Text="Registration Form"></asp:Label>
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4" style="font-family: 'Comic Sans MS'; background-color: #DCDCDC">User Name</td>
                    <td class="auto-style2" style="font-family: 'Comic Sans MS'; background-color: #DCDCDC">
                        <asp:TextBox ID="txtUser" runat="server" CssClass="auto-style6" Height="21px" Width="309px"></asp:TextBox>
                    </td>
                </tr>
                <!--<tr>
                    <td class="auto-style4" style="font-family: 'Comic Sans MS'; background-color: #DCDCDC">Email Address</td>
                    <td class="auto-style2" style="font-family: 'Comic Sans MS'; background-color: #DCDCDC">
                        <asp:TextBox ID="txtEmail" runat="server" Height="24px" Width="305px"></asp:TextBox>
                    </td>
                </tr> -->
               <!-- <tr>
                    <td class="auto-style5" style="font-family: 'Comic Sans MS'; background-color: #DCDCDC">Contact No.</td>
                    <td class="auto-style9" style="font-family: 'Comic Sans MS'; background-color: #DCDCDC">
                        <asp:TextBox ID="txtContact" runat="server" CssClass="auto-style6" Height="21px" Width="309px"></asp:TextBox>
                    </td>
                </tr>-->
                
                <tr>
                    <td class="auto-style5" style="font-family: 'Comic Sans MS'; background-color: #DCDCDC">Password</td>
                    <td class="auto-style9" style="font-family: 'Comic Sans MS'; background-color: #DCDCDC">
                        <asp:TextBox ID="txtPw" runat="server" CssClass="auto-style6" TextMode="Password" Height="21px" Width="309px" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="font-family: 'Comic Sans MS'; background-color: #DCDCDC">Confirm Password</td>
                    <td class="auto-style9" style="font-family: 'Comic Sans MS'; background-color: #DCDCDC">
                        <asp:TextBox ID="txtConfirmPw" runat="server" CssClass="auto-style6" TextMode="Password" Height="21px" Width="309px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="btnSubmit" runat="server" BackColor="#3399FF" BorderColor="#0066FF" BorderWidth="4px" CssClass="auto-style8" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="66px" OnClick="btnSubmit_Click" Text="Submit" Width="300px" />
            <br />
            <br />
            <asp:Label ID="lblNoti" runat="server" ForeColor="#006600"></asp:Label>
            <br />
            
        </div>
    </form>
    <!-- ##### Follow Us Instagram Area Start ##### -->
    <div class="follow-us-instagram">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h5>Follow Us Instragram</h5>
                </div>
            </div>
        </div>
        <!-- Instagram Feeds -->
        <div class="insta-feeds d-flex flex-wrap">
            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/insta1.jpg" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="https://www.instagram.com/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/insta2.jpg" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="https://www.instagram.com/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/insta3.jpg" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="https://www.instagram.com/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/insta4.jpg" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="https://www.instagram.com/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/insta5.jpg" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="https://www.instagram.com/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/insta6.jpg" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="https://www.instagram.com/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>

            <!-- Single Insta Feeds -->
            <div class="single-insta-feeds">
                <img src="img/bg-img/insta7.jpg" alt="">
                <!-- Icon -->
                <div class="insta-icon">
                    <a href="https://www.instagram.com/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Follow Us Instagram Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="container h-100">
            <div class="row h-100">
                <div class="col-12 h-100 d-flex flex-wrap align-items-center justify-content-between">
                    <!-- Footer Social Info -->
                    <div class="footer-social-info text-right">
                        <a href="https://www.pinterest.com/"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                        <a href="https://www.facebook.com/"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                        <a href="https://www.twitter.com/"><i class="fa fa-twitter" aria-hidden="true"></i></a>
               
                        <a href="https://www.linkedin.com/"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                    </div>
                    <!-- Footer Logo -->
                    <div class="footer-logo">
                        <a href="Default.aspx"><img src="img/core-img/logo.png" alt=""></a>
                    </div>
                    
                    <p>
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
</p>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area Start ##### -->

    <!-- ##### All Javascript Files ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
</body>
</html>
