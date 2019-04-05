<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>


<head runat="server">
    
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Master Chef | Login</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">


   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <!-- Font Awesome Icons -->
    <link href="~/Content/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <!-- Google Fonts -->
    <link href="~/Content/https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet">
    <link href='~/Content/https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
    <!-- Plugin CSS -->
    <link href="~/Content/vendor/magnific-popup/magnific-popup.css" rel="stylesheet">
    <!-- Theme CSS - Includes Bootstrap -->
    <link href="~/Content/css/creative.min.css" rel="stylesheet">
    <link href="~/Content/css/Login.css" rel="=stylesheet" />
    <link href="~/Content/img/bgLog.jpg" rel="=stylesheet" />

    
    <style>

        .formclass1
        {
            padding:70px;
            margin:200px auto;
            background:#d5caca;
            width:550px;

           
        }

        h1
        {
            text-align:center;
            color:#ff0000;
        }
        .input1
        {
            padding:4px;
            width:100%;
        }

    </style>
</head>
<body>
    <!-- Preloader -->
   <!-- <div id="preloader">
        <i class="circle-preloader"></i>
        <img src="img/core-img/salad.png" alt="">
    </div> -->

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

    <form id="form1" runat="server">
        <div class="formclass1">
            <h1>Login Page</h1>
            <asp:TextBox ID="txtUserName" CssClass="input1" placeholder="Enter User Name" runat="server" ></asp:TextBox><br /><br />
            <asp:TextBox ID="txtPassword" CssClass="input1" placeholder="Enter Password" TextMode="Password" runat="server"></asp:TextBox><br /><br />
            <asp:Button ID="btnLogin" CssClass="input1" Width="100%" runat="server" Text="Login" OnClick="btnLogin_Click" />
            <asp:Label ID="lblLog" runat="server" Text=" " ForeColor="Red"></asp:Label>
        </div>
    </form>


   

   

   
    <!-- Bootstrap core JavaScript -->
    <script src="~/Content/vendor/jquery/jquery.min.js"></script>
    <script src="~/Content/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Plugin JavaScript -->
    <script src="~/Content/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="~/Content/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- Custom scripts for this template -->
    <script src="~/Content/js/creative.min.js"></script>
</body>
</html>