<%-- 
    Document    : add_location.jsp
    Created on  : Oct 28, 2017, 10:45:27 PM
    Author      : Lucky Ramdani
    Editor      : Muhammad Fadhil
--%>

<%@page contentType="text/html" pageEncoding = "UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Add Location</title>
        <!-- Google Maps JS API -->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDkmRXiWxa2lmWdsxjcqahurk8g_rtHM1s"></script>

        <!-- JQuery Library -->
        <script src="http://code.jquery.com/jquery-latest.min.js"></script> 

        <!-- GMaps Library -->
        <script src="gmaps.js"></script>
    </head>
    <link rel="stylesheet" type="text/css" href="style.css">
    <body>
        <div id="mySidenav" class="sidenav">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <a href="#">About</a>
            <a href="#">Services</a>
            <a href="#">Clients</a>
            <a href="#">Contact</a>
        </div>
        <div id="main">
            <div class="header">
                <img src="css/Travner1.png" style="width: 80px; height: 30px; margin-left: 45%; margin-top: 10px; ">
            </div>
            <div class="search">
                <span style="font-size:30px; cursor:pointer; color: #3498DB; margin-left: 50px; float: left; " onclick="openNav()">&#9776;</span>
                <input type="text" id="search" onkeyup="" placeholder="Search" title="">
            </div>
            <div class="left">
                <div id="map">Maps Event</div>
                <div class="row">
                    <label for="loc_text">
                        <span style="font-size: 13px;"></span>
                    </label>
                </div>
                <div id="output"></div>
                <script>
                    // JQuery
                    $(document).ready(function ()  // Ketika web udah siap
                    {
                        //var listJson;
                        var m1 = null, m2 = null;
                        var m1pos, m2pos;
                        var corvo = false, attano = true;
                        var a = false, b = false;
                        var mapObj = new GMaps({
                            el: '#map',
                            lat: -6.914744,
                            lng: 107.609810,
                            zoom: 14,
                            click: function (e) {
                                if (corvo)
                                {
                                    mapObj.removeMarker((attano) ? m1 : m2);
                                    mapObj.removePolylines();
                                }

                                if (attano) {
                                    m1 = mapObj.addMarker({
                                        lat: e.latLng.lat(),
                                        lng: e.latLng.lng()//,
                                                //icon: sourceIcon
                                    });
                                    a = true;
                                    m1pos = m1.getPosition();
                                } else {
                                    m2 = mapObj.addMarker({
                                        lat: e.latLng.lat(),
                                        lng: e.latLng.lng()//,
                                                //icon: destinationIcon
                                    });
                                    b = true;
                                    m2pos = m2.getPosition();
                                }

                                // If two markers have been placed
                                if (m1 !== null && m2 !== null) {
                                    corvo = true;
                                    mapObj.drawRoute({
                                        origin: [m1pos.lat(), m1pos.lng()],
                                        destination: [m2pos.lat(), m2pos.lng()],
                                        travelMode: 'driving',
                                        strokeColor: '#131540',
                                        strokeOpacity: 0.6,
                                        strokeWeight: 6
                                    });
                                    //$('#trace_route').prop('disabled', false);
                                    //listJson = [m1.getPosition(), m2.getPosition()];

                                    $.ajax({
                                        type: "POST", // method post
                                        url: "json", // url controller
                                        dataType: 'JSON',
                                        //   data: {listjson: JSON.stringify(listJson)},
                                        data: {latitude: m2pos.lat(), longitude: m2pos.lng(), desc: document.getElementById("desc").value},
                                        async: false, // dikirim ketika semua beres
                                        success: function (data) {
                                            alert(data);
                                        },
                                        failure: function (errMsg) {
                                            alert(errMsg);
                                        }
                                    });
                                }

                                attano = !attano;

                                var origin = new google.maps.LatLng(m1pos.lat(), m1pos.lng()),
                                        destination = new google.maps.LatLng(m2pos.lat(), m2pos.lng()),
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
                                    dist = document.getElementById("dist");

                                    if (status == "OK") {
                                        dest.value = response.destinationAddresses[0];
                                        orig.value = response.originAddresses[0];
                                        dist.value = response.rows[0].elements[0].distance.text;
                                    } else {
                                        alert("Error: " + status);
                                    }
                                }
                            } // tutup fungsi e ketika klik
                        }); // tutup instansiasi gmaps
                        $('#geocoding_form').submit(function (e) {
                            e.preventDefault();
                            GMaps.geocode({
                                address: $('#orig').val().trim(),
                                callback: function (results, status) {
                                    if (status == 'OK') {
                                        var latlng = results[0].geometry.location;
                                        mapObj.setCenter(latlng.lat(), latlng.lng());

                                        if (a) {
                                            mapObj.removeMarker(m1);
                                            mapObj.removePolylines();
                                        }

                                        m1 = mapObj.addMarker({
                                            lat: latlng.lat(),
                                            lng: latlng.lng()
                                        });

                                        m1pos = m1.getPosition();

                                        mapObj.drawRoute({
                                            origin: [m1pos.lat(), m1pos.lng()],
                                            destination: [m2pos.lat(), m2pos.lng()],
                                            travelMode: 'driving',
                                            strokeColor: '#131540',
                                            strokeOpacity: 0.6,
                                            strokeWeight: 6
                                        });

                                        var origin = new google.maps.LatLng(m1pos.lat(), m1pos.lng()),
                                                destination = new google.maps.LatLng(m2pos.lat(), m2pos.lng()),
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
                                                    dist = document.getElementById("dist");

                                            if (status == "OK") {
                                                dest.value = response.destinationAddresses[0];
                                                orig.value = response.originAddresses[0];
                                                dist.value = response.rows[0].elements[0].distance.text;
                                            } else {
                                                alert("Error: " + status);
                                            }
                                        }
                                    }
                                }
                            });
                        });
                    }); // tutup JQuery
                </script>
            </div>
            <div class="right">
                <div id="geocoding_form">
                    <p><b>Initial Location</b></p>
                    <input id="orig" type="text"><button type="submit" class="button"></button>
                    <p><b>Destination</b></p>
                    <input id="dest" type="text" ><button type="submit" class="button"></button>
                    <p><b>Destination Place</b></p>
                    <input type="text" id="desc" value=""><button type="submit" class="button"></button>
                    <p><b>Distance</b></p>
                    <input id="dist" type="text">
                </div>

            </div>
        </div>
        <!--script untuk sidebar-->
        <script type="text/javascript">
            function openNav() {
                document.getElementById("mySidenav").style.width = "100px";
                document.getElementById("main").style.marginLeft = "100px";
            }

            function closeNav() {
                document.getElementById("mySidenav").style.width = "0";
                document.getElementById("main").style.marginLeft = "0";
            }
        </script>
    </body>
</html>