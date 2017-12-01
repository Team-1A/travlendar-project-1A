<%-- 
    Document   : test map
    Created on : Nov 26, 2017, 11:44:05 AM
    Author     : Fadhil
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Event</title>
        <style>
            #map{
                width: 100%;
                height: 500px;
                border: 1px solid #a0a0a0;
            }
        </style>
        <!-- Google Maps JS API -->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDkmRXiWxa2lmWdsxjcqahurk8g_rtHM1s"></script>

        <!-- JQuery Library -->
        <script src="http://code.jquery.com/jquery-latest.min.js"></script> 

        <!-- GMaps Library -->
        <script src="gmaps.js"></script>
    </head>
    <link rel="stylesheet" type="text/css" href="map.css">
    <body>
        <h1>Test Map</h1>
        <form name="form" action="" method="POST" id="geocoding_form">
            <table border="1">
                <thead>
                    <tr>
                        <th>GMAPS</th>
                        <th></th>
                        <th></th>
                        <th>Gunakan Klik</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Lokasi awal : </td>
                        <td><input type="text" id="orig" size="50" name="orig" /></td>
                        <td><input type="submit" value="Search" name="searchorig" /></td>
                        <td><label class="switch">
                                <input type="checkbox" id="mark1">
                                <span class="slider round"></span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>Lokasi tujuan : </td>
                        <td><input type="text" id="dest" size="50" name="dest"/></td>
                        <td><input type="submit" value="Search" name="seachdest" /></td>
                        <td><label class="switch">
                                <input type="checkbox" id="mark2">
                                <span class="slider round"></span>
                            </label>
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
        <form name="form" action="${pageContext.request.contextPath}/LokasiController" method="POST">
            <input type="Hidden" id="getOrig" name="Orig">
            <input type="Hidden" id="getDest" name="Dest">
            <input type="Hidden" id="getDist" name="Dist">
            <input type="Hidden" id="lat1" name="marker1_lat">
            <input type="Hidden" id="lng1" name="marker1_lng">
            <input type="Hidden" id="lat2" name="marker2_lat">
            <input type="Hidden" id="lng2" name="marker2_lng">
            <input type="submit" value="Submit" name="submit" />
        </form>
        <div id="map">Maps Event</div>
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
        <div class="row">
            <ul id="steps"></ul>
        </div>
    </body>
</html>
