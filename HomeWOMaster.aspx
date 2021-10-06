<%@ Page Language="VB" AutoEventWireup="false" CodeFile="HomeWOMaster.aspx.vb" Inherits="Home2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Rain Remedies</title>
    <link rel="icon" type="image/png" href="images/favicon.png">
    <link rel="stylesheet" type="text/css" media="all" href="css/style.css" />
    <link rel="stylesheet" type="text/css" media="all" href="css/style2.css" />
    <script type="text/javascript" src="js/jquery-1.7.1.js"></script>
    <script type="text/javascript" src="js/jquery.ui.core.js"></script>
    <script type="text/javascript" src="js/jquery.ui.widget.js"></script>
    <script type="text/javascript" src="js/jquery.ui.rcarousel.js"></script>
    <script type="text/javascript">
        jQuery(function ($) {
            function generatePages() {
                var _total, i, _link;

                _total = $("#carousel").rcarousel("getTotalPages");

                for (i = 0; i < _total; i++) {
                    _link = $("<a href='#'></a>");

                    $(_link)
							.bind("click", { page: i },
								function (event) {
								    $("#carousel").rcarousel("goToPage", event.data.page);
								    event.preventDefault();
								}
							)
							.addClass("bullet off")
							.appendTo("#pages");
                }

                // mark first page as active
                $("a:eq(0)", "#pages")
						.removeClass("off")
						.addClass("on")
						.css("background-image", "url(images/page-on.png)");

            }

            function pageLoaded(event, data) {
                $("a.on", "#pages")
						.removeClass("on")
						.css("background-image", "url(images/page-off.png)");

                $("a", "#pages")
						.eq(data.page)
						.addClass("on")
						.css("background-image", "url(images/page-on.png)");
            }

            $("#carousel").rcarousel(
					{
					    visible: 1,
					    step: 1,
					    speed: 500,
					    auto: {
					        enabled: true
					    },
					    width: 444,
					    height: 136,
					    start: generatePages,
					    pageLoaded: pageLoaded
					}
				);

            $("#ui-carousel-next")
					.add("#ui-carousel-prev")
					.add(".bullet")
					.hover(
						function () {
						    $(this).css("opacity", 0.7);
						},
						function () {
						    $(this).css("opacity", 1.0);
						}
					);
        });
    </script>
    <script type="text/javascript" src="js/jquery.tinyscrollbar.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#scrollbar').tinyscrollbar();
        });
    </script>
    <link rel="stylesheet" href="colorbox/colorbox.css" />
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>-->
    <script type="text/javascript" src="colorbox/jquery.colorbox.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            //Examples of how to assign the ColorBox event to elements
            $(".group1").colorbox({ rel: 'group1' });
            $(".group2").colorbox({ rel: 'group2', transition: "fade" });
            $(".group3").colorbox({ rel: 'group3', transition: "none", width: "75%", height: "75%" });
            $(".group4").colorbox({ rel: 'group4', slideshow: true });
            $(".ajax").colorbox();
            $(".youtube").colorbox({ iframe: true, innerWidth: 909, innerHeight: 344 });
            $(".iframe").colorbox({ iframe: true, width: "80%", height: "80%" });
            $(".inline").colorbox({ inline: true, width: "65%" });
            $(".callbacks").colorbox({
                onOpen: function () { alert('onOpen: colorbox is about to open'); },
                onLoad: function () { alert('onLoad: colorbox has started to load the targeted content'); },
                onComplete: function () { alert('onComplete: colorbox has displayed the loaded content'); },
                onCleanup: function () { alert('onCleanup: colorbox has begun the close process'); },
                onClosed: function () { alert('onClosed: colorbox has completely closed'); }
            });

            //Example of preserving a JavaScript event for inline calls.
            $("#click").click(function () {
                $('#click').css({ "background-color": "#f00", "color": "#fff", "cursor": "inherit" }).text("Open this window again and this message will still be here.");
                return false;
            });
        });
    </script>
    <link href='http://fonts.googleapis.com/css?family=Sofia' rel='stylesheet' type='text/css'>
</head>
<body>
    <div class="container">
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
                    <li class='active'><a href="Home.aspx"><span>Home</span></a></li>
                    <li><a href='about-us.html'><span>About Us</span></a> </li>
                    <li><a href='products.html'><span>Products</span></a></li>
                    <li><a href='photo_gallery.html'><span>Photo Gallery</span></a></li>
                    <li><a href='#'><span>Blog</span></a></li>
                    <li class='last'><a href='contact-us.html'><span>Contact Us</span></a></li>
                    <li class='last' style="float: right; background: #e17310;"><a href='#'><span>ORDER
                        ONLINE</span></a></li>
                </ul>
            </div>
            
            <div style="clear: both">
            </div>
            <div id="banner">
                <div class="banner-right">
                    <div class="text-banner">
                        <div id="container">
                            <div id="carousel">
                                <div id="slide01" class="slide">
                                    <div class="text">
                                        <h1>
                                            Rain For Quality
                                            <br />
                                            &nbsp; &nbsp; &nbsp; &nbsp; &amp; Ailing Huminity...</h1>
                                    </div>
                                </div>
                                <div id="slide01" class="slide">
                                    <div class="text">
                                        <h1>
                                            Rain For Quality
                                            <br />
                                            &nbsp; &nbsp; &nbsp; &nbsp; &amp; Ailing Huminity...</h1>
                                    </div>
                                </div>
                                <div id="slide01" class="slide">
                                    <div class="text">
                                        <h1>
                                            Rain For Quality
                                            <br />
                                            &nbsp; &nbsp; &nbsp; &nbsp; &amp; Ailing Huminity...</h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clear">
                    </div>
                </div>
                <div class="bannerimg">
                    <img src="images/lady.png" alt="" width="400" /></div>
                <div class="clear">
                </div>
            </div>
            <div class="clear">
            </div>
        </div>
        <div id="body-wrap">
            <div id="content-wrap">
                <div id="box-content">
                    <div class="box" style="width: 680px">
                        <h2>
                            Welcome To Rain World</h2>
                        <p style="text-align: justify; margin-bottom: 10px">
                            Rain Remedies is a pharma house which offers optimum quality product at most competitive
                            rates with excellent backup team to ensure on Schedule delivery. Since 8 years of
                            commitment and sound knowledge of good manufacturing and marketing ,now we are started
                            our new firm.
                        </p>
                        <p style="text-align: justify">
                            As we believe in quality products we offers wide range of product including (Antibiotic,
                            Gynec range, Cough, cold, Anti allergic, Analgesic, Anti inflammatory, Gastro range,
                            Tonic preparation, Injection etc.. ) As per market demand and under govt. Rules
                            and regulation we offers Good Alu Alu , blister, strip packing material. Mainly
                            we are making our products in W.H.O unit and G.M.P approved company. We are committed
                            to delivering high quality product and service. We are focusing in small small thing
                            which makes difference from the others.</p>
                        <div class="clear">
                        </div>
                    </div>
                    <div class="box">
                        <h2>
                            Inquire Now</h2>
                        <form action="#" method="post" name="" class="learnmore">
                        <input type="text" name="" placeholder="Full Name*" class="name" />
                        <input type="text" name="" placeholder="Email*" class="email" />
                        <input type="text" name="" placeholder="Telephone*" class="phn" />
                        <textarea placeholder="Comments"></textarea>
                        <input type="submit" value="Submit" />
                        </form>
                        <div class="clear">
                        </div>
                    </div>
                    <div class="clear">
                    </div>
                </div>
                <div id="associate">
                    <h2>
                        Featured Products</h2>
                    <ul>
                        <li><a class="group1 cboxElement" href="images/product/one.png">
                            <img src="images/product/one.png" alt="" /></a></li>
                        <li><a class="group1 cboxElement" href="images/product/two.png">
                            <img src="images/product/two.png" alt="" /></a></li>
                        <li><a class="group1 cboxElement" href="images/product/three.png">
                            <img src="images/product/three.png" alt="" /></a></li>
                        <li><a class="group1 cboxElement" href="images/product/four.png">
                            <img src="images/product/four.png" alt="" /></a></li>
                        <li><a class="group1 cboxElement" href="images/product/five.png">
                            <img src="images/product/five.png" alt="" /></a></li>
                        <li><a class="group1 cboxElement" href="images/product/one.png">
                            <img src="images/product/one.png" alt="" /></a></li>
                        <li><a class="group1 cboxElement" href="images/product/two.png">
                            <img src="images/product/two.png" alt="" /></a></li>
                    </ul>
                    <div class="clear">
                    </div>
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
</body>
</html>
