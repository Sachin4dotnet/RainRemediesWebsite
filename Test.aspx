<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Test.aspx.vb" Inherits="Test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery-1.7.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        $('.container .flying-text').css({ opacity: 0 }); //set all text opacity to 0
        $('.container .active-text').animate({ opacity: 1, marginBottom: "350px" }, 2000); //animate first text
//        $('.container .active-text').animate({ opacity: 1, marginLeft: "350px" }, 2000); //animate first text
//        $('.container .active-text').animate({ opacity: 1, marginTop: "350px" }, 4000); //animate first text
        var int = setInterval(changeText, 2500); // call changeText function every 5 seconds
        function changeText() {
            var $activeText = $(".container .active-text"); //get current text
            var $nextText = $activeText.next();  //get next text
            if ($activeText.next().length == 0) $nextText = $('.container .flying-text:first'); //if it is last text, loop back to first text
            $activeText.animate({ opacity: 0 }, 5000); //set opacity 0 to animated text

            $activeText.animate({ marginTop: "100px" }); //set animated text position to default
//            $activeText.animate({ marginTop: "-100px" }); //set animated text position to default
            //animate next text
            $nextText.css({ opacity: 0 }).addClass('active-text').animate({ opacity: 1, marginBottom : "350px" }, 2000, function () {
                $activeText.removeClass('active-text');
//            $nextText.css({ opacity: 0 }).addClass('active-text').animate({ opacity: 1, marginTop: "350px" }, 4000, function () {
//                $activeText.removeClass('active-text');

            });
        }

    </script>
    <style type="text/css">
        body
        {
            background-color: #000;
        }
        
        .container
        {
            background-color: #777777;
    color: #FFFFFF;
    height: 250px;
    margin: 50px auto;
    overflow: hidden;
    width: 600px;
    
            /*
            background-color: #777777;
            width: 500px;
            margin: 0 auto;
            color: #FFF;
            overflow: hidden;
            */
        }
        
        .flying-text
        {
           /*  margin-left: -100px; */
            margin-top: 100px; 
        }
    </style>
</head>
<body>
    <div class="container">
        <h3 class="flying-text ">
            I believe</h3>
        <h3 class="flying-text">
            I can</h3>
        <h3 class="flying-text">
            Fly</h3>
    </div>
</body>
</html>
