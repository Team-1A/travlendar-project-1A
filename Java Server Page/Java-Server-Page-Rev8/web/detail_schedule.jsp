<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding = "UTF-8"%>
<html>
    <head>
        <title>Detail Schedule</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS-->
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
      <img src="css/logo.png " width="150px" height="35px">
    </div>
</div>
<a class="mobile">MENU</a>

<!--sidebar-->
 <div class="tab">
    <button class="tablinks" onclick="openPages(event, 'My Schedule')" id="defaultOpen">My Schedule</button>
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
