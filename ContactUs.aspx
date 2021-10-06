<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false"
    CodeFile="ContactUs.aspx.vb" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
    <link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAzzIcNwyvoXPIENXaI-jO08bk3k8XCLWU&sensor=false"></script>
    <style>
        #divMap
        {
            height: 300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BannerPlaceHolder" runat="Server">
    <div id="inner-banner">
        <h1>Contact Us</h1>
        <img src="images/about-banner.jpg" alt="" />
        <div class="clear">
        </div>
    </div>
    <div class="clear">
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="body-wrap">
        <div id="content-wrap">
            <div id="box-content">
                <div class="box" style="width: 250px;">
                    <h2>Reach Us</h2>
                    <h4>Address :</h4>
                    <p>
                        Block No. 815/2, Plot No. 2/2 & 2/2/ A,
                        <br />
                        Opposite Kan Alloys Near Gajanand Food,
                        <br />
                        Kothari Cross Road, SANTEJ,
                        <br />
                        Kalol - 382721, Gujarat, India<br />

                        <%--<span>First Floor-5 Harivilla Apartment,<br />
                            Opp. Kargil Petrol Pump,<br />
                            S.G Highway<br />
                            Chankyapuri Road, Ghatlodia<br />
                            Ahmedabad - 380061</span></p>--%>
                        <p>
                            <span style="font-weight: bold; border-bottom: 1px solid;">Email:</span>
                            <br />
                            <a href="mailto:rainremedies@gmail.com" style="padding-left: 20px; color: blue;">rainremedies@gmail.com</a>
                            <br />
                            <a href="mailto:info@rainremedies.com" style="padding-left: 20px; color: blue;">info@rainremedies.com</a>
                        </p>
                        <p>
                            <span>Mr. Marshal Patel</span>
                            <br />
                            M. +91 9879978174
                        </p>
                        <p>
                            <span>Mr. Hirabhai Patel</span>
                            <br />
                            M. +91 9825941222
                        </p>
                        <div class="clear" style="height: 20px;">
                        </div>


                        <%--</div>
                <div class="box">--%>
                        <h2>Bank Details</h2>
                        <p style="text-align: left">
                            A/C Name - <span>Rain Remedies</span><br />
                            Bank - <span>Bank Of Baroda</span><br />
                            Branch - <span>Science city Road, Ahmedabad</span><br />
                            A/C No - <span>36590200000076</span><br />
                            A/C Type - <span>Current</span><br />
                            RTGS/NEFT Ifsc Code : <span>BARBOSCIAHM </span>
                            <br />
                        </p>
                        <div class="clear"></div>
                </div>
                <div class="box" style="width: 650px">
                    <h2>Find Us On Map</h2>
                    <div id="divMap"></div>
                    <input id="gmap_address" type="hidden" name="gmap_address" value="<strong>Rain Remedies</strong><br>Block No. 815/2, Plot No. 2/2 &amp; 2/2/ A, <br>Opposite Kan Alloys Near Gajanand Food, <br>Kothari Cross Road, SANTEJ, Kalol - 382721, Gujarat, India" />
                    <input id="latitude" type="hidden" name="latitude" value="23.1013954" />
                    <input id="longitude" type="hidden" name="longitude" value="72.4742398" />
                                        
                    <%--
                        <===== OLD CODE for Google Map with old address =====>
                    <iframe width="650" height="250" frameborder="0" scrolling="no" marginheight="0"
                        marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Ghatlodia+Ahmedabad&amp;sll=23.076813,72.536071&amp;sspn=0.043666,0.084543&amp;ie=UTF8&amp;hq=&amp;hnear=Ghatlodia,+Ahmedabad,+Gujarat&amp;t=m&amp;z=14&amp;ll=23.076813,72.536071&amp;output=embed">
                    </iframe>
                    <br />
                    <small>
                        <a href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Ghatlodia+Ahmedabad&amp;sll=23.076813,72.536071&amp;sspn=0.043666,0.084543&amp;ie=UTF8&amp;hq=&amp;hnear=Ghatlodia,+Ahmedabad,+Gujarat&amp;t=m&amp;z=14&amp;ll=23.076813,72.536071"
                        style="color: #0000FF; text-align: left">View Larger Map</a>
                    </small>--%>
                    <div class="clear" style="height: 20px;">
                    </div>
                    <h2>Contact Us</h2>
                    <div>
                        <form id="form1" runat="server">
                            <div class="checkout_block1" style="width: 90%;">
                                <table border="0" cellpadding="3" cellspacing="3">
                                    <tr>
                                        <td style="width: 100px;">
                                            <label for="text1">
                                                Name :
                                            </label>
                                        </td>
                                        <td id="Td1">
                                            <span id="sprytextfield1">
                                                <input type="text" name="text1" id="txtName" runat="server" />
                                                <span class="textfieldRequiredMsg">A value is required.</span>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="text2">
                                                E-mail</label>
                                        </td>
                                        <td id="Td2">
                                            <span id="sprytextfield2">
                                                <input type="text" name="text2" id="txtEmail" runat="server" />
                                                <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid
                                            format.</span>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="text3">
                                                Mobile</label>
                                        </td>
                                        <td id="Td3">
                                            <span id="sprytextfield3">
                                                <input type="text" name="text3" id="txtPhone" runat="server" />
                                                <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid
                                            format.</span>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="text4">
                                                Comments :</label>
                                        </td>
                                        <td id="Td4">
                                            <span id="sprytextfield4">
                                                <textarea name="text4" id="txtComments" runat="server" rows="3" />
                                                <span class="textfieldRequiredMsg">A value is required.</span>
                                            </span>
                                        </td>
                                    </tr>
                                    <%--<tr>
                                    <td>
                                        <label for="text5">
                                            State</label>
                                    </td>
                                    <td id="Td5">
                                    <span id="sprytextfield5">
                                        <input type="text" name="text5" id="text5" />
                                        <span class="textfieldRequiredMsg">A value is required.</span>
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label for="text6">
                                            Zipcode</label>
                                    </td>
                                    <td id="Td6">
                                    <span id="sprytextfield6">
                                        <input type="text" name="text6" id="text6" />
                                        <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid
                                            format.</span><span class="textfieldMinCharsMsg">Minimum number of characters not met.</span><span
                                                class="textfieldMaxCharsMsg">Exceeded maximum number of characters.</span>
                                                </span>
                                    </td>
                                </tr>--%>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" Style="width: 120px; height: 30px; background: #0d5480; color: #fff; border: none; cursor: pointer" />
                                            <input name="submit" type="submit" value="Submit" style="width: 120px; height: 30px; background: #0d5480; color: #fff; border: none; cursor: pointer; display: none;" />
                                        </td>
                                    </tr>
                                </table>

                            </div>

                        </form>
                    </div>
                    <div class="clear">
                    </div>
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
        <asp:Label ID="lblerrordetail" runat="server" Style="display: none; visibility: hidden;"></asp:Label>
    </div>
    <script type="text/javascript">
        var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
        var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2", "email");
        var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3", "integer");
        var sprytextfield4 = new Spry.Widget.ValidationTextField("sprytextfield4");
        var sprytextfield5 = new Spry.Widget.ValidationTextField("sprytextfield5");
        var sprytextfield6 = new Spry.Widget.ValidationTextField("sprytextfield6", "integer", { minChars: 6, maxChars: 6 });

        /* ========== Google Map ============== */
        /*
        Google API Key - 
        AIzaSyAzzIcNwyvoXPIENXaI-jO08bk3k8XCLWU
        User - sac4temp@gmail.com
        
        */

        var map;
        var geocoder;
        function InitializeMap() {
            var lat = $("#latitude").val();
            var long = $("#longitude").val();
            var myLatLng = new google.maps.LatLng(lat, long);
            //var latlng = new google.maps.LatLng(-34.397, 150.644);
            var myOptions =
            {
                zoom: 13,
                center: myLatLng,
                mapTypeId: google.maps.MapTypeId.ROADMAP, //google.maps.MapTypeId.HYBRID
                //disableDefaultUI: true
            };
            map = new google.maps.Map(document.getElementById("divMap"), myOptions);

            var marker = new google.maps.Marker({
                position: myLatLng,
                map: map
            });
            if (($("#gmap_address").val() != "") && ($("#gmap_address").val() != " ")) {
                var infowindow = new google.maps.InfoWindow();
                infowindow.setContent($("#gmap_address").val());
                infowindow.open(map, marker);
            }
            google_map_center();
            //$(".map_blayer,.map_container,#divMap").fadeIn();
            //$("html").css("overflow", "hidden");
            var currCenter = map.getCenter();
            google.maps.event.trigger(map, 'resize');
            map.setCenter(currCenter);
        }

        window.onload = InitializeMap;

        //function include_GoogleMapjs() {
        //    if ($('#divMap').html() == '') {
        //        var script = document.createElement('script');
        //        script.type = 'text/javascript';
        //        //script.src = 'https://maps.googleapis.com/maps/api/js?callback=initialize';
        //        script.src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyAzzIcNwyvoXPIENXaI-jO08bk3k8XCLWU&callback=initialize';
        //        document.getElementsByTagName('head')[0].appendChild(script);
        //    }
        //    else {
        //        initialize();
        //    }
        //}
        //function initialize() {
        //    if ($("#divMap").length > 0) {
        //        var mapCanvas = '';
        //        var lat = $("#latitude").val();
        //        var long = $("#longitude").val();
        //        var myLatLng = new google.maps.LatLng(lat, long);
        //        mapCanvas = document.getElementById('divMap');
        //        var mapOptions =
        //        {
        //            center: myLatLng,
        //            zoom: 15,
        //            mapTypeId: google.maps.MapTypeId.ROADMAP
        //        }
        //        map = new google.maps.Map(mapCanvas, mapOptions);
        //        var marker = new google.maps.Marker({
        //            position: myLatLng,
        //            map: map
        //        });
        //        if (($("#gmap_address").val() != "") && ($("#gmap_address").val() != " ")) {
        //            var infowindow = new google.maps.InfoWindow();
        //            infowindow.setContent($("#gmap_address").val());
        //            infowindow.open(map, marker);
        //        }
        //        google_map_center();
        //        $(".map_blayer,.map_container,#divMap").fadeIn();
        //        $("html").css("overflow", "hidden");
        //        var currCenter = map.getCenter();
        //        google.maps.event.trigger(map, 'resize');
        //        map.setCenter(currCenter);
        //    }
        //}

        function google_map_center() {
            var top_h = ($(window).height() - $('.map_container').height()) / 2;
            var left_l = ($(window).width() - $('.map_container').width()) / 2;
            $('.map_container').css({ "left": left_l + "px", "top": top_h + "px" });
        }
    </script>

</asp:Content>
