<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding = "UTF-8"%>
<html>
    <head>
        <title>Travners</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS-->
        <link rel="shortcut icon" type="image/png" href="icon/TravnerLogoClz.png" >
        <link href="css/style.css" rel="stylesheet">
        <link href="css/schedule_list.css" rel="stylesheet">
        <link href="css/fullcalendar.min.css" rel="stylesheet">
        <link href="css/fullcalendar.print.min.css" rel="stylesheet" media="print">
        <link rel="stylesheet" type="text/css" href="css/responsive.css">
        <link rel="stylesheet" type="text/css" href="css/popup.css">
        <!-- JAVASCRIPT-->
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
  <div id="header">
    <div class="logo">
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

<!--Detail Schedule-->
<div id="My Schedule" class="tabcontent">
    <div class="content">
      <div id="box">
          <div class="box-panel">
              <h2><a href="index.jsp"><img id="back" src="css/icon/back.png"></a>DETAIL SCHEDULE: 16 SEP '17
                  <a href="add_activity.jsp"><img id="seting" src="css/icon/seting.png"></a>
                  <button id="delete" onclick="document.getElementById('id01').style.display='block'" style="width:auto;"><img src="icon/delete.png"></button>

                              <div id="id01" class="modal">

                              <form class="modal-content animate" action="/action_page.php">
                              <div class="imgcontainer">


                              <div class="container">
                              <label><b>SCHEDULE DELETION</b></label>

                             <label><p>Are you sure want to delete it?</p></label>

                            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Yes</button>
                          <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">No</button></h2>
                 <div id="table-wrapper">
                  <div id="table-scroll">
                    <table>
                      <tbody>
                        <table id="t00">
                          <tr>
                            <th>Activity's Name</th>
                            <td>Ke Bandara</td>
                          </tr>
                          <tr>
                            <th>From</th>
                            <td>Rumah @Fatmawati</td>
                          </tr>
                          <tr>
                            <th>Destination</th>
                            <td>Bandara Soe-Hatta @Tangerang</td>
                          </tr>
                          <tr>
                            <th>Distance</th>
                            <td>40 km</td>
                          </tr>
                          <tr>
                            <th>Time</th>
                            <td>4.30 AM - 5.10 AM</td>
                          </tr>
                          <tr>
                            <th colspan="2">Recomendation</th>
                          </tr>
                          <tr>
                            <td><img id="gambar20" src="css/icon/plane.png">not allowed to plane</td>
                            <td>departure time: -</td>
                          </tr>
                          <tr>
                            <td><img id="gambar20" src="css/icon/car.png">90 min by car</td>
                            <td>departure time: 3.00 AM</td>
                          </tr>
                          </div>
                          <tr>
                            <td><img id="gambar26" src="css/icon/motorcycle.png">80 min by motorcycle</td>
                            <td>departure time: 2.50 AM</td>
                          </tr>
                          <tr>
                            <td><img id="gambar26" src="css/icon/bike.png">not allowed to bike</td>
                            <td>departure time: -</td>
                          </tr>
                          <tr>
                            <td><img id="gambar26" src="css/icon/walk.png">not allowed to walk</td>
                            <td>departure time: -</td>
                          </tr>
                          </div>
                        </table>
                        <br>

                        <table id="t00">
                        <tr>
                          <th>Activity's Name</th>
                          <td>Perjalanan ke Kendari</td>
                        </tr>
                        <tr>
                          <th>From</th>
                          <td>Bandara Soe-Hatta @Tangerang</td>
                        </tr>
                        <tr>
                          <th>Destination</th>
                          <td>Bandara Haluoeo @Kadia</td>
                        </tr>
                        <tr>
                          <th>Distance</th>
                          <td>2600 km</td>
                        </tr>
                        <tr>
                          <th>Time</th>
                          <td>11.10 AM - 11.30 AM</td>
                        </tr>
                        <tr>
                          <th colspan="2">Recomendation</th>
                        </tr>
                        <tr>
                          <td><img id="gambar20" src="css/icon/plane.png">3hr by plane</td>
                          <td>departure time: 8.10AM</td>
                        </tr>
                        <tr>
                          <td><img id="gambar20" src="css/icon/car.png">not allowed to car</td>
                          <td>departure time: -</td>
                        </tr>
                        <tr>
                          <td><img id="gambar26" src="css/icon/motorcycle.png">not allowed to motorcycle</td>
                          <td>departure time: -</td>
                        </tr>
                        <tr>
                          <td><img id="gambar26" src="css/icon/bike.png">not allowed to bike</td>
                          <td>departure time: -</td>
                        </tr>
                        <tr>
                          <td><img id="gambar26" src="css/icon/walk.png">not allowed to walk</td>
                          <td>departure time: -</td>
                        </tr>
                        </table>
                        <br>

                        <table id="t01">
                          <tr>
                            <th>Activity's Name</th>
                            <td>Pertemuan dengan Dept. Agama</td>
                          </tr>
                          <tr>
                            <th>From</th>
                            <td>Bandara Haluoeo @Kadia</td>
                          </tr>
                          <tr>
                            <th>Destination</th>
                            <td>Hotel "X" @ Kadia</td>
                          </tr>
                          <tr>
                            <th>Distance</th>
                            <td>21 km</td>
                          </tr>
                          <tr>
                            <th>Time</th>
                            <td>12.00 AM - 15.30 PM</td>
                          </tr>
                          <tr>
                            <th colspan="2">Recomendation</th>
                          </tr>
                          <tr>
                            <td><img id="gambar20" src="css/icon/plane.png">not allowed to plane</td>
                            <td>departure time: -</td>
                          </tr>
                          <tr>
                            <td><img id="gambar20" src="css/icon/car.png">30 min by car</td>
                            <td>departure time: 11.30</td>
                          </tr>
                          <tr>
                            <td><img id="gambar26" src="css/icon/motorcycle.png">15 min by motorcycle</td>
                            <td>departure time: 11.45</td>
                          </tr>
                          <tr>
                            <td><img id="gambar26" src="css/icon/bike.png">not allowed to bike</td>
                            <td>departure time: -</td>
                          </tr>
                          <tr>
                            <td><img id="gambar26" src="css/icon/walk.png">not allowed to walk</td>
                            <td>departure time: -</td>
                          </tr>
                          </table>
                          <br>

                          <table id="t02">
                          <tr>
                            <th>Activity's Name</th>
                            <td>Makan Sore</td>
                          </tr>
                          <tr>
                            <th>From</th>
                            <td>Hotel "X" @ Kadia</td>
                          </tr>
                          <tr>
                            <th>Destination</th>
                            <td>Restoran @Poasia</td>
                          </tr>
                          <tr>
                            <th>Distance</th>
                            <td>200 m</td>
                          </tr>
                          <tr>
                            <th>Time</th>
                            <td>15.30 PM - 16.30 PM</td>
                          </tr>
                          <tr>
                            <th colspan="2">Recomendation</th>
                          </tr>
                          <tr>
                            <td><img id="gambar20" src="css/icon/plane.png">not allowed to plane</td>
                            <td>departure time: -</td>
                          </tr>
                          <tr>
                            <td><img id="gambar20" src="css/icon/car.png">10 min by car</td>
                            <td>departure time: 15.20</td>
                          </tr>
                          <tr>
                            <td><img id="gambar26" src="css/icon/motorcycle.png">8 min by motorcycle</td>
                            <td>departure time: 15.22</td>
                          </tr>
                          <tr>
                            <td><img id="gambar26" src="css/icon/bike.png">9 min by bike</td>
                            <td>departure time: 15.21</td>
                          </tr>
                          <tr>
                            <td><img id="gambar26" src="css/icon/walk.png">15 min by walk</td>
                            <td>departure time: 15.15</td>
                          </tr>
                        </table>
                      </tbody>
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


<div id="Travel_Data" class="tabcontent">
 <div class="content">
  <div id="box">
    <div class="box-top">Travel Data</div>

  <div class="box-panel">
      <div class="menu_atas"> <!--Box Luar-->
          <div class="menunya"> <!--Isi box-->
            <div class="point"> <!--Box pointer-->
              <a href="location.jsp " id="defaultOpen" style="color: white"><img src="icon/location.svg"><br>
                  <span>Location</span></a>
            </div>
        </div>

        <div class="menunya"> <!--Isi box-->
                <a href="Distance_management.jsp " id="defaultOpen" style="color: white"><img src="icon/distance.svg"><br>
                  <span>Distance Management</span></a>
        </div>

      </div>

    <!--Field Kiri-->
    <div class="kiri">


                        <div id="div2_travel"> <!--Field (luar) kategori-->
                         <table id="table2_travel"> <!--Field (dalam) kategori-->

                            <tr>
                            <th>Rumah Fatmawati</th>
                            <th></th>
                            <th></th>
                            <th> </th>

                            <!--Modal Delete-->
                            <th>
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
                              <button onclick="document.getElementById('id02').style.display='block'" style="width:auto;"><img src="icon/trash.png"></button><img src="icon/settings.png">

                              <div id="id02" class="modal">

                              <form class="modal-content animate" action="/action_page.php"> <!--Field animasi modal-->
                              <div class="imgcontainer"> <!--Field (dalam) Modal-->


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

  <div class="kanan">
    <form action="#" class="location_form" method="post">
      <h2>Add Location</h2>
          <span>Place's Name</span><br>
          <input class="kotak_lo" type="text"  name="#" placeholder="Place's Name">

          <span>Address</span><br>
          <input class="kotak_lo" type="text"  name="#" placeholder="Address">
           <input class="add_button" type="submit" name="#" value="Add">


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
