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
        <link rel="stylesheet" type="text/css" href="css/popup.css">
        <link href="css/responsive.css" rel="stylesheet">
        <!-- JAVASCRIPT-->
        <script type="text/javascript" src="css/popup.js"></script>
        <script type="text/javascript" src="js/moment.min.js"></script>
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/fullcalendar.min.js"></script>
    </head>
    <body>
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

</head>
<body>
<!--header-->
<div id="header">
  <div class="logo"><!--logo travner-->
  <a href="index.jsp"><img src="css/logo.png " width="90px" height="35px"></a>
  </div>
</div>

<a class="mobile"></a>


<!--sidebar-->
<div class="tab">
   <button class="tablinks" onclick="openPages(event, 'My Schedule')" id="defaultOpen">My Schedule<img src="icon/schedule.svg" ></button>
   <button class="tablinks" onclick="openPages(event, 'Calendar')">Calendar<img src="icon/Calendar.svg" ></button>
   <button class="tablinks" onclick="openPages(event, 'Travel_Data')">Travel Data<img src="icon/travel data.svg" ></button>
</div>



<div id="My Schedule" class="tabcontent">

    <div id="box"><!--Kotak-->
      <div class="box-top">My Schedule</div><!--Kotak Judul-->
    <div class="box-panel"><!--Isi kotak-->

          <!--add activity-->
        <div class = add_activity>
          <h2>Add Activity</h2>
        </div>

            <span>Activity's Name</span><br><!--Activity Name-->
            <input class="kotak_lo" type="text"   name="#" placeholder="Add your activity"><br><!--Form Activity Name-->

            <span>Starting Point - Destination </span><br><!--Form dropdown Starting Point - Destination-->
            <select name="location" >
                  <option value="Rumah Fatmawati" >Rumah Fatmawati</option>
                  <option value="Bandara Soekarno Hatta, Tangerang ">Bandara Soekarno Hatta, Tangerang </option>
                  <option value="Bandara Haluoleo, Kadia ">Bandara Haluoleo, Kadia</option>
                  <option value="Hotel X , Kadia">Hotel "X", Kadia</option>
                  <option value="Restoran Poasia">Restoran Poasia</option>
            </select><br>

            <span>What time the event started?</span><br><!--event dimulai-->
            <input class="time" type="text"  name="#" placeholder="Hour"><!--Form Event dimulai (Jam) -->
            <input class="time" type="text"  name="#" placeholder="Minutes"><br><!--Form Event dimulai(minutes)-->

            <span>What time the event ended?</span><br><!--Event berakhir-->
            <input class="time" type="text"  name="#" placeholder="Hour">
            <input class="time" type="text"  name="#" placeholder="Minutes"><br>

            <span>Choose Scale Priority</span><br><!--Pilih Skala Prioritas -->

              <select name="Priotity" ><!--Form dropdown Priority-->
                  <option value="Urgent">Urgent</option>
                  <option value="Important">Important</option>
                  <option value="Necessary">Necessary</option>
              </select><br>
              <a href="create_schedule.jsp"><button  class="add_button">Add</button></a><!--Add Button-->
              <a href="create_schedule.jsp"><button  class="add_button">Back</button></a><!--Back Button-->
            <br><br>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<!--Calendar-->
  <div id="Calendar" class="tabcontent"><!--menuju page calendar-->
    <div class="content">
      <div id="box"><!--Kotak-->
        <div class="box-top">Calendar</div><!--Judul Kotak-->
            <div class="box-panel"><!--Isi Kotak-->
                <div id='calendar'></div><!--manampilkan calendar-->
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
