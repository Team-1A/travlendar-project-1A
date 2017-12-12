<%-- 
    Document   : add_activity
    Created on : Dec 4, 2017, 9:48:29 PM
    Author     : netspv
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <title>Travner - Add Activity</title>
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
    <link rel="stylesheet" type="text/css" href="css/add_activity.css">
    <link rel="stylesheet" type="text/css" href="css/map.css">
    <link rel="stylesheet" type="text/css" href="css/responsive_add_activity.css">
    
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
                <img src="css/Assets/icon/logo.png">
                <div class="account-btn">
                   
                    <img class="account-img" src="css/Assets/icon/chevron-pointing-to-the-left.svg" style="width: 10px ; height:10px;"/>
                </div>
            
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
                    <a href=Index.jsp> <li>Sign Out</li> </a>
                </ul>

            </div><!--end account-menu-->

        </div>
            </div>
        <div id="main">
            <!--calendar-->
	    <div class="left">
		  <div id='calendar'></div>
        </div>
            
            <!--Tab Utama-->
            <div class="right">
                <a href="Home.jsp">
                    <p style="float: right;text-align: right;font-size: 20px;margin: 10px;"><b>X</b><p>
                </a><br><br>
                
                <!--Add Activity and Add Location-->
                <div class="tab">
                    <h1>Add Activity</h1>
                    <h2>Title</h2>
                    <p>Give a name to your activity</p>
                    <p><input form="regForm" placeholder="Activity Name" oninput="this.className = ''" name="ActivityName"></p><br>
                    <h2>Time of Activity</h2>
                    <p>When does the activity started?</p>
                    <p><input form="regForm" type="date" name="startday"><input form="regForm" type="time" name="starttime"></p>
                    <p>When does the activity ended?</p>
                    <p><input form="regForm" type="date" name="endday"><input form="regForm" type="time" name="endtime"></p>
                    <p>spare time (if you want to come earlier before the activity start)<p>
                    <p>
                        <input form="regForm" type="radio" name="sparetime" value="none" checked> none
                        <input form="regForm" type="radio" name="sparetime" value="fivemins"> 5 mins
                        <input form="regForm" type="radio" name="sparetime" value="tenmins"> 10 mins
                        <input form="regForm" type="radio" name="sparetime" value="fifteenmins"> 15 mins
                    </p><br>

                        <h1>Add Location</h1>
                        
                        <p>Starting Location :</p>
                        <p><input form="geocoding_form" type="location" id="orig" size="50" name="orig" />
                            <input form="geocoding_form" type="submit" value="Search" name="searchorig" /></p>
                        <!--p><label class="switch">
                        <input type="checkbox" id="mark1">
                        <span class="slider_round"></span>
                        </label></p>-->        

                        <p>Destination :</p> 
                        <p><input form="geocoding_form"  type="location" id="dest" size="50" name="dest"/>
                        <input form="geocoding_form" type="submit" value="Search" name="searchdest" /></p>
                        <!-- <p><label class="switch">
                        <input type="checkbox" id="mark2">
                        <span class="slider round"></span>
                        </label></p>-->
                    
                        <input form="regForm" type="Hidden" id="getOrig" name="Orig">
                        <input form="regForm" type="Hidden" id="getDest" name="Dest">
                        <input form="regForm" type="Hidden" id="getDist" name="Dist">
                        <input form="regForm" type="Hidden" id="lat1" name="marker1_lat">
                        <input form="regForm" type="Hidden" id="lng1" name="marker1_lng">
                        <input form="regForm" type="Hidden" id="lat2" name="marker2_lat">
                        <input form="regForm" type="Hidden" id="lng2" name="marker2_lng">
                        <!--<input type="submit" value="Submit" name="submit" />-->

                    <br><div id="map">Maps Event</div>
                    <!--
                    <div class="row">
                    <ul id="steps"></ul>
                    </div>
                    -->
                </div>
                <!--Transportation Mode-->
                <div class="tab">
                    <h1>Recommendation Transportation Mode</h1>
                    <p>Estimated you will arrive at "07:30" by uaing these transportation mode</p><br> <!--estimasi waktu sementara-->
                    <div class="outline">
                        <table>
                            <!--Perjalanan dengan mobil-->
                            <tr>
                                <td><img src="css/Assets/icon/car.svg"></td>
    				<td>80 mins</td>
    				<td>Leave at 8.45 AM</td>
                                <td>
                                    <img src="css/Assets/icon/route.svg"></td>
                            </tr>
                            <!--Perjalanan dengan motor-->
                            <tr>
                                <td><img src="css/Assets/icon/motorcycle.svg"></td>
                                <td>180 mins</td>
                                <td>Leave at 9.00 AM</td>
                                <td><img src="css/Assets/icon/route.svg"></td>
                            </tr>
                            <!--Perjalanan dengan pesawat-->
                            <tr>
                                <td><img src="css/Assets/icon/plane.svg"></td>
                                <td>-</td>
                                <td>-</td>
                                <td><img src="css/Assets/icon/route.svg"></td>
                            </tr>
                            <!--Perjalanan dengan sepeda-->
                            <tr>
                                <td><img src="css/Assets/icon/bicycle.svg"></td>
                                <td>-</td>
                                <td>-</td>
                                <td><img src="css/Assets/icon/route.svg"></td>
                            </tr>
                            <!--Perjalanan dengan berjalan kaki-->
                            <tr>
                                <td><img src="css/Assets/icon/walk.svg"></td>
                                <td>-</td>
                                <td>-</td>
                                <td><img src="css/Assets/icon/route.svg"></td>
                            </tr>
                            <!--Perjalanan dengan sepeda-->
                            <tr>
                                <td><img src="css/Assets/icon/bicycle.svg"></td>
                                <td>-</td>
                                <td>-</td>
                                <td><img src="css/Assets/icon/route.svg"></td>
                            </tr>
                        </table>
                    </div>
                    <br><select form="regForm" name="transportation">
                        <option form="regForm" value="car">Car</option>
                        <option form="regForm" value="plane">Plane</option>
                        <option form="regForm" value="motorcycle">Motorcycle</option>
                        <option form="regForm" value="walk">Walk</option>
                        <option form="regForm" value="bicycle">bicycle</option>
                    </select>
                </div>
                <!--Activity has been add-->
                <div class="tab">
                    <h1 style="font-size: 20px; text-align: center; margin-top:100px;">Your Activity has been Recorded</h1><br>
                    <p style="text-align: center;">See your activity on the List or you can see it on the calendar as it marked</p>
                </div>
                <div style="overflow: auto">
                    <div style="float:right;"><br>
                        <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
                        <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
                    </div>
                </div>
                <!-- Circles which indicates the steps of the form: -->

                    <div style="text-align:center;">
                        <span class="step"></span>
    			<span class="step"></span>
    			<span class="step"></span>
    			<span class="step"></span>
                    </div>

            </div>

            <form id="regForm" action="${pageContext.request.contextPath}/Travner" method="POST"></form>
            <form name="form" action="" method="POST" id="geocoding_form"></form>
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
        events: "/Travner-GMaps/Calendar"
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


<!--modeal route-->
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
        </div>
    </div>
</body>
</html>