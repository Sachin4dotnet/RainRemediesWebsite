<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false"
    CodeFile="Home.aspx.vb" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="js/jquery.circulate.js" type="text/javascript"></script>

    <style type="text/css">
        #page-wrap { z-index: 20; width: 550px; right:150px; margin: 20px auto; background:transparent ; padding: 20px; position: relative; }
        #unicorn { z-index: 60; position: absolute; top: 10px; left: 14%; width: 440px; height:136px; display: block; }
    </style>
    <script type="text/javascript">
    $(window).load(function () {
        $("#unicorn").css("left", $("#unicorn").position().left).circulate({
            sizeAdjustment: 100,
            speed: 1500,
            width: -200,
            height: 100,
            loop: true,
            zIndexValues: [1, 50, 50, 1]
        });
    });
    </script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BannerPlaceHolder" runat="Server">
    <div id="banner">
        <div class="banner-right">
            <div class="text-banner">
                <div id="container">
                    <div id="unicorn">
                        <div id="slide01" class="slide">
                            <div class="text" >
                                <h1> Rain For Quality <br />
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                    <form class="learnmore" id="form1" runat="server">
                    <input id="txtName" runat="server" type="text" name="" placeholder="Full Name*" class="name" />
                    <input id="txtEmail" runat="server" type="text" name="" placeholder="Email*" class="email" />
                    <input id="txtPhone" runat="server" type="text" name="" placeholder="Telephone*"
                        class="phn" />
                    <textarea id="txtComments" runat="server" placeholder="Comments"></textarea>
                    <%--<input type="submit" value="Submit" />--%>
                    <asp:Button ID="Button1" runat="server" Text="Submit" />
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
                <%--<ul>
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
                </ul>--%>
                <div class="slider2">
                    <div id="popular_container">
                        <div id="left_scroll_p">
                            <img src="images/prev.jpg"></div>
                        <div id="popular_inner">
                            <ul style="left: 0px;" id="popular_ul">
                                <li><a class="group1 cboxElement" href="images/product/16.jpg">
                                    <div class="slider-img-div">
                                        <img src="images/product/16.jpg" />
                                        <div class="bottom-text">
                                            Rybet-DSR, Domset 30</div>
                                    </div>
                                </a></li>
                                <li><a class="group1 cboxElement" href="images/product/4.jpg">
                                    <div class="slider-img-div">
                                        <img src="images/product/4.jpg" />
                                        <div class="bottom-text">
                                            Being 12</div>
                                    </div>
                                </a></li>
                                <li><a class="group1 cboxElement" href="images/product/6.jpg">
                                    <div class="slider-img-div">
                                        <img src="images/product/6.jpg" />
                                        <div class="bottom-text">
                                            Minlive</div>
                                    </div>
                                </a></li>
                                <li><a class="group1 cboxElement" href="images/product/11.jpg">
                                    <div class="slider-img-div">
                                        <img src="images/product/11.jpg" />
                                        <div class="bottom-text">
                                            Rinsid</div>
                                    </div>
                                </a></li>

								

                                <li><a class="group1 cboxElement" href="images/product/24.jpg">
                                    <div class="slider-img-div">
                                        <img src="images/product/24.jpg" />
                                        <div class="bottom-text">
                                            Lezin - M Tablet</div>
                                    </div>
                                </a></li>
                                <li><a class="group1 cboxElement" href="images/product/25.jpg">
                                    <div class="slider-img-div">
                                        <img src="images/product/25.jpg" />
                                        <div class="bottom-text">
                                            Reezon Injection</div>
                                    </div>
                                </a></li>
                                <li><a class="group1 cboxElement" href="images/product/26.jpg">
                                    <div class="slider-img-div">
                                        <img src="images/product/26.jpg" />
                                        <div class="bottom-text">
                                            WellZym Syrup</div>
                                    </div>
                                </a></li>
                                <li><a class="group1 cboxElement" href="images/product/1.jpg">
                                    <div class="slider-img-div">
                                        <img src="images/product/1.jpg" />
                                        <div class="bottom-text">
                                            Wellzym</div>
                                    </div>
                                </a></li>
                                <li><a class="group1 cboxElement" href="images/product/2.jpg">
                                    <div class="slider-img-div">
                                        <img src="images/product/2.jpg" />
                                        <div class="bottom-text">
                                            All Zed</div>
                                    </div>
                                </a></li>
                                <li><a class="group1 cboxElement" href="images/product/5.jpg">
                                    <div class="slider-img-div">
                                        <img src="images/product/5.jpg" />
                                        <div class="bottom-text">
                                            Etiliva</div>
                                    </div>
                                </a></li>
                                <li><a class="group1 cboxElement" href="images/product/7.jpg">
                                    <div class="slider-img-div">
                                        <img src="images/product/7.jpg" />
                                        <div class="bottom-text">
                                            Velcof-A</div>
                                    </div>
                                </a></li>
                                <li><a class="group1 cboxElement" href="images/product/8.jpg">
                                    <div class="slider-img-div">
                                        <img src="images/product/8.jpg" />
                                        <div class="bottom-text">
                                            P-Natorain</div>
                                    </div>
                                </a></li>
                                <li><a class="group1 cboxElement" href="images/product/9.jpg">
                                    <div class="slider-img-div">
                                        <img src="images/product/9.jpg" />
                                        <div class="bottom-text">
                                            Everoxy, Ofect-OZ , 200</div>
                                    </div>
                                </a></li>
                                <li><a class="group1 cboxElement" href="images/product/10.jpg">
                                    <div class="slider-img-div">
                                        <img src="images/product/10.jpg" />
                                        <div class="bottom-text">
                                            Allzed Plus</div>
                                    </div>
                                </a></li>
                                <li><a class="group1 cboxElement" href="images/product/12.jpg">
                                    <div class="slider-img-div">
                                        <img src="images/product/12.jpg" />
                                        <div class="bottom-text">
                                            UCEF-500, Kid, 250</div>
                                    </div>
                                </a></li>
                                <li><a class="group1 cboxElement" href="images/product/13.jpg">
                                    <div class="slider-img-div">
                                        <img src="images/product/13.jpg" />
                                        <div class="bottom-text">
                                            Rindfer - Z, Dova - F</div>
                                    </div>
                                </a></li>
                                <li><a class="group1 cboxElement" href="images/product/14.jpg">
                                    <div class="slider-img-div">
                                        <img src="images/product/14.jpg" />
                                        <div class="bottom-text">
                                            DDVACEF-200-DT</div>
                                    </div>
                                </a></li>
                                <li><a class="group1 cboxElement" href="images/product/15.jpg">
                                    <div class="slider-img-div">
                                        <img src="images/product/15.jpg" />
                                        <div class="bottom-text">
                                            Nopin, Rinodac</div>
                                    </div>
                                </a></li>
                                <li><a class="group1 cboxElement" href="images/product/17.jpg">
                                    <div class="slider-img-div">
                                        <img src="images/product/17.jpg" />
                                        <div class="bottom-text">
                                            Nimell-100. Docolset, Nimwell-P</div>
                                    </div>
                                </a></li>
                                <li><a class="group1 cboxElement" href="images/product/18.jpg">
                                    <div class="slider-img-div">
                                        <img src="images/product/18.jpg" />
                                        <div class="bottom-text">
                                            Dovacef-O</div>
                                    </div>
                                </a></li>
                                <li><a class="group1 cboxElement" href="images/product/20.jpg">
                                    <div class="slider-img-div">
                                        <img src="images/product/20.jpg" />
                                        <div class="bottom-text">
                                            Rinsid</div>
                                    </div>
                                </a></li>
                                <li><a class="group1 cboxElement" href="images/product/21.jpg">
                                    <div class="slider-img-div">
                                        <img src="images/product/21.jpg" />
                                        <div class="bottom-text">
                                            Allzed</div>
                                    </div>
                                </a></li>
                                <li><a class="group1 cboxElement" href="images/product/23.jpg">
                                    <div class="slider-img-div">
                                        <img src="images/product/23.jpg" />
                                        <div class="bottom-text">
                                            Volcin-500</div>
                                    </div>
                                </a></li>
                                <li><a class="group1 cboxElement" href="images/product/22.jpg">
                                    <div class="slider-img-div">
                                        <img src="images/product/22.jpg" />
                                        <div class="bottom-text">
                                            Rinsid</div>
                                    </div>
                                </a></li>
                                <li><a class="group1 cboxElement" href="images/product/19.jpg">
                                    <div class="slider-img-div">
                                        <img src="images/product/19.jpg" />
                                        <div class="bottom-text">
                                            Rinofer, Being12</div>
                                    </div>
                                </a></li>
                            </ul>
                        </div>
                        <div id="right_scroll_p">
                            <img src="images/next.jpg"></div>
                    </div>
                </div>
                <div class="clear">
                </div>
            </div>
            <div class="clear">
            </div>
        </div>
        <div class="clear">
        </div>
        <asp:Label ID="lblerrordetail" runat="server" style="display:none; visibility:hidden;"></asp:Label>
    </div>
</asp:Content>
