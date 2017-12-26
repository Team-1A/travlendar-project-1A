<%-- 
    Document   : Home
    Created on : Dec 10, 2017, 7:45:38 AM
    Author     : netspv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Travner- Home</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
        
        <!-- Google Maps JS API -->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDkmRXiWxa2lmWdsxjcqahurk8g_rtHM1s"></script>

        <!-- JQuery Library -->
        <script src="http://code.jquery.com/jquery-latest.min.js"></script> 

        <!-- GMaps Library -->
        <script src="Test_Gmaps_API/gmaps.js"></script>
        
        <link href="css/fullcalendar.min.css" rel="stylesheet">
        <link href="css/fullcalendar.print.min.css" rel="stylesheet" media="print">
        <link rel="stylesheet" type="text/css" href="css/home.css">
        <link rel="stylesheet" type="text/css" href="css/map.css">
        <link rel="stylesheet" type="text/css" href="css/responsive_index.css">
        
        <script type="text/javascript" src="js/moment.min.js"></script>
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/fullcalendar.min.js"></script>
        <script type="text/javascript" src="js/accordion_activity.js"></script>
        <script type="text/javascript" src="js/index.js"></script>
    </head>
    
    <body>
       <div id="main">
            <div id="header"><!--header-->
                
                <nav onmouseover="">
                    <a href="#" title="Menu">Menu</a>
                    <a href="#" title="Account">Account</a>
                    <a href="#" title="Settings">Settings</a>
                    <a href="#" title="Email">Email</a>
                </nav>


<!--	<script type="text/javascript">
    /* iOS re-orientation fix */
    if (navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPad/i)) {
      var viewportmeta = document.querySelectorAll('meta[name="viewport"]')[0];
      if (viewportmeta) {
        viewportmeta.content = 'width=device-width, minimum-scale=1.0, maximum-scale=1.0';
        document.body.addEventListener('gesturestart', function() {
          viewportmeta.content = 'width=device-width, minimum-scale=0.25, maximum-scale=1.6';
        }, false);
      }
      /* iOS hides Safari address bar */
      window.addEventListener("load",function() {
        setTimeout(function() {
          window.scrollTo(0, 1);
        }, 300);
      });
    }
	</script>-->
                
                <img src="css/Assets/icon/logo.png">
                <div class="account-btn">
                   
                    <img class="account-img" src="css/Assets/icon/chevron-pointing-to-the-left.svg" style="width: 10px ; height:10px;"/>
                </div>
            
            <div id="account-panel">

            <div class="account-header">

                <div id="profile-pic"></div>
                <div id="profile-details">
                    <h1><c:out value="${sessionScope.username}" /></h1>
                    <h2><c:out value="${sessionScope.email}" /><h2>
                    <div id="profile-buttons">
                        <div class="view-profile">View Profile</div>
                        <div class="add-account" >Activities</div>
                    </div>
                </div>

            </div><!--end account-header-->

            <div class="account-menu">

                <ul class="account-menu-list">
                    <a href=${pageContext.request.contextPath}/Travner?action=Logout> <li>Sign Out</li> </a>
                </ul>

            </div><!--end account-menu-->
                    

        </div>
                
            </div>
            
            <div id="main">
                
                <!--calendar-->
                <div class="left">
                    <form>
	                   <input type="search" placeholder="Find Activity">
                </form>
                    <div id='calendar'></div>
                </div>
                
                <!--Tab Utama-->
                <div class="right">
                    <a href="add_activity.jsp"><button class="activity">Add Activity</button></a>
                    <img src="css/Assets/travel.jpg">
                </div>
                <!-- script calendar -->
<script>
  $(document).ready(function () {
    $('#calendar').fullCalendar({
        header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month,agendaWeek,agendaDay,listWeek'
        },
        defaultDate: '2017-09-12',
        navLinks: true, // can click day/week names to navigate views
        editable: true,
        eventLimit: true, // allow "more" link when too many events
        events: "/JSP_Prototyping/Calendar"
    });
});

</script>
    <!-- Script Gmaps -->
<script>
            // JQuery
            $(document).ready(function () {  // Ketika web udah siap
//		prettyPrint();
                var marker1, marker2;
                var marker1pos, marker2pos;
                var a = false, b = false;
                var corvo = false, attano = true;
                var geocoder, route;
                var mapObj = new GMaps({
                    el: '#map',
                    lat: -6.914744,
                    lng: 107.609810,
                    zoom: 14,
                    click: function(e){
                        if($('input#mark1').is(':checked')){
                            if(a){
                                mapObj.removeMarker(marker1);
                                mapObj.removePolylines();
                            }
                            
                            marker1 = mapObj.addMarker({
                                lat: e.latLng.lat(),
                                lng: e.latLng.lng()
                            });
                            
                            a = true;
                            marker1pos = marker1.getPosition();
                            $('input#mark1').prop('checked',false);

                            if (marker1 !== null && marker2 !== null) {
                                mapObj.drawRoute({
                                    origin: [marker1pos.lat(), marker1pos.lng()],
                                    destination: [marker2pos.lat(), marker2pos.lng()],
                                    travelMode: 'driving',
                                    strokeColor: '#131540',
                                    strokeOpacity: 0.6,
                                    strokeWeight: 6
                                });

                                var origin = new google.maps.LatLng(marker1pos.lat(), marker1pos.lng()),
                                destination = new google.maps.LatLng(marker2pos.lat(), marker2pos.lng()),
                                service = new google.maps.DistanceMatrixService();

//                                mapObj.getRoutes({
//                                    origins: [origin],
//                                    destinations: [destination],
//                                    travelMode: google.maps.TravelMode.DRIVING,
//                                    callback: function(e){
//                                        route = new GMaps.Route({
//                                            map: mapObj,
//                                            route: e[0]
//                                        });
//                                    }
//                                });
//                                
//                                for(route.step_count;route.step_count<route.steps_length;route.forward()){
//                                    $('steps').append('<li>' + route.steps[route.step_count].instructions + '</li>');
//                                }
                                
                                service.getDistanceMatrix(
                                    {
                                        origins: [origin],
                                        destinations: [destination],
                                        travelMode: google.maps.TravelMode.DRIVING,
                                        avoidHighways: false,
                                        avoidTolls: false
                                    },
                                    callback
                                );

                                function callback(response, status)
                                {
                                    var orig = document.getElementById("orig"),
                                    dest = document.getElementById("dest"),
                                    getOrig = document.getElementById("getOrig"),
                                    getDest = document.getElementById("getDest"),
                                    getDist = document.getElementById("getDist"),
                                    lat1 = document.getElementById("lat1"),
                                    lng1 = document.getElementById("lng1"),
                                    lat2 = document.getElementById("lat2"),
                                    lng2 = document.getElementById("lng2");

                                    if (status == "OK") {
                                        dest.value = response.destinationAddresses[0];
                                        orig.value = response.originAddresses[0];
                                        getDist.value = response.rows[0].elements[0].distance.text;
                                        getOrig.value = orig.value;
                                        getDest.value = dest.value;
                                        lat1.value = marker1pos.lat();
                                        lng1.value = marker1pos.lng();
                                        lat2.value = marker2pos.lat();
                                        lng2.value = marker2pos.lng();
                                    } else {
                                        alert("Error: " + status);
                                    }
                                }
                            }
                        }
                        
                        if($('input#mark2').is(':checked')){
                            if(b){
                                mapObj.removeMarker(marker2);
                                mapObj.removePolylines();
                            }
                            
                            marker2 = mapObj.addMarker({
                                lat: e.latLng.lat(),
                                lng: e.latLng.lng()
                            });
                            
                            b = true;
                            marker2pos = marker2.getPosition();
                            $('input#mark2').prop('checked',false);

                            if (marker1 !== null && marker2 !== null) {
                                mapObj.drawRoute({
                                    origin: [marker1pos.lat(), marker1pos.lng()],
                                    destination: [marker2pos.lat(), marker2pos.lng()],
                                    travelMode: 'driving',
                                    strokeColor: '#131540',
                                    strokeOpacity: 0.6,
                                    strokeWeight: 6
                                });

                                var origin = new google.maps.LatLng(marker1pos.lat(), marker1pos.lng()),
                                destination = new google.maps.LatLng(marker2pos.lat(), marker2pos.lng()),
                                service = new google.maps.DistanceMatrixService();

                                service.getDistanceMatrix(
                                    {
                                        origins: [origin],
                                        destinations: [destination],
                                        travelMode: google.maps.TravelMode.DRIVING,
                                        avoidHighways: false,
                                        avoidTolls: false
                                    },
                                    callback
                                );

                                function callback(response, status)
                                {
                                    var orig = document.getElementById("orig"),
                                    dest = document.getElementById("dest"),
                                    getOrig = document.getElementById("getOrig"),
                                    getDest = document.getElementById("getDest"),
                                    getDist = document.getElementById("getDist"),
                                    lat1 = document.getElementById("lat1"),
                                    lng1 = document.getElementById("lng1"),
                                    lat2 = document.getElementById("lat2"),
                                    lng2 = document.getElementById("lng2");

                                    if (status == "OK") {
                                        dest.value = response.destinationAddresses[0];
                                        orig.value = response.originAddresses[0];
                                        getDist.value = response.rows[0].elements[0].distance.text;
                                        getOrig.value = orig.value;
                                        getDest.value = dest.value;
                                        lat1.value = marker1pos.lat();
                                        lng1.value = marker1pos.lng();
                                        lat2.value = marker2pos.lat();
                                        lng2.value = marker2pos.lng();
                                    } else {
                                        alert("Error: " + status);
                                    }
                                }
                            }
                        }
                    }
                });
                
                $('#geocoding_form').submit(function (e) {
                    e.preventDefault();
                    GMaps.geocode({
                        address: $('#orig').val().trim(),
                        callback: function (results, status) {
                            if (status == 'OK') {
                                var latlng = results[0].geometry.location;
                                mapObj.setCenter(latlng.lat(), latlng.lng());
                                if (a) {
                                    mapObj.removeMarker(marker1);
                                    mapObj.removePolylines();
                                }

                                marker1 = mapObj.addMarker({
                                    lat: latlng.lat(),
                                    lng: latlng.lng()
                                });

                                a = true;

                                marker1pos = marker1.getPosition();

                                if (marker1 !== null && marker2 !== null) {
                                    mapObj.drawRoute({
                                        origin: [marker1pos.lat(), marker1pos.lng()],
                                        destination: [marker2pos.lat(), marker2pos.lng()],
                                        travelMode: 'driving',
                                        strokeColor: '#131540',
                                        strokeOpacity: 0.6,
                                        strokeWeight: 6
                                    });

                                    var origin = new google.maps.LatLng(marker1pos.lat(), marker1pos.lng()),
                                    destination = new google.maps.LatLng(marker2pos.lat(), marker2pos.lng()),
                                    service = new google.maps.DistanceMatrixService();

                                    service.getDistanceMatrix(
                                        {
                                            origins: [origin],
                                            destinations: [destination],
                                            travelMode: google.maps.TravelMode.DRIVING,
                                            avoidHighways: false,
                                            avoidTolls: false
                                        },
                                        callback
                                    );

                                    function callback(response, status)
                                    {
                                        var orig = document.getElementById("orig"),
                                        dest = document.getElementById("dest"),
                                        getOrig = document.getElementById("getOrig"),
                                        getDest = document.getElementById("getDest"),
                                        getDist = document.getElementById("getDist"),
                                        lat1 = document.getElementById("lat1"),
                                        lng1 = document.getElementById("lng1"),
                                        lat2 = document.getElementById("lat2"),
                                        lng2 = document.getElementById("lng2");

                                        if (status == "OK") {
                                            dest.value = response.destinationAddresses[0];
                                            orig.value = response.originAddresses[0];
                                            getDist.value = response.rows[0].elements[0].distance.text;
                                            getOrig.value = orig.value;
                                            getDest.value = dest.value;
                                            lat1.value = marker1pos.lat();
                                            lng1.value = marker1pos.lng();
                                            lat2.value = marker2pos.lat();
                                            lng2.value = marker2pos.lng();
                                        } else {
                                            alert("Error: " + status);
                                        }
                                    }
                                }
                            }
                        }
                    });
                });
                
                $('#geocoding_form').submit(function (e) {
                    e.preventDefault();
                    GMaps.geocode({
                        address: $('#dest').val().trim(),
                        callback: function (results, status) {
                            if (status == 'OK') {
                                var latlng = results[0].geometry.location;
                                mapObj.setCenter(latlng.lat(), latlng.lng());
                                if (b) {
                                    mapObj.removeMarker(marker2);
                                    mapObj.removePolylines();
                                }

                                marker2 = mapObj.addMarker({
                                    lat: latlng.lat(),
                                    lng: latlng.lng()
                                });

                                b = true;

                                marker2pos = marker2.getPosition();

                                if (marker1 !== null && marker2 !== null) {
                                    mapObj.drawRoute({
                                        origin: [marker1pos.lat(), marker1pos.lng()],
                                        destination: [marker2pos.lat(), marker2pos.lng()],
                                        travelMode: 'driving',
                                        strokeColor: '#131540',
                                        strokeOpacity: 0.6,
                                        strokeWeight: 6
                                    });

                                    var origin = new google.maps.LatLng(marker1pos.lat(), marker1pos.lng()),
                                    destination = new google.maps.LatLng(marker2pos.lat(), marker2pos.lng()),
                                    service = new google.maps.DistanceMatrixService();

                                    service.getDistanceMatrix(
                                        {
                                            origins: [origin],
                                            destinations: [destination],
                                            travelMode: google.maps.TravelMode.DRIVING,
                                            avoidHighways: false,
                                            avoidTolls: false
                                        },
                                        callback
                                    );

                                    function callback(response, status)
                                    {
                                        var orig = document.getElementById("orig"),
                                        dest = document.getElementById("dest"),
                                        getOrig = document.getElementById("getOrig"),
                                        getDest = document.getElementById("getDest"),
                                        getDist = document.getElementById("getDist"),
                                        lat1 = document.getElementById("lat1"),
                                        lng1 = document.getElementById("lng1"),
                                        lat2 = document.getElementById("lat2"),
                                        lng2 = document.getElementById("lng2");

                                        if (status == "OK") {
                                            dest.value = response.destinationAddresses[0];
                                            orig.value = response.originAddresses[0];
                                            getDist.value = response.rows[0].elements[0].distance.text;
                                            getOrig.value = orig.value;
                                            getDest.value = dest.value;
                                            lat1.value = marker1pos.lat();
                                            lng1.value = marker1pos.lng();
                                            lat2.value = marker2pos.lat();
                                            lng2.value = marker2pos.lng();
                                        } else {
                                            alert("Error: " + status);
                                        }
                                    }
                                }
                            }
                        }
                    });
                });
                
                $('input#mark1').change(function(){
                    if($(this).prop('checked')){
                        $('input#mark2').prop('checked',false);
                    }
                });
                
                $('input#mark2').change(function(){
                    if($(this).prop('checked')){
                        $('input#mark1').prop('checked',false);
                    }
                });
            }); // tutup JQuery    
        </script>     
    <!-- script tab -->
<script>
var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the crurrent tab

function showTab(n) {
  // This function will display the specified tab of the form...
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  //... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "Submit";
  } else {
    document.getElementById("nextBtn").innerHTML = "Next";
  }
  //... and run a function that will display the correct step indicator:
  fixStepIndicator(n)
}

function nextPrev(n) {
  // This function will figure out which tab to display
  var x = document.getElementsByClassName("tab");
  // Exit the function if any field in the current tab is invalid:
  if (n == 1 && !validateForm()) return false;
  // Hide the current tab:
  x[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + n;
  // if you have reached the end of the form...
  if (currentTab >= x.length) {
    // ... the form gets submitted:
    document.getElementById("regForm").submit();
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

function validateForm() {
  // This function deals with validation of the form fields
  var x, y, i, valid = true;
  x = document.getElementsByClassName("tab");
  y = x[currentTab].getElementsByTagName("input");
  // A loop that checks every input field in the current tab:
  for (i = 0; i < y.length; i++) {
    // If a field is empty...
    if (y[i].value == "") {
      // add an "invalid" class to the field:
      y[i].className += " invalid";
      // and set the current valid status to false
      valid = false;
    }
  }
  // If the valid status is true, mark the step as finished and valid:
  if (valid) {
    document.getElementsByClassName("step")[currentTab].className += " finish";
  }
  return valid; // return the valid status
}

function fixStepIndicator(n) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  //... and adds the "active" class on the current step:
  x[n].className += " active";
}
</script>
            </div>
        </div>
    </body>
</html>