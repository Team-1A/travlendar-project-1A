<%-- 
    Document   : userguide
    Created on : Dec 19, 2017, 12:41:03 AM
    Author     : netspy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
    <title>Travner - USER GUIDE</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/user_guide.css">
    <link rel="stylesheet" type="text/css" href="css/responsive_add_activity.css">

    <script type="text/javascript" src="js/accordion_activity.js"></script>
    <script type="text/javascript" src="js/index.js"></script>
</head>
    <div id="header"><!--header-->
        <img src="css/Assets/icon/logo.png">
        <div class="account-btn">
            <img class="account-img" src="css/Assets/icon/chevron-pointing-to-the-left.svg" style="width: 10px ; height:10px;"/>
        </div>
    </div>
<body>
    <div id="main">
            
            <h1>USER GUIDE</h1>

            <div id="account-panel">

            <div class="account-header">

                <div id="profile-pic"></div>
                <div id="profile-details">
                    <h1>Adhitya</h1>
                    <h2>JustAdhita3798@gmail.com<h2>
                    <div id="profile-buttons">
                        <div class="view-profile">View Profile</div>
                        <div class="add-account" >Activities</div>
                    </div>
                </div>

            </div><!--end account-header-->

            <div class="account-menu">

                <ul class="account-menu-list">
                    <a href=index.html> <li>Sign Out</li> </a>
                </ul>

            </div><!--end account-menu-->
            </div>
    </div>

<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
</body>
</html>