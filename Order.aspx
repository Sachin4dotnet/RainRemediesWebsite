<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false"
    CodeFile="Order.aspx.vb" Inherits="Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
    <link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BannerPlaceHolder" runat="Server">
    <div id="inner-banner">
        <h1>
            Order Online</h1>
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
            <div id="content-manage" style="padding: 0px;">
                <div id="box-content">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="71%" align="left" valign="top">
                                <div class="box" style="width: 94%;">
                                    <h2>
                                        Order Online</h2>
                                    <div>
                                        <form id="form1" name="form1" runat="server">
                                        <div class="checkout_block1" style="width: 90%;">
                                            <table border="0" cellpadding="3" cellspacing="3">
                                                <tr>
                                                    <td style="width: 125px;">
                                                        <label for="text1">
                                                            Name
                                                        </label>
                                                    </td>
                                                    <td id="Td1">
                                                        <span id="sprytextfield1">
                                                            <input type="text" name="text1" id="txtName" runat="server" />
                                                            <br />
                                                            <span class="textfieldRequiredMsg">A value is required.</span> </span>
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
                                                            <br />
                                                            <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid
                                                                format.</span> </span>
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
                                                            <br />
                                                            <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid
                                                                format.</span> </span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label for="text7">
                                                            City</label>
                                                    </td>
                                                    <td id="Td7">
                                                        <span id="sprytextfield7">
                                                            <input type="text" name="text7" id="txtCity" runat="server" />
                                                            <br />
                                                            <span class="textfieldRequiredMsg">A value is required.</span> </span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label for="text5">
                                                            State</label>
                                                    </td>
                                                    <td id="Td5">
                                                        <span id="sprytextfield5">
                                                            <input type="text" name="text5" id="txtState" runat="server" />
                                                            <br />
                                                            <span class="textfieldRequiredMsg">A value is required.</span> </span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label for="text6">
                                                            Zipcode</label>
                                                    </td>
                                                    <td id="Td6">
                                                        <span id="sprytextfield6">
                                                            <input type="text" name="text6" id="txtZip" runat="server" />
                                                            <br />
                                                            <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid
                                                                format.</span><span class="textfieldMinCharsMsg">Minimum number of characters not met.</span><span
                                                                    class="textfieldMaxCharsMsg">Exceeded maximum number of characters.</span>
                                                        </span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label for="text4">
                                                            Order Description
                                                        </label>
                                                    </td>
                                                    <td id="Td4">
                                                        <span id="sprytextfield4">
                                                            <textarea name="text4" id="txtComments" runat="server" rows="3" />
                                                            <br />
                                                            <span class="textfieldRequiredMsg">A value is required.</span> </span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" Style="width: 120px; height: 30px;
                                                            background: #0d5480; color: #fff; border: none; cursor: pointer" />
                                                        <input name="submit" type="submit" value="Submit" style="width: 120px; height: 30px;
                                                            background: #0d5480; color: #fff; border: none; cursor: pointer; display: none;" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        </form>
                                    </div>
                                </div>
                            </td>
                            <td width="29%" align="left" valign="top">
                                <div class="box">
                                    <img src="images/order_online.jpg" />
                                </div>
                            </td>
                        </tr>
                    </table>
                    <div style="clear: both; height: 23px">
                    </div>
                    <div class="clear">
                    </div>
                </div>
            </div>
            <div style="clear: both">
            </div>
        </div>
        <asp:Label ID="lblerrordetail" runat="server" style="display:none; visibility:hidden;"></asp:Label>
    </div>
    <script type="text/javascript">
        var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
        var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2", "email");
        var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3", "integer");
        var sprytextfield4 = new Spry.Widget.ValidationTextField("sprytextfield4");
        var sprytextfield5 = new Spry.Widget.ValidationTextField("sprytextfield5");
        var sprytextfield5 = new Spry.Widget.ValidationTextField("sprytextfield7");
        var sprytextfield6 = new Spry.Widget.ValidationTextField("sprytextfield6", "integer", { minChars: 6, maxChars: 6 });
    </script>
</asp:Content>
