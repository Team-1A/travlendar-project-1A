<%-- 
    Document   : usergide
    Created on : Dec 10, 2017, 7:45:38 AM
    Author     : netspv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
    <head>
        <title>User Guide</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">

        <!-- Google Maps JS API -->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDkmRXiWxa2lmWdsxjcqahurk8g_rtHM1s"></script>

        <!-- JQuery Library -->
        <script src="http://code.jquery.com/jquery-latest.min.js"></script> 

        <!-- GMaps Library -->
        <script src="Test_Gmaps_API/gmaps.js"></script>

        <link rel="stylesheet" type="text/css" href="css/responsive_add_activity.css">
        <link href="css/fullcalendar.min.css" rel="stylesheet">
        <link href="css/fullcalendar.print.min.css" rel="stylesheet" media="print">
        <link rel="stylesheet" type="text/css" href="css/home.css">
 
        
        <script type="text/javascript" src="js/moment.min.js"></script>
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/fullcalendar.min.js"></script>
        <script type="text/javascript" src="js/accordion_activity.js"></script>
        <script type="text/javascript" src="js/index.js"></script>
    </head>

    <body>
        <div id="main">
            <div id="mySidenav" class="sidenav">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                <a href="Home.jsp"><img src="css/Assets/home.svg" style="width: 30px; height: 30px;"></a>
                <a href="Event_List.jsp"><img src="css/Assets/list.svg"style="width: 30px; height: 30px;"></a>
                <a href="userguide.jsp"><img src="css/Assets/help.svg"style="width: 30px; height: 30px;"></a>
            </div>
            <div id="header"><!--header-->
                <span style="font-size:30px;cursor:pointer; float:left;margin: 10px; color:white;" onclick="openNav()">&#9776;</span>
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

                                    </div>
                                    <br>
                                    </div>
                                    <div class="box">
            <p><b>Start Page Web</b><br></br>
                    Sign In<br></br>
                        Untuk log in user sebelum memasuki page Travner (Calendar View dan Add Activity).<br></br>
                    Sign Up<br></br>
                        Pendaftaran awal untuk menjadi user pada Web Travner.<br></br> 
                    Forget Password<br></br>
                        Apabila user lupa password saat akan log in, dengan user mengklik forget password user dapat mengkonfirmasikannya melalui e-mail.<br></br>
            <br></br>
            <b>Calendar View</b><br></br>
            1.Today<br></br>
                Untuk menampilkan kalender hari ini.<br></br>
            2.Month<br></br>
                Untuk menampilkan kalender per bulan.<br></br>
            3.Week<br></br>
                Untuk menampilkan kalender per minggu.<br></br>
            4.Day<br></br>
                Untuk menampilkan kalender per hari.<br></br>
            <br></br>
            <b>Page Add Activity</b><br></br>
            1.Add Activity<br></br>
                Untuk menginputkan kegiatan yang akan Anda recanakan.<br></br>
            2.Title<br></br>
                Untuk menginputkan nama kegiatan yang akan Anda rencanakan.<br></br>
            3.Time of Activity (Date and Time)<br></br>
                Untuk menginputkan (Tanggal dan Waktu (Jam:Menit:Detik) dari kegiatan yang akan Anda rencanakan.<br></br>
            4.Default location <br></br>
                Untuk mendeteksi lokasi kita berada saat menginputkan plan kegiatan Anda.<br></br>
            5.Find Activity<br></br>
                Untuk mencari aktivitas yang ingin kita cari dari berbagai aktivitas yang telah kita inputkan.<br></br>
            6.View Activity<br></br>
                Untuk melihat berbagai aktivitas yang telah kita inputkan.<br></br>
            <br></br>
            <b>Location</b><br></br>
            1.Start Location<br></br>
                Untuk menginputkan lokasi awal dari tempat Anda berada sebelum menuju ke tempat kegiatan.<br></br>
            2.End Location<br></br>
                Untuk menginputkan lokasi akhir (lokasi tujuan/lokasi kegiatan).<br></br>
            3.Recommendation<br></br>
                Untuk menampilkan hasil rekomendasi data aktivitas yang telah diinputkan dari system, dapat merekomendasikan moda transportasi, estimasi waktu perjalanan,  rute, dan waktu keberangkatan. Dengan cara mengklik salah satu moda transportasi yang akan digunakan, nanti akan muncul berbagai rekomendasinya.<br></br>
            4.Rute<br></br>
                Ketika back langsung menyimpan rute yang telah terdeteksi.<br></br>
            5.Spare Time<br></br>
                Waktu luang antara waktu sampai pada lokasi tujuan dengan waktu mulainya aktivitas yang akan Anda rencankan.<br></br>
            <br></br>
            <b>Recommendation</b><br></br>
            1.Transportation Mode<br></br>
                Moda transportasi yang direkomendasikan oleh system untuk menuju ke lokasi tujuan.<br></br>
            2.Estimation Mode<br></br>
                Estimasi waktu perjalanan untuk menuju ke lokasi tujuan.<br></br>
            3.Route<br></br>
                Rute yang mungkin untuk dilalui oleh user dari lokasi awal menuju lokasi tujuan sesuai dengan moda transportasi yang akan digunakan. <br></br>
            <br></br>
            </p>    
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
                                                click: function (e) {
                                                    if ($('input#mark1').is(':checked')) {
                                                        if (a) {
                                                            mapObj.removeMarker(marker1);
                                                            mapObj.removePolylines();
                                                        }

                                                        marker1 = mapObj.addMarker({
                                                            lat: e.latLng.lat(),
                                                            lng: e.latLng.lng()
                                                        });

                                                        a = true;
                                                        marker1pos = marker1.getPosition();
                                                        $('input#mark1').prop('checked', false);

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

                                                    if ($('input#mark2').is(':checked')) {
                                                        if (b) {
                                                            mapObj.removeMarker(marker2);
                                                            mapObj.removePolylines();
                                                        }

                                                        marker2 = mapObj.addMarker({
                                                            lat: e.latLng.lat(),
                                                            lng: e.latLng.lng()
                                                        });

                                                        b = true;
                                                        marker2pos = marker2.getPosition();
                                                        $('input#mark2').prop('checked', false);

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
                                            if (n == 1 && !validateForm())
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

                                    <script>
                                        function openNav() {
                                            document.getElementById("mySidenav").style.width = "70px";
                                            document.getElementById("main").style.marginLeft = "70px";
                                            document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
                                        }

                                        function closeNav() {
                                            document.getElementById("mySidenav").style.width = "0";
                                            document.getElementById("main").style.marginLeft = "0";
                                            document.body.style.backgroundColor = "white";
                                        }
                                    </script>
                                    </div>
                                    </div>
                                    </body>
                                    </html>