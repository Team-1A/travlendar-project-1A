<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding = "UTF-8"%>

<html>
    <head>
        <title>Travner</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS-->
        <link rel="shortcut icon" type="image/png" href="icon/TravnerLogoClz.png" >
        <link href="css/style.css" rel="stylesheet">
        <link href="css/fullcalendar.min.css" rel="stylesheet">
        <link href="css/fullcalendar.print.min.css" rel="stylesheet" media="print">
        <link rel="stylesheet" type="text/css" href="css/responsive.css">
        <link rel="stylesheet" type="text/css" href="css/popup.css">
        <!--Javascript-->
        <script type="text/javascript" src="js/popup.js"></script>
        <script type="text/javascript" src="js/moment.min.js"></script>
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/fullcalendar.min.js"></script>

    </head>
<!--Script Calendar-->
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
        },
      ]
    });

  });

</script>


<body>
<!--header-->
<div id="header">
  <div class="logo"><!--logo travner-->
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
      <div id="box"><!--Kotak-->
        <div class="box-top">My Schedule</div><!--Judul Kotak-->
          <div class="box-panel"><!--Isi Kotak-->
            <h2>Create Schedule</h2>
              <p>I want to create Schedule for :<p><!--Form Tanggal Schedule-->

              <input class="waktu"  type="text" name="Date" placeholder="Date" required>
              <input class="waktu" type="text" name="Month" placeholder="Month" required>
              <input class="waktu" type="text" name="Year" placeholder="Year" required>

              <a href="detail_schedule.jsp"><button  class="add_button">Finish</button></a><!--Finish Button-->
              <a href="index.jsp"><button  class="add_button">Back</button></a><!--Back button-->
              <div class="activity"><br><br><br></div><!--Activity-->
                  <div class="menunya2"><!--Add Activity Button-->
                   <a href="add_activity.jsp">Add Activity</a>
                  </div><br>


                        <div id="div2_create_schedule"><!--Field Tabel Schedule-->
                         <table id="table2_create_schedule"><!--tabel Schdule-->
                          <tr style= "border-bottom:4px solid white">
                              <!--Isi Tabel Lokasi-->
                              <th bgcolor="#B40404"></th>
                                 <th> Activity Name : Ke Bandara Soekarno Hatta<br>
                                    From : Rumah @Fatmawati<br>
                                    To : Bandara Soekarno-Hatta @Tangerang</th>
                                    <th></th>
                                    <th></th>
                                    <th></th>

                                 <!--Modal Delete Lokasi-->
                            <th>
                              <div onclick="document.getElementById('id01').style.display='block'" style="width:auto;">
                              <img src="icon/ExitIcon.svg"></div>
                                <a href="add_activity.jsp"><img src="icon/settings.png"></a>

                              <div id="id01" class="modal">

                              <form class="modal-content animate" action="/action_page.php">
                              <div class="imgcontainer">


                              <div class="container">
                              <label><b>ACTIVITY DELETION</b></label>

                             <label><p>Are you sure want to delete it?</p></label>

                            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Yes</button>
                          <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">No</button>

                              </th>
                          </tr>

                          <tr style= "border-bottom:4px solid white">
                              <!--Isi Tabel Lokasi-->
                              <th bgcolor="#B40404"></th>
                                 <th> Activity Name : Ke Bandara Haluoleo<br>
                                      From : Bandara Soekarno-Hatta @Tangerang<br>
                                      To : Bandara Haluoleo @Kadia </th>
                                 <th> </th>
                                 <th> </th>
                                 <th> </th>
                            <th>
                                <!--Modal Delete Lokasi-->
                              <div onclick="document.getElementById('id01').style.display='block'" style="width:auto;">
                                <img src="icon/ExitIcon.svg"></div>
                                <a href="add_activity.jsp"><img src="icon/settings.png"></a>

                              <div id="id01" class="modal">

                              <form class="modal-content animate" action="/action_page.php">
                              <div class="imgcontainer">


                              <div class="container">
                              <label><b>ACTIVITY DELETION</b></label>

                             <label><p>Are you sure want to delete it?</p></label>

                            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Yes</button>
                          <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">No</button>

                              </th>
                          </tr>

                          <tr style= "border-bottom:4px solid white">
                              <!--Isi Tabel Lokasi-->
                              <th bgcolor="#B43104"></th>
                                 <th>Activity Name : Hotel "X" @Kadia<br>
                                      From : Bandara Haluoleo, @Kadia<br>
                                      To : Hotel "X" @Kadia </th>
                                 <th> </th>
                                 <th> </th>
                                 <th> </th>
                            <th>
                                <!--Modal Delete Lokasi-->
                              <div onclick="document.getElementById('id01').style.display='block'" style="width:auto;">
                                <img src="icon/ExitIcon.svg"></div>
                                <a href="add_activity.jsp"><img src="icon/settings.png"></a>

                              <div id="id01" class="modal">

                              <form class="modal-content animate" action="/action_page.php">
                              <div class="imgcontainer">


                              <div class="container">
                              <label><b>ACTIVITY DELETION</b></label>

                             <label><p>Are you sure want to delete it?</p></label>

                            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Yes</button>
                          <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">No</button>

                              </th>
                          </tr>

                          <tr style= "border-bottom:4px solid white">
                              <!--Isi Tabel Lokasi-->
                              <th bgcolor="#B18904"></th>
                                 <th>Activity Name : Ke Restoran @Poasia<br>
                                      From : Hotel "X" @Kadia<br>
                                      To : Restoran @Poasia </th>
                                 <th> </th>
                                 <th> </th>
                                 <th> </th>
                            <th>
                                <!--Modal Delete Lokasi-->
                              <div onclick="document.getElementById('id01').style.display='block'" style="width:auto;">
                                <img src="icon/ExitIcon.svg"></div>
                                <a href="add_activity.jsp"><img src="icon/settings.png"></a>

                              <div id="id01" class="modal">

                              <form class="modal-content animate" action="/action_page.php">
                              <div class="imgcontainer">


                              <div class="container">
                              <label><b>ACTIVITY DELETION</b></label>

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
</div>

<!--Menuju Page Calendar-->
<div id="Calendar" class="tabcontent">
  <div class="content">
    <div id="box"><!--Kotak-->
      <div class="box-top">Calendar</div><!--Judul Kotak-->
    <div class="box-panel"><!--Isi Kotak-->
      <div id='calendar'></div><!--memanggil calendar-->
      </div>
    </div>
  </div>
</div>

<!--Menuju Page Travel Data-->
<div id="Travel_Data" class="tabcontent">
 <div class="content">
  <div id="box"><!--Kotak-->
    <div class="box-top">Travel Data</div><!--judul Kotak-->

     <div class="box-panel"><!--Isi Kotak-->
      <div class="menu_atas"><!--Menu bar-->

          <div class="menunya"><!--Isi dari menu bar-->
            <div class="point"><!--pointer Menu Bar-->
              <a href="location.jsp " id="defaultOpen" style="color: white"><img src="icon/location.svg"><br>
                  <span>Location</span></a><!--Menu Bar (Location)-->
            </div>
        </div>

        <div class="menunya"><!--Menu Bar (Distance Management)-->
                <a href="Distance_management.jsp " id="defaultOpen" style="color: white"><img src="icon/distance.svg"><br>
                  <span>Distance Management</span></a>
        </div>




      </div>
    </div>

    <div class="box-panel">

         <div class="kiri"><!--Field Kiri-->


                        <div id="div2_travel"><!--field tabel lokasi-->
                         <table id="table2_travel"><!--isi tabel lokasi-->

                            <tr>
                            <th>Rumah Fatmawati</th>
                            <th></th>
                            <th></th>
                            <th> </th>

                            <th>
                                <!--Modal Delete Lokasi-->
                              <div onclick="document.getElementById('id02').style.display='block'" style="width:auto;"><img src="icon/ExitIcon.svg"></div><img src="icon/settings.png">

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
                              <div onclick="document.getElementById('id02').style.display='block'" style="width:auto;"><img src="icon/ExitIcon.svg"></div><img src="icon/settings.png">

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
                              <div onclick="document.getElementById('id02').style.display='block'" style="width:auto;"><img src="icon/ExitIcon.svg"></div><img src="icon/settings.png">

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
                              <div onclick="document.getElementById('id02').style.display='block'" style="width:auto;"><img src="icon/ExitIcon.svg"></div><img src="icon/settings.png">

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
                              <div onclick="document.getElementById('id02').style.display='block'" style="width:auto;"><img src="icon/ExitIcon.svg"></div><img src="icon/settings.png">

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

  <div class="kanan"> <!--Field Kanan-->
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

<!--Script Vertical Tab-->
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
