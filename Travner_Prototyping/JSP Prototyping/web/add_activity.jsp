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
        <!--<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDkmRXiWxa2lmWdsxjcqahurk8g_rtHM1s&sensor=false&libraries=places&callback=initMap" async defer ></script>-->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDkmRXiWxa2lmWdsxjcqahurk8g_rtHM1s&sensor=false&libraries=places" ></script>

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
                        <p><input form="regForm" placeholder="Activity Name" oninput="this.className = ''" name="ActivityName" ></p><br>
                        <h2>Time of Activity</h2>
                        <p>Start Time:</p>
                        <p><input form="regForm" type="date" name="startday"><input form="regForm" type="time" name="starttime" id="sTime"></p>
                        <p>End Time:</p>
                        <p><input form="regForm" type="date" name="endday"><input form="regForm" type="time" name="endtime"></p>
                        <p>spare time (if you want to come earlier before the activity start)<p>
                        <p>
                            <input form="regForm" type="radio" name="sparetime" value="none" checked> none
                            <input form="regForm" type="radio" name="sparetime" value="fivemins"> 5 mins
                            <input form="regForm" type="radio" name="sparetime" value="tenmins"> 10 mins
                            <input form="regForm" type="radio" name="sparetime" value="fifteenmins"> 15 mins
                        </p><br>
                        
                        <h1>Add Location</h1>
                        <p>Starting Position:</p>
                        <p><input type="location" id="orig" size="50" name="orig" />
                            <input type="button" value="Search" id="searchorig" />
                        </p>
                        <!--p><label class="switch">
                        <input type="checkbox" id="mark1">
                        <span class="slider_round"></span>
                        </label></p>-->
                        <p>Destination Location:</p> 
                        <p><input type="location" id="dest" size="50" name="dest"/>
                            <input type="button" value="Search" id="searchdest" />
                        </p>
                        
                        <select id="mode">
                            <option value="DRIVING">Driving</option>
                            <option value="WALKING">Walking</option>
                            <option value="BICYCLING">Bicycling</option>
                            <option value="TRANSIT">Transit</option>
                        </select>
                        
                        <!-- <p><label class="switch">
                        <input type="checkbox" id="mark2">
                        <span class="slider round"></span>
                        </label></p>-->
                        
                        <!--<input form="regForm" type="Hidden" id="getOrig" name="Orig">-->
                        <input form="regForm" type="Hidden" id="getDur" name="Dur">
                        <!--<input form="regForm" type="Hidden" id="getDist" name="Dist">-->
                        <input form="regForm" type="Hidden" id="lat1" name="marker1_lat">
                        <input form="regForm" type="Hidden" id="lng1" name="marker1_lng">
                        <input form="regForm" type="Hidden" id="lat2" name="marker2_lat">
                        <input form="regForm" type="Hidden" id="lng2" name="marker2_lng">
                        <!--<input type="submit" value="Submit" name="submit" />-->
                        
                        <div id="map">Maps Event</div>
                        <!--
                        <div class="row">
                        <ul id="steps"></ul>
                        </div>-->
                    </div>
                    
                    <!--Transportation Mode-->
                    <div class="tab">
                        <h1>Recommendation Transportation Mode</h1>
                        <div class="outline">
                            <table>
                                <!--Perjalanan dengan mobil-->
                                <tr>
                                    <td><img src="css/Assets/icon/car.svg"></td>
                                    <td id="DRIVINGDur">-</td>
                                    <td id="DRIVINGDep">Not Avaiable</td>
                                    <td>
                                        <img src="css/Assets/icon/route.svg"></td>
                                </tr>
                                <!--Perjalanan dengan motor-->
                                <tr>
                                    <td><img src="css/Assets/icon/motorcycle.svg"></td>
                                    <td id="MotDur">-</td>
                                    <td id="MotDep">Not Avaiable</td>
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
                                    <td id="BICYCLINGDur">-</td>
                                    <td id="BICYCLINGDep">Not Avaiable</td>
                                    <td><img src="css/Assets/icon/route.svg"></td>
                                </tr>
                                <!--Perjalanan dengan berjalan kaki-->
                                <tr>
                                    <td><img src="css/Assets/icon/walk.svg"></td>
                                    <td id="WALKINGDur">-</td>
                                    <td id="WALKINGDep">Not Avaiable</td>
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
                <form id="regForm" action="${pageContext.request.contextPath}/Travner?action=InputData" method="POST"></form>
                <form name="form" action="" method="POST" id="geocoding_form"></form>
                
                <script>
                    var inp_orig = document.getElementById("orig");
                    var inp_dest = document.getElementById("dest");
                    
                    var autocompleteorig = new google.maps.places.Autocomplete(inp_orig);
                    var autocompletedest = new google.maps.places.Autocomplete(inp_dest);
                    
                    autocompleteorig.addListener('place_changed', function () {
                        var place = autocompleteorig.getPlace();
                        if (!place.geometry) {
                            // User entered the name of a Place that was not suggested and
                            // // pressed the Enter key, or the Place Details request failed.
                            // //window.alert("No details available for input: '" + place.name + "'");
                            return;
                        }
                        var addressOrig = '';
                        if (place.address_components) {
                            addressOrig = [
                                (place.address_components[0] && place.address_components[0].short_name || ''),
                                (place.address_components[1] && place.address_components[1].short_name || ''),
                                (place.address_components[2] && place.address_components[2].short_name || '')
                            ].join(' ');
                        }
                    });
                    
                    autocompletedest.addListener('place_changed', function () {
                        var place = autocompletedest.getPlace();
                        if (!place.geometry) {
                            // User entered the name of a Place that was not suggested and
                            // // pressed the Enter key, or the Place Details request failed.
                            // //window.alert("No details available for input: '" + place.name + "'");
                            return;
                        }
                        var address = '';
                        if (place.address_components) {
                            address = [
                                (place.address_components[0] && place.address_components[0].short_name || ''),
                                (place.address_components[1] && place.address_components[1].short_name || ''),
                                (place.address_components[2] && place.address_components[2].short_name || '')
                            ].join(' ');
                        }
                    });
                                </script>
                                
                                <!-- script calendar -->
                                <script>
                                    $(document).ready(function () {
                                        $('#calendar').fullCalendar({
                                            header: {
                                                left: 'prev,next today',
                                                center: 'title',
                                                right: 'month,agendaWeek,agendaDay,listWeek'
                                            },
                                            defaultDate: '2017-12-12',
                                            navLinks: true, // can click day/week names to navigate views
                                            editable: true,
                                            eventLimit: true, // allow "more" link when too many events
                                            events: "/JSP_Prototyping/Travner?action=activitycal"
                                        });
                                    });
                                                                </script>
                                                                <!-- Script Gmaps -->
                                                                <script>
                                                                    // JQuery
                                                                    // //$(document).ready(function () {  // Ketika web udah siap
                                                                    // //		prettyPrint();
                                                                    var marker1 = new google.maps.Marker({
                                                                        map: mapObj,
                                                                        draggable: true
                                                                    }), marker2 = new google.maps.Marker({
                                                                        map: mapObj,
                                                                        draggable: true
                                                                    });
                                                                    var routes = [];
                                                                    var marker1pos, marker2pos;
                                                                    var a = false, b = false;
                                                                    var geocoder = new google.maps.Geocoder();
                                                                    var route;
                                                                    var directionsService = new google.maps.DirectionsService;
                                                                    var distMatrixService = new google.maps.DistanceMatrixService;
                                                                    var mapObj;
                                                                    mapObj = new google.maps.Map(document.getElementById('map'), {
                                                                        center: {lat: -34.397, lng: 150.644},
                                                                        zoom: 13
                                                                    });
                                                                    var onChangeHandler = function () {
                                                                        displayRoute(directionsService);
                                                                    };
                                                                    var calculateHandler = function () {
                                                                        var transport = document.getElementById('mode').value;
                                                                        calculateRoute(distMatrixService);
                                                                    };
                                                                    //                                                event when map clicked
                                                                    //                                                //                                                google.maps.event.addListener(map, 'click', function (event) {
                                                                    //                                                //                                                    placeMarker(event.latLng);
                                                                    //                                                //                                                });
                                                                    //                                                //
                                                                    //                                                //                                                function placeMarker(location) {
                                                                    //                                                //                                                    if (marker) {
                                                                    //                                                //                                                        marker.setPosition(location);
                                                                    //                                                //                                                    } else {
                                                                    //                                                //                                                        marker = new google.maps.Marker({
                                                                    //                                                //                                                            position: location,
                                                                    //                                                //                                                            map: map
                                                                    //                                                //                                                        });
                                                                    //                                                //                                                    }
                                                                    //                                                //                                                }
                                                                    // 
                                                                    // Try HTML5 geolocation.
                                                                    if (navigator.geolocation) {
                                                                        navigator.geolocation.getCurrentPosition(function (position) {
                                                                            var pos = {
                                                                                lat: position.coords.latitude,
                                                                                lng: position.coords.longitude
                                                                            };
                                                                            mapObj.setCenter(pos);
                                                                        });
                                                                    } else {
                                                                    }
                                                                    document.getElementById('searchorig').addEventListener('click', function () {
                                                                        var orig = document.getElementById('orig').value;
                                                                        if (a) {
                                                                            marker1.setMap(null);
                                                                        }
                                                                        geocoder.geocode({address: orig}, function (results, status) {
                                                                            if (status === 'OK') {
                                                                                mapObj.setCenter(results[0].geometry.location);
                                                                                marker1.setPosition(results[0].geometry.location);
                                                                                marker1.setMap(mapObj);
                                                                                document.getElementById("lat1").value = marker1.getPosition().lat();
                                                                                document.getElementById("lng1").value = marker1.getPosition().lng();
                                                                            } else {
                                                                                alert('Geocode was not successful for the following reason: ' + status);
                                                                            }
                                                                        });
                                                                        a = true;
                                                                    });
                                                                    document.getElementById('searchdest').addEventListener('click', function () {
                                                                        var dest = document.getElementById('dest').value;
                                                                        if (b) {
                                                                            marker2.setMap(null);
                                                                        }
                                                                        geocoder.geocode({address: dest}, function (results, status) {
                                                                            if (status === 'OK') {
                                                                                mapObj.setCenter(results[0].geometry.location);
                                                                                marker2.setPosition(results[0].geometry.location);
                                                                                marker2.setMap(mapObj);
                                                                                document.getElementById("lat2").value = marker2.getPosition().lat();
                                                                                document.getElementById("lng2").value = marker2.getPosition().lng();
                                                                            } else {
                                                                                alert('Geocode was not successful for the following reason: ' + status);
                                                                            }
                                                                        });
                                                                        b = true;
                                                                    });
                                                                    google.maps.event.addListener(marker1, 'dragend', function () {
                                                                        geocodePosition(marker1.getPosition(), marker1, 1, 'orig');
                                                                    });
                                                                    google.maps.event.addListener(marker2, 'dragend', function () {
                                                                        geocodePosition(marker2.getPosition(), marker2, 2, 'dest');
                                                                    });
                                                                    
                                                                    google.maps.event.addListener(marker1, 'dragend', onChangeHandler);
                                                                    google.maps.event.addListener(marker2, 'dragend', onChangeHandler);
                                                                    google.maps.event.addListener(marker1, 'dragend', calculateHandler);
                                                                    google.maps.event.addListener(marker2, 'dragend', calculateHandler);
                                                                    
                                                                    document.getElementById('searchorig').addEventListener('click', calculateHandler);
                                                                    document.getElementById('searchdest').addEventListener('click', calculateHandler);
                                                                    document.getElementById('searchorig').addEventListener('click', onChangeHandler);
                                                                    document.getElementById('searchdest').addEventListener('click', onChangeHandler);
                                                                    
                                                                    function geocodePosition(pos, marker, num, addr) {
                                                                        var lat = 'lat' + num;
                                                                        var lng = 'lng' + num;
                                                                        geocoder.geocode({location: pos}, function (results, status) {
                                                                            if (status === 'OK') {
                                                                                marker.formatted_address = results[0].formatted_address;
                                                                                document.getElementById(addr).value = marker.formatted_address;
                                                                                document.getElementById(lat).value = marker.getPosition().lat();
                                                                                document.getElementById(lng).value = marker.getPosition().lng();
                                                                                displayRoute(directionsService);
                                                                            } else {
                                                                                marker.formatted_address = 'Cannot determine address at this location.';
                                                                            }
                                                                            infowindow.setContent(marker.formatted_address + "<br>coordinates: " + marker.getPosition().toUrlValue(6));
                                                                            infowindow.open(mapObj, marker);
                                                                        });
                                                                    }
                                                                    function displayRoute(directionsService) {
                                                                        if (a && b) {
                                                                            if (routes !== []) {
                                                                                for (var i = 0; i < routes.length; i++) {
                                                                                    routes[i].setMap(null);
                                                                                }
                                                                            }
                                                                            var transportMode = document.getElementById('mode').value;
                                                                            directionsService.route({
                                                                                origin: document.getElementById('orig').value,
                                                                                destination: document.getElementById('dest').value,
                                                                                travelMode: google.maps.TravelMode[transportMode],
                                                                                provideRouteAlternatives: true
                                                                            }, function (response, status) {
                                                                                if (status === 'OK') {
                                                                                    for (var i = 0; i < response.routes.length; i++) {
                                                                                        routes[i] = new google.maps.DirectionsRenderer({map: mapObj});
                                                                                        routes[i].setDirections(response);
                                                                                        routes[i].setRouteIndex(i);
                                                                                    }
                                                                                } else {
                                                                                    window.alert('Directions request failed due to ' + status);
                                                                                }
                                                                            });
                                                                        }
                                                                    }
                                                                    function calculateRoute(distMatrixService, transport) {
                                                                        if (a && b) {
                                                                            var origin = document.getElementById('orig').value;
                                                                            var destination = document.getElementById('dest').value;
                                                                            var startTime = document.getElementById('sTime').value;
                                                                            var durID = transport + 'Dur';
                                                                            var depID = transport + 'Dep';
                                                                            distMatrixService.getDistanceMatrix({
                                                                                origins: [origin],
                                                                                destinations: [destination],
                                                                                travelMode: google.maps.TravelMode[transport],
                                                                                avoidHighways: false,
                                                                                avoidTolls: false
                                                                            }, callback
                                                                                    );
                                                                            function callback(response, status) {
                                                                                var getDur = document.getElementById("getDur");
                                                                                var getDist = document.getElementById("getDist");
                                                                                var getDep = document.getElementById("sTime").value;
                                                                                var strDep = getDep.split(":", 2);
                                                                                var hoursDep = parseInt(strDep[0]);
                                                                                var minutesDep = parseInt(strDep[1]);
                                                                                if (status === "OK") {
                                                                                    getDur.value = response.rows[0].elements[0].duration.text;
                                                                                    if (minutesDep < 0) {
                                                                                        hoursDep--;
                                                                                        minutesDep = minutesDep + 60;
                                                                                    }
                                                                                    
                                                                                    var duration = response.rows[0].elements[0].duration.value;
                                                                                    var hoursDur = duration/3600;
                                                                                    var checkHours = hoursDur.toFixed(0);
                                                                                    if(hoursDur < checkHours){
                                                                                        hoursDur = hoursDur - 1;
                                                                                    }
                                                                                    
                                                                                    hoursDur = hoursDur.toFixed(0);
                                                                                    var minutesDur = duration/60;
                                                                                    minutesDur = minutesDur.toFixed(0);
                                                                                    
                                                                                    if(minutesDur>60){
                                                                                        minutesDur = minutesDur - 60;
                                                                                    }
                                                                                    hoursDep = hoursDep - hoursDur;
                                                                                    minutesDep = minutesDep - minutesDur;
                                                                                    if (minutesDep < 0) {
                                                                                        hoursDep = hoursDep - 1;
                                                                                        minutesDep = minutesDep + 60;
                                                                                    }
                                                                                    var midnight;
                                                                                    if(hoursDep<0){
                                                                                        hoursDep = hoursDep + 12;
                                                                                        midnight = " PM";
                                                                                    } else if(hoursDep>12){
                                                                                        hoursDep = hoursDep - 12;
                                                                                        midnight = " PM";
                                                                                    }else{
                                                                                        midnight = " AM";
                                                                                    }
                                                                                    var departure = "Leave at " + hoursDep + "." + minutesDep + midnight;
                                                                                    //document.getElementById('distM').innerHTML = text;
                                                                                    ////document.getElementById("getDur").value = getDur;
                                                                                    ////document.getElementById("getDist").value = getDist;
                                                                                    document.getElementById(durID).innerHTML = getDur.value;
                                                                                    document.getElementById(depID).innerHTML = departure;
                                                                                    //                                                                getDist.value = response.rows[0].elements[0].distance.text;
                                                                                    //                                                                //                                                                getDur.value = response.rows[0].elements[0].duration.text;
                                                                                } else {
                                                                                    alert("Error: " + status);
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    
                                                                    $('input#mark1').change(function () {
                                                                        if ($(this).prop('checked')) {
                                                                            $('input#mark2').prop('checked', false);
                                                                        }
                                                                    });
                                                                    $('input#mark2').change(function () {
                                                                        if ($(this).prop('checked')) {
                                                                            $('input#mark1').prop('checked', false);
                                                                        }
                                                                    });
                                                                    //                                            }); // tutup JQuery    
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
                                                                                                                                        if (n === 0) {
                                                                                                                                            document.getElementById("prevBtn").style.display = "none";
                                                                                                                                        } else {
                                                                                                                                            document.getElementById("prevBtn").style.display = "inline";
                                                                                                                                        }
                                                                                                                                        if (n === (x.length - 1)) {
                                                                                                                                            document.getElementById("nextBtn").innerHTML = "Submit";
                                                                                                                                        } else {
                                                                                                                                            document.getElementById("nextBtn").innerHTML = "Next";
                                                                                                                                        }
                                                                                                                                        //... and run a function that will display the correct step indicator:
                                                                                                                                        fixStepIndicator(n);
                                                                                                                                    }
                                                                                                                                    function nextPrev(n) {
                                                                                                                                        calculateRoute(distMatrixService, "DRIVING");
                                                                                                                                        calculateRoute(distMatrixService, "WALKING");
                                                                                                                                        calculateRoute(distMatrixService, "BICYCLING");
                                                                                                                                        calculateRoute(distMatrixService, "TRANSIT");
                                                                                                                                        // This function will figure out which tab to display
                                                                                                                                        var x = document.getElementsByClassName("tab");
                                                                                                                                        // Exit the function if any field in the current tab is invalid:
                                                                                                                                        if (n === 1 && !validateForm())
                                                                                                                                            return false;
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
                                                                                                                                        if (currentTab === 2) {
                                                                                                                                            calculateRoute(distMatrixService, 'DRIVING');
                                                                                                                                            //calculateRoute(distMatrixService,'WALKING');
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    function validateForm() {
                                                                                                                                        // This function deals with validation of the form fields
                                                                                                                                        var x, y, i, valid = true;
                                                                                                                                        x = document.getElementsByClassName("tab");
                                                                                                                                        y = x[currentTab].getElementsByTagName("input");
                                                                                                                                        // A loop that checks every input field in the current tab:
                                                                                                                                        for (i = 0; i < y.length; i++) {
                                                                                                                                            // If a field is empty...
                                                                                                                                            if (y[i].value === "") {
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
                                                                                                                                                                                                        <!--modal route-->
                                                                                                                                                                                                        <script>
                                                                                                                                                                                                            // Get the modal
                                                                                                                                                                                                            var modal = document.getElementById('myModal');
                                                                                                                                                                                                            // Get the button that opens the modal
                                                                                                                                                                                                            var btn = document.getElementById("myBtn");
                                                                                                                                                                                                            // Get the <span> element that closes the modal
                                                                                                                                                                                                            var span = document.getElementsByClassName("close")[0];
                                                                                                                                                                                                            // When the user clicks the button, open the modal 
                                                                                                                                                                                                            btn.onclick = function () {
                                                                                                                                                                                                                modal.style.display = "block";
                                                                                                                                                                                                            };
                                                                                                                                                                                                            // When the user clicks on <span> (x), close the modal
                                                                                                                                                                                                            span.onclick = function () {
                                                                                                                                                                                                                modal.style.display = "none";
                                                                                                                                                                                                            };
                                                                                                                                                                                                            // When the user clicks anywhere outside of the modal, close it
                                                                                                                                                                                                            window.onclick = function (event) {
                                                                                                                                                                                                                if (event.target === modal) {
                                                                                                                                                                                                                    modal.style.display = "none";
                                                                                                                                                                                                                }
                                                                                                                                                                                                            };
                                                                                                                                                                                                                                                                                                                                                                                                                </script>
            </div>
        </div>
    </body>
</html>