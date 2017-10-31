<!DOCTYPE html>
  <!--%@page contentType="text/html" pageEncoding = "UTF-8"%-->
<html>
    <%@include file="include/link-another-page.jsp"%><!--memanggil link another page-->
<head>
    <link rel="shortcut icon" type="image/png" href="icon/TravnerLogoClz.png" > <!--memanggil logo-->
<style>
    body{
        background-image: url("icon/background.jpg");
        background-size: 1560px 870px;
        background-repeat: no-repeat;
    }
    .button_started{
        border-radius: 5px;
        float:none;
        height:max-content;
        width: 50%;
        padding: 6px;
        margin: 50px auto;
        text-align: center;
        font: 20px sans-serif;
        font-weight: bold;
        color: white;
        background: #2980b9;
    }
    .button_started a{
        color: white;
    }

    .button_started:hover { 
        background:#2c3e50;
        transition: 0.3s;
    } 
    .button_started, a:hover{
	color: white;
    }
    .button 
    {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 10px 19px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 8px 7px 4px 2px;
    cursor: pointer;
    float:right;
}


</style>

</head>
<title>Travner</title>
<body>
    <div id="header"><!--header-->
        <div class="logo"><!--logo Travner-->
            <a href="index.jsp"><!--menuju page index-->
                <img src="css/logo.png " width="90px" height="35px">
            </a>
        </div>
        <button class="button" style="background-color: #2980b9">Sign Up</button>
        <button class="button">Log In</button>
    </div>
    <img src="icon/Travner1.png" style="width:450px; height:175px; display:block; margin: 150px auto 0px auto ;"> <!--memanggil logo-->
    <a href="main.jsp" style="text-decoration:none;">
        <div class="button_started">
            GET STARTED
        </div>
    </a>
</body>
<footer>
    <%@include file="include/footer.jsp" %>
</footer>
</html>
