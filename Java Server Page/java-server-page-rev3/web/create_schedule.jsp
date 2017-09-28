<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page contentType="text/html" pageEncoding = "UTF-8"%>
<html>
    <head>
        <title>Travlender</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/admin.css" rel="stylesheet">
        <link href="css/fullcalendar.min.css" rel="stylesheet">
        <link href="css/fullcalendar.print.min.css" rel="stylesheet" media="print">        
        <script type="text/javascript" src="js/moment.min.js"></script>
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/fullcalendar.min.js"></script>
    
    </head>

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
<!--judul-->
  <div id="header">
    <div class="logo">
      <a href="#">TRAVLENDAR</a>
    </div>
</div>
<a class="mobile">MENU</a>

<!--sidebar-->
 <div class="tab">
    <button class="tablinks" onclick="openPages(event, 'My Schedule')" id="defaultOpen">My Schedule</button>
    <button class="tablinks" onclick="openPages(event, 'Calendar')">Calendar</button>
    <button class="tablinks" onclick="openPages(event, 'Travel_Data')">Travel Data</button>
</div>

<!--isi dari sidebar-->

<!--My Schedule-->
<div id="My Schedule" class="tabcontent">
    <div class="content">
      <div id="box">
        <div class="box-top">My Schedule</div>
          <div class="box-panel">
            <h2>Create Schedule</h2>
              <p>I want to create Schedule for :<p>
              
              <input class="waktu" type="text" name="#" placeholder="Date">
              <input class="waktu" type="text" name="#" placeholder="Month">
              <input class="waktu" type="text" name="" placeholder="Year">
              <a href="add_event.jsp"><button  class="add_button">Add Activity</button></a>
                <div class="activity">
                  <iframe src="activity_scroll.jsp" width="950" height="330" scrolling="yes"></iframe>

              <a href="index.jsp"><button  class="add_button">Back</button></a>
              <a href="index.jsp"><button  class="add_button">Finish</button></a>

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
          <img src="css/icon/location.png "><br>
            <a href="location.jsp" id="defaultOpen">Location</a>
          </div>
        </div>
        
        <div class="menunya">
          
          <img src="css/icon/transportation.png "><br>
          <a href="transportation.jsp">Transportation Mode</a>
        </div>
      
        
        <div class="menunya">
          <img src="css/icon/distance.png "><br>
          <a href="distance.jsp">Manage Distance</a>
        </div>
      

        <div class="menunya">
          <img src="css/icon/estimation.png "><br>
          <a href="estimation.jsp" id="defaultOpen">Estimation Time</a>
        </div>
      </div>
    </div>
     
     <div class="box-panel">
      <div class="kiri">

          <iframe src="scroll_location.jsp" width="580" height="200" scrolling="yes"></iframe>
      
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
