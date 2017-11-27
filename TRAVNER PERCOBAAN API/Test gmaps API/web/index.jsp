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
    <body>
        <h1>Test Map</h1>
        <form name="form" action="/LokasiController" method="POST" id="geocoding_form">
            <table border="1">
                <thead>
                    <tr>
                        <th>GMAPS</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Lokasi awal : </td>
                        <td><input type="text" id="orig" size="50" name="orig" /></td>
                        <td><input type="submit" value="Search" name="searchorig" /></td>
                    </tr>
                    <tr>
                        <td>Lokasi tujuan : </td>
                        <td><input type="text" id="dest" size="50" name="dest"/></td>
                        <td><input type="submit" value="Search" name="seachdest" /></td>
                    </tr>
                    <tr>
                        <td>Jarak : </td>
                        <td><input type="text" id="dist" size="50" /></td>
                    </tr>
                </tbody>
            </table>
            <input type="reset" value="Clear" name="clear" />
            <input type="submit" value="Submit" name="submit" />
        </form>
        <div id="map">Maps Event</div>
        <script>
          // JQuery
            $(document).ready( function(){  // Ketika web udah siap
//		prettyPrint();
                var marker1, marker2;
                var a = false, b = false;
                var mapObj = new GMaps({
                    el: '#map',
                    lat: -6.914744,
                    lng: 107.609810,
                    zoom: 14
                }); // tutup instansiasi gmaps
                $('#geocoding_form').submit(function(e){
                    e.preventDefault();
                    GMaps.geocode({
                        address: $('#orig').val().trim(),
                        callback: function(results, status){
                            if(status=='OK'){
                                var latlng = results[0].geometry.location;
                                mapObj.setCenter(latlng.lat(), latlng.lng());
                                if(a){
                                    mapObj.removeMarker(marker1);
                                }
                                marker1 = mapObj.addMarker({
                                    lat: latlng.lat(),
                                    lng: latlng.lng()
                                });
                                a = true;
                            }
                        }
                    });
		});
                $('#geocoding_form').submit(function(e){
                    e.preventDefault();
                    GMaps.geocode({
                        address: $('#dest').val().trim(),
                        callback: function(results, status){
                            if(status=='OK'){
                                var latlng = results[0].geometry.location;
                                mapObj.setCenter(latlng.lat(), latlng.lng());
                                if(b){
                                    mapObj.removeMarker(marker2);
                                }
                                marker2 = mapObj.addMarker({
                                    lat: latlng.lat(),
                                    lng: latlng.lng()
                                });
                                b = true;
                            }
                        }
                    });
		});
//                click: function(results, status){
//                    if(status=='OK'){
//                        var latlng = results[0].geometry.location;
//                        mapObj.setCenter(latlng.lat(), latlng.lng());
//
//                        if(a){
//                            mapObj.removeMarker(m1);
//                            mapObj.removePolylines();
//                        }
//
//                        m1 = mapObj.addMarker({
//                            lat: latlng.lat(),
//                            lng: latlng.lng()
//                        });
//
//                        m1pos = m1.getPosition();
//
//                        mapObj.drawRoute({
//                            origin: [m1pos.lat(), m1pos.lng()],
//                            destination: [m2pos.lat(), m2pos.lng()],
//                            travelMode: 'driving',
//                            strokeColor: '#131540',
//                            strokeOpacity: 0.6,
//                            strokeWeight: 6
//                        });
//
//                        var origin = new google.maps.LatLng(m1pos.lat(),m1pos.lng()),
//                        destination = new google.maps.LatLng(m2pos.lat(),m2pos.lng()),
//                        service = new google.maps.DistanceMatrixService();
//
//                        service.getDistanceMatrix(
//                            {
//                                origins: [origin],
//                                destinations: [destination],
//                                travelMode: google.maps.TravelMode.DRIVING,
//                                avoidHighways: false,
//                                avoidTolls: false
//                            }, 
//                            callback
//                        );
//
//                        function callback(response, status) 
//                        {
//                            var orig = document.getElementById("orig"),
//                            dest = document.getElementById("dest"),
//                            dist = document.getElementById("dist");
//
//                            if(status=="OK") {
//                                dest.value = response.destinationAddresses[0];
//                                orig.value = response.originAddresses[0];
//                                dist.value = response.rows[0].elements[0].distance.text;
//                            } 
//                            else {
//                                alert("Error: " + status);
//                            }
//                        }
//                    }
//                };
            }); // tutup JQuery    
        </script>
    </body>
</html>
