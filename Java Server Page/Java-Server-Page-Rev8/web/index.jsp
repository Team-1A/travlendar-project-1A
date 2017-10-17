<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Travner : Your Travel Partner</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS-->
        <link rel="shortcut icon" type="image/png" href="icon/TravnerLogoClz.png" >
        <link rel="stylesheet" href="css/style.css">
        <link href="css/fullcalendar.min.css" rel="stylesheet">
        <link href="css/fullcalendar.print.min.css" rel="stylesheet" media="print">
         <link rel="stylesheet" type="text/css" href="css/responsive.css">
         <link rel="stylesheet" type="text/css" href="css/popup.css">
         <!-- JAVASCRIPT-->
        <script type="text/javascript" src="js/popup.js"></script>
        <script type="text/javascript" src="js/moment.min.js"></script>
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/fullcalendar.min.js"></script>
		</head>
<!--script calendar-->
<script>
  $(document).ready(function() {

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
      events: [

        {
          title: 'Kegiatan di Bandara',
          start: '2017-09-19T04:30:00',
          end: '2017-09-19T16:10:00'
        },

		{
          title: 'Sampai di Bandara Kendari',
          start: '2017-09-19T11:10:00',
          end: '2017-09-19T11:30:00'
        },

		{
          title: 'Pertemuan dengan Departement Agama',
          start: '2017-09-19T12:00:00',
          end: '2017-09-19T15:15:00'
        },

		{
          title: 'Makan Sore',
          start: '2017-09-19T15:30:00',
          end: '2017-09-19T16:30:00'
        }
      ]
    });

  });

</script>
<body>
<!--judul-->
  <div id="header"><!--header-->
    <div class="logo"><!--logo Travner-->
      <a href="index.jsp"><img src="css/logo.png " width="90px" height="35px"></a>
    </div>
</div>

<a class="mobile">MENU</a>

<!--sidebar-->
 <div class="tab">
    <button class="tablinks" onclick="openPages(event, 'My Schedule')" id="defaultOpen">My Schedule<img src="icon/schedule.svg" ></button>
    <button class="tablinks" onclick="openPages(event, 'Calendar')">Calendar<img src="icon/Calendar.svg" ></button>
    <button class="tablinks" onclick="openPages(event, 'Travel_Data')">Travel Data<img src="icon/travel data.svg" ></button>
</div>

<!--isi dari sidebar-->

<!--My Schedule-->
<div id="My Schedule" class="tabcontent">
    <div class="content">
      <div id="box">

      <div class="box-panel"><!--Isi Kotak-->
        <div class="menu_atas"><!--menu bar-->
          <div class="menunya2"><!--content menu bar-->
            <a href="create_schedule.jsp">Create Schedule</a>
        </div>
      </div>
     </div>

     <div class="box-panel"><!--isi box-->

                        <div id="div2_schedule"><!--field table schedule-->
                         <table id="table2_schedule"><!--table schedule-->
                          <!--isi table schedule-->
                          <tr>
                           <th><a href="detail_schedule.jsp">16 September 2017</a></th>
                           <th> </th>
                           <th> </th>
                           <th> </th>
                           <th> </th>
                            <th>
                                <!--Modal Delete-->
                              <div onclick="document.getElementById('id01').style.display='block'" style="width:auto;"><img src="icon/ExitIcon.svg"></div>

                              <div id="id01" class="modal">

                              <form class="modal-content animate" action="/action_page.php">
                              <div class="imgcontainer">


                              <div class="container">
                              <label><b>SCHEDULE DELETION</b></label>

                             <label><p>Are you sure want to delete it?</p></label>

                            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Yes</button>
                          <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">No</button>

                              </th>
                          </tr>

                           <tr>
                           <th><a href="detail_schedule.jsp">10 November 2017</a></th>
                           <th> </th>
                           <th> </th>
                           <th> </th>
                           <th> </th>
                            <th>
                                <!--Modal Delete-->
                              <div onclick="document.getElementById('id01').style.display='block'" style="width:auto;"><img src="icon/ExitIcon.svg"></div>

                              <div id="id01" class="modal">

                              <form class="modal-content animate" action="/action_page.php">
                              <div class="imgcontainer">


                              <div class="container">
                              <label><b>SCHEDULE DELETION</b></label>

                             <label><p>Are you sure want to delete it?</p></label>

                            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Yes</button>
                          <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">No</button>

                              </th>
                          </tr>

                           <tr>
                           <th><a href="detail_schedule.jsp">13 Desember 2017</a></th>
                           <th> </th>
                           <th> </th>
                           <th> </th>
                           <th> </th>
                            <th>
                                <!--Modal Delete-->
                              <div onclick="document.getElementById('id01').style.display='block'" style="width:auto;"><img src="icon/ExitIcon.svg"></div>

                              <div id="id01" class="modal">

                              <form class="modal-content animate" action="/action_page.php">
                              <div class="imgcontainer">


                              <div class="container">
                              <label><b>SCHEDULE DELETION</b></label>

                             <label><p>Are you sure want to delete it?</p></label>

                            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Yes</button>
                          <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">No</button>

                              </th>
                          </tr>

                           <tr>
                           <th><a href="detail_schedule.jsp">15 Desember 2017</a></th>
                           <th> </th>
                           <th> </th>
                           <th> </th>
                           <th> </th>
                            <th>
                                <!--Modal Delete-->
                              <div onclick="document.getElementById('id01').style.display='block'" style="width:auto;"><img src="icon/ExitIcon.svg"></div>

                              <div id="id01" class="modal">

                              <form class="modal-content animate" action="/action_page.php">
                              <div class="imgcontainer">


                              <div class="container">
                              <label><b>SCHEDULE DELETION</b></label>

                             <label><p>Are you sure want to delete it?</p></label>

                            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Yes</button>
                          <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">No</button>

                              </th>
                          </tr>

                           <tr>
                           <th><a href="detail_schedule.jsp">18 Desember 2017</a></th>
                           <th> </th>
                           <th> </th>
                           <th> </th>
                           <th> </th>
                            <th>
                                <!--Modal Delete-->
                    <div onclick="document.getElementById('id01').style.display='block'" style="width:auto;"><img src="icon/ExitIcon.svg"></div>

                              <div id="id01" class="modal">

                              <form class="modal-content animate" action="/action_page.php">
                              <div class="imgcontainer">


                              <div class="container">
                              <label><b>SCHEDULE DELETION</b></label>

                             <label><p>Are you sure want to delete it?</p></label>

                            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Yes</button>
                          <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">No</button>

                              </th>
                          </tr>

                           <tr>
                               <!--Modal Delete-->
                           <th><a href="detail_schedule.jsp">20 Desember 2017</a></th>
                           <th> </th>
                           <th> </th>
                           <th> </th>
                           <th> </th>
                            <th>
                              <div onclick="document.getElementById('id01').style.display='block'" style="width:auto;"><img src="icon/ExitIcon.svg"></div>

                              <div id="id01" class="modal">

                              <form class="modal-content animate" action="/action_page.php">
                              <div class="imgcontainer">


                              <div class="container">
                              <label><b>SCHEDULE DELETION</b></label>

                             <label><p>Are you sure want to delete it?</p></label>

                            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Yes</button>
                          <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">No</button>

                              </th>
                          </tr>

                           <tr>
                               <!--Modal Delete-->
                           <th><a href="detail_schedule.jsp">25 Desember 2017</a></th>
                           <th> </th>
                           <th> </th>
                           <th> </th>
                           <th> </th>
                            <th>
                                <!--Modal Delete-->
                              <div onclick="document.getElementById('id01').style.display='block'" style="width:auto;"><img src="icon/ExitIcon.svg"></div>

                              <div id="id01" class="modal">

                              <form class="modal-content animate" action="/action_page.php">
                              <div class="imgcontainer">


                              <div class="container">
                              <label><b>SCHEDULE DELETION</b></label>

                             <label><p>Are you sure want to delete it?</p></label>

                            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Yes</button>
                          <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">No</button>

                              </th>
                          </tr>

                          </table>
                        </div>

        </div>
      </div>
    </div>
  </div>
</div>



<div id="Calendar" class="tabcontent">
<!--Field-->
<div class="content">
  <div id="box">
    <div class="box-top">Calendar</div>
      <div class="box-panel">
       <div id='calendar'></div>
     </div>
    </div>
  </div>
</div>


<div id="Travel_Data" class="tabcontent"><!--menuju page Travel Data -->
 <div class="content">
  <div id="box"><!--kotak-->
    <div class="box-top">Travel Data</div><!--Judul kotak-->
       <div class="box-panel"><!--Isi Kotak-->
          <div class="menu_atas"><!--Menu bar-->

        <div class="menunya"><!-- konten dari menu bar-->
            <div class="point"><!--pointer menu bar-->
              <a href="location.jsp " id="defaultOpen" style="color: white"><img src="icon/location.svg"><br>
                  <span>Location</span></a><!--Menu Bar (Location)-->
            </div>
        </div>

        <div class="menunya">
                <a href="Distance_management.jsp " id="defaultOpen" style="color: white"><img src="icon/distance.svg"><br>
                  <span>Distance Management</span></a><!--Menu Bar (Distance Management)-->
           </div>
         </div>

    <div class="kiri"><!--field kiri-->


                        <div id="div2_travel"><!--field tabel lokasi-->
                         <table id="table2_travel"><!--isi tabel lokasi-->

                            <tr>
                            <th>Rumah Fatmawati</th>
                            <th></th>
                            <th></th>
                            <th> </th>

                            <th>
                                <!--Modal Delete Lokasi-->
                              <button onclick="document.getElementById('id02').style.display='block'" style="width:auto;"><img src="icon/trash.png"></button><img src="icon/settings.png">

                              <div id="id02" class="modal">

                              <form class="modal-content animate" action="/action_page.php">
                              <div class="imgcontainer">


                              <div class="container">
                              <label><b>LOCATION DELETION</b></label>

                             <label><p>Are you sure want to delete it?</p></label>

                            <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Yes</button>
                          <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">No</button>
</form>

                              </th>
                          </tr>

                          <tr>
                            <th>Bandara Soekarno-Hatta, Tangerang</th>
                            <th></th>
                            <th></th>
                            <th></th>


                            <th>
                                <!--Modal Delete Lokasi-->
                              <button onclick="document.getElementById('id02').style.display='block'" style="width:auto;"><img src="icon/trash.png"></button><img src="icon/settings.png">

                              <div id="id02" class="modal">

                              <form class="modal-content animate" action="/action_page.php">
                              <div class="imgcontainer">


                              <div class="container">
                              <label><b>LOCATION DELETION</b></label>

                             <label><p>Are you sure want to delete it?</p></label>

                            <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Yes</button>
                          <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">No</button>
</form>

                              </th>
                          <tr>
                            <th>Bandara Haluoleo, Kadia</th>
                            <th></th>
                            <th></th>
                            <th></th>

                            <th>
                                <!--Modal Delete Lokasi-->
                              <button onclick="document.getElementById('id02').style.display='block'" style="width:auto;"><img src="icon/trash.png"></button><img src="icon/settings.png">

                              <div id="id02" class="modal">

                              <form class="modal-content animate" action="/action_page.php">
                              <div class="imgcontainer">


                              <div class="container">
                              <label><b>LOCATION DELETION</b></label>

                             <label><p>Are you sure want to delete it?</p></label>

                            <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Yes</button>
                          <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">No</button>
</form>

                              </th>


                          <tr>
                            <th>Hotel "X" Kadia</th>
                            <th></th>
                            <th></th>
                            <th></th>

                            <th>
                                <!--Modal Delete Lokasi-->
                              <button onclick="document.getElementById('id02').style.display='block'" style="width:auto;"><img src="icon/trash.png"></button><img src="icon/settings.png">

                              <div id="id02" class="modal">

                              <form class="modal-content animate" action="/action_page.php">
                              <div class="imgcontainer">


                              <div class="container">
                              <label><b>LOCATION DELETION</b></label>

                             <label><p>Are you sure want to delete it?</p></label>

                            <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Yes</button>
                          <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">No</button>
</form>
                              </th>

                              <tr>
                            <th>Restoran, Poasia</th>
                            <th></th>
                            <th></th>
                            <th></th>

                            <th>
                                <!--Modal Delete Lokasi-->
                              <button onclick="document.getElementById('id02').style.display='block'" style="width:auto;"><img src="icon/trash.png"></button><img src="icon/settings.png">

                              <div id="id02" class="modal">

                              <form class="modal-content animate" action="/action_page.php">
                              <div class="imgcontainer">


                              <div class="container">
                              <label><b>LOCATION DELETION</b></label>

                             <label><p>Are you sure want to delete it?</p></label>

                            <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Yes</button>
                          <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">No</button>
</form>
                              </th>

                          </table>
                        </div>


    </div>

  <div class="kanan"><!--Field Kanan-->
    <form action="#" class="location_form" method="post"><!--add location-->
      <h2>Add Location</h2>
          <span>Place's Name</span><br><!--Form Place name-->
          <input class="kotak_lo" type="text"  name="#" placeholder="Place's Name">

          <span>Address</span><br><!--Form Address-->
          <input class="kotak_lo" type="text"  name="#" placeholder="Address">
           <input class="add_button" type="submit" name="#" value="Add"><!--add Button-->


            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
 </div>
</div>
<script>
      function openPages(evt, pageName) {
      // Declare all variables
      var i, tabcontent, tablinks;

      // Get all elements with class="tabcontent" and hide them
      tabcontent = document.getElementsByClassName("tabcontent");
      for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }

      // Get all elements with class="tablinks" and remove the class "active"
      tablinks = document.getElementsByClassName("tablinks");
      for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

      // Show the current tab, and add an "active" class to the link that opened the tab
      document.getElementById(pageName).style.display = "block";
      evt.currentTarget.className += " active";

  }
  // Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
    </body>
</html>
