<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page contentType="text/html" pageEncoding = "UTF-8"%>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/admin.css" rel="stylesheet">
        <link href="css/fullcalendar.min.css" rel="stylesheet">
        <link href="css/fullcalendar.print.min.css" rel="stylesheet" media="print">  
		<link href="css/responsive.css" rel="stylesheet">			
        <script type="text/javascript" src="js/moment.min.js"></script>
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/fullcalendar.min.js"></script>
    </head>
    <body>

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

</head>
<body>
<!--header-->
<div id="header">
  <div class="logo">
    <img src="css/logo.png " width="180px" height="30px">
  </div>
</div>

<a class="mobile"></a>


<!--sidebar-->
 <div class="tab">
  <button class="tablinks" onclick="openPages(event, 'My Schedule')" id="defaultOpen">My Schedule</button>
  <button class="tablinks" onclick="openPages(event, 'Calendar')">Calendar</button>
  <button class="tablinks" onclick="openPages(event, 'Travel_Data')">Travel Data</button>
</div>


<div id="My Schedule" class="tabcontent">
  
    <div id="box">
      <div class="box-top">My Schedule</div>
    <div class="box-panel">
      
      

       <!-- <input class="add_button" type="submit" name="#" value="Add" >-->
          <!--add activity-->
        <div class = add_activity>
          <h2>Add Activity</h2>
        </div>
        
            <span>Activity's Name</span><br>
            <input class="kotak_lo" type="text"  name="#"><br>
          
            <span>Start Location - Destination Location</span><br>
            <select name="location" >
                  <option value="Rumah - Bandara Soekarno Hatta, Tangerang">Rumah - Bandara Soekarno Hatta, Tangerang</option>
                  <option value="Bandara Soekarno Hatta, Tangerang - Bandara Haluoleo, Kadia">Bandara Soekarno Hatta, Tangerang - Bandara Haluoleo, Kadia</option>
                  <option value="Bandara Haluoleo, Kadia - Hotel "X" , Kadia">Bandara Haluoleo, Kadia - Hotel "X" , Kadia</option>
                  <option value="Hotel X , Kadia - Restoran Poasia">Hotel "X" , Kadia - Restoran Poasia</option>
              </select>
            <br><br>
          
            <span>What time the event started</span><br>
            <input class="time" type="text"  name="#" placeholder="hour">
            <input class="time" type="text"  name="#" placeholder="minutes"><br>
          
            <span>What time the event ended</span><br>
            <input class="time" type="text"  name="#" placeholder="hour">
            <input class="time" type="text"  name="#" placeholder="minutes"><br>
    
            <span>Transportation Mode</span><br>
              
              <select name="transportation" >
                  <option value="Car">Car</option>
                  <option value="Bicycle">Plane</option>
                  <option value="Public Transportation">Public Transportation</option>
                  <option value="Motorcycle">Walk</option>
              </select><br>
              <a href="create_schedule.jsp"><button  class="add_button">add</button></a>
            <br><br>
          </div>
        </div>   
      </div>
    </div>
  </div>
</div>
	

  <div id="Calendar" class="tabcontent">
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
    <div class="box-top">My Schedule</div>
     <div class="box-panel">
      <div class="menu_atas">
        
       <div class="menunya">
          <div class="point">
          <a href="location.jsp"><img src="css/icon/location.png "></a><br>
            <a href="location.jsp" id="defaultOpen">Location</a>
          </div>
        </div>
        
        <div class="menunya">
          
          <a href="transportation.jsp"><img src="css/icon/transportation.png "><br></a>
          <a href="transportation.jsp">Transportation Mode</a>
        </div>
      
        
        <div class="menunya">
          <a href="distance.jsp"><img src="css/icon/distance.png "></a><br>
          <a href="distance.jsp">Manage Distance</a>
        </div>
      

        <div class="menunya">
          <a href="estimation.jsp"><img src="css/icon/estimation.png "></a><br>
          <a href="estimation.jsp" id="defaultOpen">Estimation Time</a>
        </div>
      </div>
    </div>
     
  <div class="box-panel">
    
    <div class="kiri">
          <iframe src="scroll_location.jsp" width="580" height="200" scrolling="yes">
          </iframe>
      </div>

    <div class="kanan">
              <form action="#" class="location_form" method="post">
                <h2>Add Location</h2>
                  <span>Place's Name</span>
                  <input class="kotak_lo" type="text"  name="#">
          
                  <span>Address</span>
                  <input class="kotak_lo" type="text"  name="#">
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
