<%@ Page Language="VB" AutoEventWireup="false" CodeFile="PhotoGallaryWO.aspx.vb"
    Inherits="PhotoGallaryWO" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Photo Gallery</title>
    <link rel="icon" type="image/png" href="images/favicon.png">
    <link rel="stylesheet" type="text/css" media="all" href="css/style.css" />
    <link rel="stylesheet" type="text/css" media="all" href="css/style2.css" />
    <link rel="stylesheet" type="text/css" href="css/demo.css" />
    <link rel="stylesheet" type="text/css" href="css/elastislide.css" />
    <link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow&v1' rel='stylesheet'
        type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css' />
    <noscript>
        <style>
            .es-carousel ul
            {
                display: block;
            }
        </style>
    </noscript>
    <script id="img-wrapper-tmpl" type="text/x-jquery-tmpl">	
			<div class="rg-image-wrapper">
				{{if itemsCount > 1}}
					<div class="rg-image-nav">
						<a href="#" class="rg-image-nav-prev">Previous Image</a>
						<a href="#" class="rg-image-nav-next">Next Image</a>
					</div>
				{{/if}}
				<div class="rg-image"></div>
				<div class="rg-loading"></div>
				<div class="rg-caption-wrapper">
					<div class="rg-caption" style="display:none;">
						<p></p>
					</div>
				</div>
			</div>
    </script>
</head>
<body>
    <div class="container" style="height: 260px">
        <div class="wrapper">
            <div id="header">
                <div class="logo">
                    <a href="#">
                        <img src="images/logo.png" height="66" alt="" /></a></div>
                <div id="header-rgt">
                    <h2>
                        +91 98799 78174<br />
                        <span>rainremedies@gmail.com</span>
                    </h2>
                    <div class="clear">
                    </div>
                </div>
            </div>
            <div id='cssmenu'>
                <ul>
                    <li class='active'><a href='index.html'><span>Home</span></a></li>
                    <li><a href='about-us.html'><span>About Us</span></a> </li>
                    <li><a href='products.html'><span>Products</span></a></li>
                    <li><a href='photo_gallery.html'><span>Photo Gallery</span></a></li>
                    <li><a href='#'><span>Blog</span></a></li>
                    <li class='last'><a href='contact-us.html'><span>Contact Us</span></a></li>
                    <li class='last' style="float: right; background: #e17310;"><a href='#'><span>ORDER
                        ONLINE</span></a></li>
                </ul>
            </div>
            <div id="inner-banner">
                <h1>
                    Photo Gallery</h1>
                <img src="images/about-banner.jpg" alt="" />
                <div class="clear">
                </div>
            </div>
            <div class="clear">
            </div>
        </div>
        <div id="body-wrap">
            <div id="content-wrap">
                <div id="box-content">
                    <div id="rg-gallery" class="rg-gallery">
                        <div class="rg-thumbs">
                            <!-- Elastislide Carousel Thumbnail Viewer -->
                            <div class="es-carousel-wrapper">
                                <div class="es-nav">
                                    <span class="es-nav-prev">Previous</span> <span class="es-nav-next">Next</span>
                                </div>
                                <div class="es-carousel">
                                    <ul>
                                        <asp:Literal ID="ltrPhotoGallary" runat="server"></asp:Literal>
                                        <li><a href="#">
                                            <img src="images/1.jpg" data-large="images/1.jpg" alt="image01" data-description="." /></a></li>
                                        <li><a href="#">
                                            <img src="images/2.jpg" data-large="images/2.jpg" alt="image02" data-description="." /></a></li>
                                        <li><a href="#">
                                            <img src="images/3.jpg" data-large="images/3.jpg" alt="image03" data-description="." /></a></li>
                                        <li><a href="#">
                                            <img src="images/4.jpg" data-large="images/4.jpg" alt="image04" data-description="." /></a></li>
                                        <li><a href="#">
                                            <img src="images/5.jpg" data-large="images/5.jpg" alt="image05" data-description="." /></a></li>
                                        <li><a href="#">
                                            <img src="images/6.jpg" data-large="images/6.jpg" alt="image06" data-description="." /></a></li>
                                        <li><a href="#">
                                            <img src="images/7.jpg" data-large="images/7.jpg" alt="image07" data-description="." /></a></li>
                                        <li><a href="#">
                                            <img src="images/8.jpg" data-large="images/8.jpg" alt="image08" data-description="." /></a></li>
                                        <li><a href="#">
                                            <img src="images/9.jpg" data-large="images/9.jpg" alt="image09" data-description="." /></a></li>
                                        <li><a href="#">
                                            <img src="images/10.jpg" data-large="images/10.jpg" alt="image10" data-description="." /></a></li>
                                        <li><a href="#">
                                            <img src="images/11.jpg" data-large="images/11.jpg" alt="image11" data-description="." /></a></li>
                                        <li><a href="#">
                                            <img src="images/12.jpg" data-large="images/12.jpg" alt="image12" data-description="." /></a></li>
                                        <li><a href="#">
                                            <img src="images/13.jpg" data-large="images/13.jpg" alt="image13" data-description="." /></a></li>
                                        <li><a href="#">
                                            <img src="images/14.jpg" data-large="images/14.jpg" alt="image14" data-description="." /></a></li>
                                        <li><a href="#">
                                            <img src="images/15.jpg" data-large="images/15.jpg" alt="image15" data-description="." /></a></li>
                                        <li><a href="#">
                                            <img src="images/16.jpg" data-large="images/16.jpg" alt="image16" data-description="." /></a></li>
                                        <li><a href="#">
                                            <img src="images/17.jpg" data-large="images/17.jpg" alt="image17" data-description="." /></a></li>
                                        <li><a href="#">
                                            <img src="images/18.jpg" data-large="images/18.jpg" alt="image18" data-description="." /></a></li>
                                        <li><a href="#">
                                            <img src="images/19.jpg" data-large="images/19.jpg" alt="image19" data-description="." /></a></li>
                                        <li><a href="#">
                                            <img src="images/20.jpg" data-large="images/20.jpg" alt="image20" data-description="." /></a></li>
                                        <li><a href="#">
                                            <img src="images/21.jpg" data-large="images/21.jpg" alt="image21" data-description="." /></a></li>
                                        <li><a href="#">
                                            <img src="images/22.jpg" data-large="images/22.jpg" alt="image22" data-description="." /></a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Elastislide Carousel Thumbnail Viewer -->
                        </div>
                        <!-- rg-thumbs -->
                    </div>
                    <div class="clear">
                    </div>
                </div>
                <div class="clear" style="height: 30px">
                </div>
                <div class="clear">
                </div>
            </div>
            <div class="clear">
            </div>
        </div>
        <div id="footer">
            <div id="footer-wrap">
                <div class="flt_lft">
                    <a href="#">Disclaimer</a> | <a href="#">Privacy Policy</a> | <a href="#">Contact Us</a>
                </div>
                <div class="flt_rht">
                    Copyright @ rainremedies 2013</div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.tmpl.min.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="js/jquery.elastislide.js"></script>
    <script type="text/javascript" src="js/gallery.js"></script>
</body>
</html>
