<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false"
    CodeFile="Products.aspx.vb" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--<link href="js/jQuery-SelectBox/jquery.selectBox.css" rel="stylesheet" type="text/css" />--%>
    <%--<script type="text/javascript" src="http://code.jquery.com/jquery-1.5.2.min.js"></script>--%>
    <script src="js/jquery-1.5.2.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/jQuery-SelectBox/jquery.selectBox.min.js"></script>
    <script type="text/javascript" src="js/simpleContentSorting.min.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            $("#selectbox").simpleContentSorting({ //options
                'sortingList': 'ul#results',
                'effect': 'fadeIn'
            });
        });

        function pdfdown() {
            var select = document.getElementById("selectbox");
            var selVal = select.value;
            var pdfurl = "pdfs/Rain-Products-All.pdf";
            //alert(selVal);
            if (selVal == "all")
                pdfurl = "pdfs/Rain-Products-All.pdf";
            else if (selVal == "ANTIBIOTIC RANGE")
                pdfurl = "pdfs/Rain-Products-ANTIBIOTIC.pdf";
            else if (selVal == "GYNAC RANGE")
                pdfurl = "pdfs/Rain-Products-GYNAC.pdf";
            else if (selVal == "PAEDIATRICS RANGE")
                pdfurl = "pdfs/Rain-Products-PAEDIATRICS.pdf";
            else if (selVal == "ANALGESIC & ANTI INFLAMMATORY RANGE")
                pdfurl = "pdfs/Rain-Products-ANALGESIC.pdf";
            else if (selVal == "G.T TRACK DISORDER RANGE")
                pdfurl = "pdfs/Rain-Products-G.T.TRACK.pdf";
            else if (selVal == "COUGH COLD RANGE")
                pdfurl = "pdfs/Rain-Products-COUGH.pdf";
            else if (selVal == "INJECTION RANGE")
                pdfurl = "pdfs/Rain-Products-INJECTION.pdf";
            else if (selVal == "NUTRITIONAL SUPPLEMENTS/ TONIC PREPRATION")
                pdfurl = "pdfs/Rain-Products-NUTRITIONAL.pdf";

            //document.getElementById("a_pdf").href = "pdfs/Rain-Products-All.pdf";
            window.open(pdfurl, '_blank' );
        }
    </script>
    <style type="text/css">
        .button_example
        {
            -webkit-box-shadow: #B4B5B5 1px 1px 1px ;
            -moz-box-shadow: #B4B5B5 1px 1px 1px ; 
            box-shadow: #B4B5B5 1px 1px 1px ; 
            float: right;
            border: 1px solid #d67901;
            border-radius: 0px;
            font-size: 13px;
            font-family: arial, helvetica, sans-serif;
            padding: 6px 12px;
            text-decoration: none;
            display: inline-block;
            text-shadow: -1px -1px 0 rgba(0,0,0,0.3);
            font-weight: bold;
            color: #FFFFFF;
            background-color: #FE9711;
            background-image: -webkit-gradient(linear, left top, left bottom, from(#FE9711), to(#E27410));
            background-image: -webkit-linear-gradient(top, #FE9711, #E27410);
            background-image: -moz-linear-gradient(top, #FE9711, #E27410);
            background-image: -ms-linear-gradient(top, #FE9711, #E27410);
            background-image: -o-linear-gradient(top, #FE9711, #E27410);
            background-image: linear-gradient(to bottom, #FE9711, #E27410);
            filter: progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#FE9711, endColorstr=#E27410);
            position : absolute;
            right : 25px;
        }
        
        .button_example:hover
        {
            color: #FFFFFF;
            border: 1px solid #a85f01;
            background-color: #E37510;
            background-image: -webkit-gradient(linear, left top, left bottom, from(#E37510), to(#E17310));
            background-image: -webkit-linear-gradient(top, #E37510, #E17310);
            background-image: -moz-linear-gradient(top, #E37510, #E17310);
            background-image: -ms-linear-gradient(top, #E37510, #E17310);
            background-image: -o-linear-gradient(top, #E37510, #E17310);
            background-image: linear-gradient(to bottom, #E37510, #E17310);
            filter: progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#E37510, endColorstr=#E17310);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BannerPlaceHolder" runat="Server">
    <div id="inner-banner">
        <h1>
            Products</h1>
        <img src="images/about-banner.jpg" alt="" />
        <div class="clear">
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="body-wrap">
        <div id="content-wrap">
            <div class="box" style="position: relative; width: 100%;">
                <%--<table><tr><td style="vertical-align:top;">--%>
                <div style="float: left; padding-top: 5px; padding-right: 8px; color: #069; text-decoration: underline;
                    margin-left: 15px">
                    Click Here to Filter Products by Category &rArr;
                </div>
                <%--</td><td>--%>
                <select id="selectbox" class="selectBox-dropdown" style="z-index: 999999; float: left; margin-left: 7px;">
                    <option value="all" selected="selected">ALL PRODUCTS</option>
                    <option value="ANTIBIOTIC RANGE">ANTIBIOTIC RANGE</option>
                    <option value="GYNAC RANGE">GYNAC RANGE</option>
                    <option value="PAEDIATRICS RANGE">PAEDIATRICS RANGE</option>
                    <option value="ANALGESIC & ANTI INFLAMMATORY RANGE">ANALGESIC & ANTI INFLAMMATORY RANGE</option>
                    <option value="G.T TRACK DISORDER RANGE">G.T TRACK DISORDER RANGE</option>
                    <option value="COUGH COLD RANGE">COUGH, COLD RANGE</option>
                    <option value="INJECTION RANGE">INJECTION RANGE</option>
                    <option value="NUTRITIONAL SUPPLEMENTS/ TONIC PREPRATION">NUTRITIONAL SUPPLEMENTS/ TONIC
                        PREPRATION</option>
                </select>
                <div class="SelBox001" id="SelBox001" style="position: relative;">
                </div>
                <%--</td></tr></table>--%>
                <div >
                <%--<a href="pdfs/Rain-Products-All.pdf" target="_blank" class="button_example" onclick="pdfdown();">--%>
                    <a class="button_example" onclick="pdfdown();">
                    Download as PDF</a>
                    <%--<asp:Button ID="btnPDFDownload" runat="server" Text="Download PDF" />--%>
                </div>
            </div>
            <div id="content-manage">
                <div style="clear: both">
                </div>
                <ul id="results" style="padding: 0px;">
                    <li id="listitem1" class="even" filtera="ANTIBIOTIC RANGE">
                        <div class="box">
                            <h2 id="h2title">
                                ANTIBIOTIC RANGE</h2>
                            <table width="100%" border="0" cellspacing="0" cellpadding="10" style="border: 1px solid #CCC;">
                                <tr>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle">
                                        DOVACEF-100 DT TAB
                                    </td>
                                    <td height="30" align="left" valign="middle">
                                        CEFIXIME 100 MG DT
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        ALU-ALU
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        10X10
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle" bgcolor="#f2f2f2">
                                        DOVACEF-200 DT TAB
                                    </td>
                                    <td height="30" align="left" valign="middle" bgcolor="#f2f2f2">
                                        CEFIXIME 200 MG DT
                                    </td>
                                    <td height="30" align="center" valign="middle" bgcolor="#f2f2f2">
                                        ALU-ALU
                                    </td>
                                    <td height="30" align="center" valign="middle" bgcolor="#f2f2f2">
                                        10X10
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle">
                                        DOVACEF-0 TAB
                                    </td>
                                    <td height="30" align="left" valign="middle">
                                        CEFIXIME 200 MG +OFLOXACIN 200 MG
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        ALU-ALU
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        10X10
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle" bgcolor="#f2f2f2">
                                        OFECT-200 TAB
                                    </td>
                                    <td height="30" align="left" valign="middle" bgcolor="#f2f2f2">
                                        OFLOXACIN 200 MG
                                    </td>
                                    <td height="30" align="center" valign="middle" bgcolor="#f2f2f2">
                                        BLISTER
                                    </td>
                                    <td height="30" align="center" valign="middle" bgcolor="#f2f2f2">
                                        10X10
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle">
                                        OFTED TAB
                                    </td>
                                    <td height="30" align="left" valign="middle">
                                        OFLOXACIN-200 MG TAB
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        BLISTER
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        5X20
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle" bgcolor="#f2f2f2">
                                        OFECT-OZ TAB
                                    </td>
                                    <td height="30" align="left" valign="middle" bgcolor="#f2f2f2">
                                        OFLOXACIN 200 MG + ORNIDAZOLE 500 MG
                                    </td>
                                    <td height="30" align="center" valign="middle" bgcolor="#f2f2f2">
                                        BLISTER
                                    </td>
                                    <td height="30" align="center" valign="middle" bgcolor="#f2f2f2">
                                        10X10
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle">
                                        EVEROXY-150 TAB
                                    </td>
                                    <td height="30" align="left" valign="middle">
                                        ROXYTHROMYCINE-150 MG TAB
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        BLISTER
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        10X10
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle" bgcolor="#f2f2f2">
                                        VOLCIN-500 TAB.
                                    </td>
                                    <td height="30" align="left" valign="middle" bgcolor="#f2f2f2">
                                        AMOXYCILLIN 250 MG + DICLOXACILLIN 250 MG
                                    </td>
                                    <td height="30" align="center" valign="middle" bgcolor="#f2f2f2">
                                        BLISTER
                                    </td>
                                    <td height="30" align="center" valign="middle" bgcolor="#f2f2f2">
                                        10X10
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle">
                                        ETILIVA-250 TAB
                                    </td>
                                    <td height="30" align="left" valign="middle">
                                        LEVOFLOXACINE-250 MG TAB
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        BLISTER
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        5X20
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle" bgcolor="#f2f2f2">
                                        ETILIVA-500 TAB
                                    </td>
                                    <td height="30" align="left" valign="middle" bgcolor="#f2f2f2">
                                        LEVOFLOXACINE-500 MG
                                    </td>
                                    <td height="30" align="center" valign="middle" bgcolor="#f2f2f2">
                                        BLISTER
                                    </td>
                                    <td height="30" align="center" valign="middle" bgcolor="#f2f2f2">
                                        10X10
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle">
                                        UCEF-250 TAB
                                    </td>
                                    <td height="30" align="left" valign="middle">
                                        CEPHALEXINE 250 MG TAB( DISPERSIBLE)
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        BLISTER
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        10X10
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle" bgcolor="#f2f2f2">
                                        UCEF-500 CAP
                                    </td>
                                    <td height="30" align="left" valign="middle" bgcolor="#f2f2f2">
                                        CEPHALEXINE 500 MG CAPSULE
                                    </td>
                                    <td height="30" align="center" valign="middle" bgcolor="#f2f2f2">
                                        BLISTER
                                    </td>
                                    <td height="30" align="center" valign="middle" bgcolor="#f2f2f2">
                                        10X10
                                    </td>
                                </tr>
                            </table>
                            <div class="clear" style="height: 35px">
                            </div>
                        </div>
                    </li>
                    <li id="listitem2" class="even" filtera="NUTRITIONAL SUPPLEMENTS/ TONIC PREPRATION">
                        <div class="box">
                            <h2 id="h2title">
                                NUTRITIONAL SUPPLEMENTS/ TONIC PREPRATION</h2>
                            <table width="100%" border="0" cellspacing="0" cellpadding="10" style="border: 1px solid #CCC">
                                <tr>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle">
                                        ALLZED TAB
                                    </td>
                                    <td height="30" align="left" valign="middle">
                                        ANTIOXIDENT+MULTIVITAMIN+ MULTIMINERALS TAB
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        ALU FOIL
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        10X15
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle" bgcolor="#f2f2f2">
                                        LYCOZED TAB
                                    </td>
                                    <td height="30" align="left" valign="middle" bgcolor="#f2f2f2">
                                        LYCOPENE +MULTIVITAMIN+MULTIMINERALS TAB.
                                    </td>
                                    <td height="30" align="center" valign="middle" bgcolor="#f2f2f2">
                                        ALU-ALU
                                    </td>
                                    <td height="30" align="center" valign="middle" bgcolor="#f2f2f2">
                                        10X10
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle">
                                        ALLZED SYRUP
                                    </td>
                                    <td height="30" align="left" valign="middle">
                                        MULTIVITAMIN+ MULTIMINERALS TRACE ELEMENT SYRUP
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        OUTER CARTON
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        100 ml
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle" bgcolor="#f2f2f2">
                                        ALLZED SYRUP
                                    </td>
                                    <td height="30" align="left" valign="middle" bgcolor="#f2f2f2">
                                        MULTIVITAMIN+ MULTIMINERALS TRACE ELEMENT SYRUP
                                    </td>
                                    <td height="30" align="center" valign="middle" bgcolor="#f2f2f2">
                                        OUTER CARTON
                                    </td>
                                    <td height="30" align="center" valign="middle" bgcolor="#f2f2f2">
                                        200 ML
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle">
                                        ALLZED PROTEIN GRANULES
                                    </td>
                                    <td height="30" align="left" valign="middle">
                                        PROTEIN GRANULES
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        TIN PACK
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        200 gm
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle" bgcolor="#f2f2f2">
                                        ALLZED-C POWDER
                                    </td>
                                    <td height="30" align="left" valign="middle" bgcolor="#f2f2f2">
                                        ENERGY BOOSTER POWDER
                                    </td>
                                    <td height="30" align="center" valign="middle" bgcolor="#f2f2f2">
                                        OUTER BOX
                                    </td>
                                    <td height="30" align="center" valign="middle" bgcolor="#f2f2f2">
                                        35 GM
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle">
                                        ALLZED-C POWDER
                                    </td>
                                    <td height="30" align="left" valign="middle">
                                        ENERGY BOOSTER POWDER
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        OUTER BOX
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        105 gm
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle" bgcolor="#f2f2f2">
                                        ALLZED PLUS SYRUP
                                    </td>
                                    <td height="30" align="left" valign="middle" bgcolor="#f2f2f2">
                                        13 VITAMINS+ 8 AMINO ACID+ 10 MINERALS SYRUP
                                    </td>
                                    <td height="30" align="center" valign="middle" bgcolor="#f2f2f2">
                                        OUTER CARTON
                                    </td>
                                    <td height="30" align="center" valign="middle" bgcolor="#f2f2f2">
                                        150 ML
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle">
                                        BEING-12 SYRUP
                                    </td>
                                    <td height="30" align="left" valign="middle">
                                        VIT. B COMPLEX + L-LYSINE + CYANOCOBALAMINE SYRUP
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        OUTER CARTON
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        200 ml
                                    </td>
                                </tr>
                            </table>
                            <div class="clear" style="height: 35px">
                            </div>
                        </div>
                    </li>
                    <li id="listitem3" class="even" filtera="GYNAC RANGE">
                        <div class="box">
                            <h2 id="h2title">
                                GYNAC RANGE</h2>
                            <table width="100%" border="0" cellspacing="0" cellpadding="10" style="border: 1px solid #CCC">
                                <tr>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle">
                                        FLUCORIN-150 TAB
                                    </td>
                                    <td height="30" align="left" valign="middle">
                                        FLUCONAZOLE-150 MG SINGLE TAB.
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        OUTER CARTON
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        1 tab.
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle" bgcolor="#f2f2f2">
                                        RINOFER-Z TABLET
                                    </td>
                                    <td height="30" align="left" valign="middle" bgcolor="#f2f2f2">
                                        FERROUS FUMRATE 152 MG.+ FOLIC ACID 750 MCG.+ZINC 61.8 MG.TABLET
                                    </td>
                                    <td height="30" align="center" valign="middle" bgcolor="#f2f2f2">
                                        BLISTER
                                    </td>
                                    <td height="30" align="center" valign="middle" bgcolor="#f2f2f2">
                                        10X15
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle">
                                        RINOFER SYRUP
                                    </td>
                                    <td height="30" align="left" valign="middle">
                                        HEAMATINIC SYRUP OF IRON,CALCIUM,L-LYSINE WITH ZINC
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        OUTER CARTON
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        200 ML
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle" bgcolor="#f2f2f2">
                                        DOVA-F TAB
                                    </td>
                                    <td height="30" align="left" valign="middle" bgcolor="#f2f2f2">
                                        DOXYLAMINE SUCCINATE 10 MG +PYRIDOXINE 10 MG +FOLIC ACID 2.5 MG
                                    </td>
                                    <td height="30" align="center" valign="middle" bgcolor="#f2f2f2">
                                        ALU-ALU
                                    </td>
                                    <td height="30" align="center" valign="middle" bgcolor="#f2f2f2">
                                        10X10
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left" valign="middle">
                                        RINSID-4 M.D TAB
                                    </td>
                                    <td height="30" align="left" valign="middle">
                                        ONDANSETRON 4 MG MOUTH DISSOLVING TAB
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        ALU-ALU
                                    </td>
                                    <td height="30" align="center" valign="middle">
                                        10X10
                                    </td>
                                </tr>
                            </table>
                            <div class="clear" style="height: 35px">
                            </div>
                        </div>
                    </li>
                    <li id="listitem4" class="even" filtera="PAEDIATRICS RANGE">
                        <div class="box">
                            <h2 id="h2title">
                                PAEDIATRICS RANGE</h2>
                            <table width="100%" border="0" cellspacing="0" cellpadding="10" style="border: 1px solid #CCC">
                                <tr>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle">
                                        ALLZED DROP
                                    </td>
                                    <td align="left" valign="middle">
                                        MULTIVITAMIN+ MULTIMINERALS DROP
                                    </td>
                                    <td align="center" valign="middle">
                                        OUTER BOX WITH DROPPER
                                    </td>
                                    <td align="center" valign="middle">
                                        30 ml
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        WELLZYM DROP
                                    </td>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        CARMINATIVE &amp; DIGESTIVE ENZYM DROP
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        OUTER BOX WITH DROPPER
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        30 ml
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle">
                                        DOVACEF DRY SYRUP
                                    </td>
                                    <td align="left" valign="middle">
                                        CEFIXIME 50 mg/5 ml
                                    </td>
                                    <td align="center" valign="middle">
                                        OUTER BOX
                                    </td>
                                    <td align="center" valign="middle">
                                        30 ml
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        RINSID SYRUP
                                    </td>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        ONDANSETRON 2MG/5 ML SYRUP
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        OUTER BOX WITH DROPPER
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        30 ml
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle">
                                        UCEF-KID
                                    </td>
                                    <td align="left" valign="middle">
                                        CEPHALEXINE 125 MG TABLET DT
                                    </td>
                                    <td align="center" valign="middle">
                                        BLISTER
                                    </td>
                                    <td align="center" valign="middle">
                                        10X10
                                    </td>
                                </tr>
                            </table>
                            <div class="clear" style="height: 35px">
                            </div>
                        </div>
                    </li>
                    <li id="listitem5" class="even" filtera="ANALGESIC & ANTI INFLAMMATORY RANGE">
                        <div class="box">
                            <h2 id="h2title">
                                ANALGESIC & ANTI INFLAMMATORY RANGE</h2>
                            <table width="100%" border="0" cellspacing="0" cellpadding="10" style="border: 1px solid #CCC">
                                <tr>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle">
                                        NOPIN TAB
                                    </td>
                                    <td align="left" valign="middle">
                                        ACECLOFENAC 100 MG + PARA.-325 MG
                                    </td>
                                    <td align="center" valign="middle">
                                        BLISTER
                                    </td>
                                    <td align="center" valign="middle">
                                        20X10
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        NIMELL-100 TAB
                                    </td>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        NIMESULIDE 100 MG
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        BLISTER
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        30X10
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle">
                                        NIMWELL-P TAB
                                    </td>
                                    <td align="left" valign="middle">
                                        NIMESULIDE 100 MG + PARA. 325 MG
                                    </td>
                                    <td align="center" valign="middle">
                                        BLISTER
                                    </td>
                                    <td align="center" valign="middle">
                                        10X10
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        REEZOX TAB
                                    </td>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        DICLOFENAC SODIUM 50 MG +PARA-325 MG +CLORZOXAZONE 250 MG
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        BLISTER
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        10X10
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle">
                                        RINODAC TAB
                                    </td>
                                    <td align="left" valign="middle">
                                        DICLOFENAC SODIUM+PARACETAMOL
                                    </td>
                                    <td align="center" valign="middle">
                                        BLISTER
                                    </td>
                                    <td align="center" valign="middle">
                                        20X10
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        RINODAC GEL
                                    </td>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        DICOFENAC + METHYLE SALICYLATE+ OLIUM LINI+MENTHOL GEL
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        OUTER CARTON
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        30 GM
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle">
                                        LEZIN-M TAB
                                    </td>
                                    <td align="left" valign="middle">
                                        MONTELUKAST-10 MG + LEVOCETRIZINE 5 MG
                                    </td>
                                    <td align="center" valign="middle">
                                        ALU-ALU
                                    </td>
                                    <td align="center" valign="middle">
                                        10X10
                                    </td>
                                </tr>
                            </table>
                            <div class="clear" style="height: 35px">
                            </div>
                        </div>
                    </li>
                    <li id="listitem6" class="even" filtera="G.T TRACK DISORDER RANGE">
                        <div class="box">
                            <h2 id="h2title">
                                G.T TRACK DISORDER RANGE</h2>
                            <table width="100%" border="0" cellspacing="0" cellpadding="10" style="border: 1px solid #CCC">
                                <tr>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle">
                                        DOMSET-30 CAP
                                    </td>
                                    <td align="left" valign="middle">
                                        OMEPRAZOLE 20 MG + DOMPERIDONE 10 MG
                                    </td>
                                    <td align="center" valign="middle">
                                        ALU FOIL
                                    </td>
                                    <td align="center" valign="middle">
                                        10X10
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        RYBET- DSR CAP
                                    </td>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        RABEPRAZOLE 20 MG + DOMPERIDONE 30 MG (sustain release)
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        ALU-ALU
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        10X10
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle">
                                        PANTORAIN-40 Tab
                                    </td>
                                    <td align="left" valign="middle">
                                        Pantoprazole sodium-40 mg
                                    </td>
                                    <td align="center" valign="middle">
                                        ALU-ALU
                                    </td>
                                    <td align="center" valign="middle">
                                        10X10
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        PANTORAIN-D Tab
                                    </td>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        Pantoprazole sodium-40 mg + Domperidone 10 mg
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        ALU-ALU
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        10X10
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle">
                                        MINLIV SYRUP
                                    </td>
                                    <td align="left" valign="middle">
                                        AYURVEDIC LIVER TONIC SYRUP
                                    </td>
                                    <td align="center" valign="middle">
                                        OUTER CARTON
                                    </td>
                                    <td align="center" valign="middle">
                                        200 ml
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        WELLZYM SYRUP
                                    </td>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        CARMINATIVE &amp; DIGESTIVE ENZYM SYRUP
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        OUTER CARTON
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        200 ml
                                    </td>
                                </tr>
                            </table>
                            <div class="clear" style="height: 35px">
                            </div>
                        </div>
                    </li>
                    <li id="listitem7" class="even" filtera="COUGH COLD RANGE">
                        <div class="box">
                            <h2 id="h2title">
                                COUGH, COLD RANGE</h2>
                            <table width="100%" border="0" cellspacing="0" cellpadding="10" style="border: 1px solid #CCC">
                                <tr>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        R-TUSS SYRUP
                                    </td>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        CODEIN PHOSPHATE 10 MG + C.P MALEATE-4 MG
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        PET BOTTLE
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        100 ml
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle">
                                        VELCOF-A SYP
                                    </td>
                                    <td align="left" valign="middle">
                                        DEXTROMETHORPHAN 10 MG + PHENYLEPHERINE HCL 5 MG + C.P.M-2 MG + MENTHOL 1.5 MG.
                                    </td>
                                    <td align="center" valign="middle">
                                        PET BOTTLE
                                    </td>
                                    <td align="center" valign="middle">
                                        100 ml
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        TEXOL SYRUP
                                    </td>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        TERBUTALINE 1.25 MG +GUAIPHENSIN 50 MG + AMBROXOL 15 MG +MENTHOL
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        PET BOTTLE
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        100 ML
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle">
                                        DECOLSET TAB
                                    </td>
                                    <td align="left" valign="middle">
                                        PARA.-500+ PHENYLEPHERINE HCL 5 MG + C.P MALEATE-2 MG +
                                    </td>
                                    <td align="center" valign="middle">
                                        BLISTER
                                    </td>
                                    <td align="center" valign="middle">
                                        20X10
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle">
                                        &nbsp;
                                    </td>
                                    <td align="left" valign="middle">
                                        CAFFIENE-30 MG
                                    </td>
                                    <td align="center" valign="middle">
                                        &nbsp;
                                    </td>
                                    <td align="center" valign="middle">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                            <div class="clear" style="height: 35px">
                            </div>
                        </div>
                    </li>
                    <li id="listitem8" class="even" filtera="INJECTION RANGE">
                        <div class="box">
                            <h2 id="h2title">
                                INJECTION RANGE</h2>
                            <table width="100%" border="0" cellspacing="0" cellpadding="10" style="border: 1px solid #CCC">
                                <tr>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                    <td height="30" bgcolor="#0A4469">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle">
                                        RINOCEF -1GM VIAL
                                    </td>
                                    <td align="left" valign="middle">
                                        CEFTRIAXONE 1GM VIAL (WITH W.F.I)
                                    </td>
                                    <td align="center" valign="middle">
                                        OUTER CARTON
                                    </td>
                                    <td align="center" valign="middle">
                                        1Gm
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        RINOCEF-SB INJ.
                                    </td>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        CEFTRIAXONE-1GM +SALBACTUM 250 MG INJ.(WITH W.F.I)
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        OUTER CARTON
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        1.5 GM
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle">
                                        RINOTHER INJ
                                    </td>
                                    <td align="left" valign="middle">
                                        A-B ARTEETHER 150MG/2ML
                                    </td>
                                    <td align="center" valign="middle">
                                        OUTER CARTON
                                    </td>
                                    <td align="center" valign="middle">
                                        3X2ML
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        REEZON 1GM INJ
                                    </td>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        CEFOPERAZONE 500 MG + SULBACTUM 500 MG (WITH W.F.I)
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        OUTER CARTON
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        1 GM
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle">
                                        RINOMIK-250 MG INJ
                                    </td>
                                    <td align="left" valign="middle">
                                        AMIKACIN 250 MG INJ (2ML)
                                    </td>
                                    <td align="center" valign="middle">
                                        OUTER CARTON
                                    </td>
                                    <td align="center" valign="middle">
                                        VIAL
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        RINOMIK-500 INJ
                                    </td>
                                    <td align="left" valign="middle" bgcolor="#f2f2f2">
                                        AMIKACIN 500 MG VIAL
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        OUTER CARTON
                                    </td>
                                    <td align="center" valign="middle" bgcolor="#f2f2f2">
                                        VIAL
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="middle">
                                        RINSID INJ.
                                    </td>
                                    <td align="left" valign="middle">
                                        ONDANSETRON 2MG/ML
                                    </td>
                                    <td align="center" valign="middle">
                                        OUTER CARTON
                                    </td>
                                    <td align="center" valign="middle">
                                        10X2 ML
                                    </td>
                                </tr>
                            </table>
                            <div class="clear" style="height: 35px">
                            </div>
                        </div>
                    </li>
                </ul>
                <!-- result-->
            </div>
            <div class="clear" style="height: 30px">
            </div>
            <div class="clear">
            </div>
        </div>
        <div class="clear">
        </div>
    </div>
</asp:Content>
