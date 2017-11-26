<%-- 
    Document   : test map
    Created on : Nov 26, 2017, 11:44:05 AM
    Author     : Hydrolyze
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
        <h1>Hello World!</h1>
        <form name="form" action="/LokasiController" method="POST">
            <table border="1">
                <thead>
                    <tr>
                        <th>GMAPS</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Lokasi awal : </td>
                        <td><input type="text" id="startloc" size="50" /></td>
                        <td><input type="text" id="startlat" size="50" /></td>
                        <td><input type="text" id="startlng" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Lokasi tujuan : </td>
                        <td><input type="text" id="destinationloc" size="50" /></td>
                        <td><input type="text" id="destinationlat" size="50" /></td>
                        <td><input type="text" id="destinationlng" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Jarak : </td>
                        <td><input type="text" id="distance" size="50" /></td>
                    </tr>
                </tbody>
            </table>
            <input type="reset" value="Clear" name="clear" />
            <input type="submit" value="Submit" name="submit" />
        </form>
        <div id="map">Maps Event</div>
        <script>
//            $(document).ready()( function(){
                var marker1 = null, marker2 = null;
                var marker1pos, marker2pos;
                var a = false, b = true;
                var map = new GMaps({
                    el: '#map',
                    lat: 41.8902421, //latitude awal
                    lng: 12.4924991, //longitude awal
                    zoom: 15,
                    click: function(e) {
                        if (a) {
                            map.removeMarker((b) ? marker1 : marker2); //jika false, hapus marker dari lokasi sebelumnya
                            map.removePolylines(); //menghapus garis rute
                        }

                        if (b) {
                            //menempatkan marker
                            marker1 = map.addMarker({
                                lat: e.latLng.lat(),//latitude dari lokasi awal
                                lng: e.latLng.lng()//longitude dari lokasi awal
                                //icon: sourceIcon
                            });
                        marker1pos = marker1.getPosition();
                        } 
                        else {
                            //menempatkan marker
                            marker2 = map.addMarker({
                                lat: e.latLng.lat(),//latitude dari lokasi tujuan
                                lng: e.latLng.lng()//longitude dari lokasi tujuan
                                //icon: destinationIcon
                            });
                            marker2pos = marker2.getPosition();
                        }
                        // jika kedua marker sudah ditempatkan, langsung gambar rute
                        if (marker1 !== null && marker2 !== null) {
                            a = true;
                            //menggambar rute dari dua marker
                            map.drawRoute({
                                origin: [marker1pos.lat(), marker1pos.lng()], //lokasi awal
                                destination: [marker2pos.lat(), marker2pos.lng()],//lokasi tujuan
                                travelMode: 'driving', //bisa diganti menjadi 'walking' atau 'transit'
                                strokeColor: '#131540',
                                strokeOpacity: 0.6,
                                strokeWeight: 6
                            });
//                            
//                            $.ajax({
//                                type: "POST", // method post
//                                url: "json", // url controller
//                                dataType:'JSON',
//                             //   data: {listjson: JSON.stringify(listJson)},
//                                data: {latitude: marker2pos.lat(), longitude: marker2pos.lng(), desc: document.getElementById("desc").value},
//                                    async: false, // dikirim ketika semua beres
//                                    success: function(data){alert(data);},
//                                    failure: function(errMsg) {
//                                        alert(errMsg);
//                                    }
//                            });
                        }
                        b = !b;

                        var start = new google.maps.LatLng(marker1pos.lat(),marker1pos.lng()),
                        destination = new google.maps.LatLng(marker2pos.lat(),marker2pos.lng()),
                        service = new google.maps.DistanceMatrixService();

                        service.getDistanceMatrix(
                            {
                                origins: [marker1pos.lat(),marker1pos.lng()],
                                destinations: [marker2pos.lat(),marker2pos.lng()],
                                travelMode: google.maps.TravelMode.DRIVING,
                                avoidHighways: false,
                                avoidTolls: false
                            }, 
                            callback
                        );

                        function callback(response, status) {
                            var startloc = document.getElementById("startloc"),
                            startlat = document.getElementById("startlat"),
                            startlng = document.getElementById("startlng"),
                            destinationloc = document.getElementById("destinationloc"),
                            destinationlat = document.getElementById("destinationlat"),
                            destinationlng = document.getElementById("destinationlng"),
                            distance = document.getElementById("distance");

                            if(status=="OK") {
                                startloc.value = response.startAddresses[0];
                                startlat.value = response.startLatitude[0];
                                startlng.value = response.startLongitude[0];
                                destinationloc.value = response.destinationAddresses[0];
                                destinationlat.value = response.destinationLatitude[0];
                                destinationlng.value = response.destinationLongitude[0];
            //                    dest.value = response.destinationAddresses[0];
            //                    orig.value = response.originAddresses[0];
                                distance.value = response.rows[0].elements[0].distance.text;
                            } 
                            else {
                                alert("Error: " + status);
                            }
                        }
                    }
                });

                GMaps.geolocate({
                    success: function(position) {
                      map.setCenter(position.coords.latitude, position.coords.longitude);
                    },
                    error: function(error) {
                      alert('Geolocation failed: ' + error.message);
                    },
                    not_supported: function() {
                      alert("Your browser does not support geolocation");
                    }
                });
//            });
        </script>
    </body>
</html>
