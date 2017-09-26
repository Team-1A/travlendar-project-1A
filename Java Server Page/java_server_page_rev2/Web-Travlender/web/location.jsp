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
        <link rel="stylesheet" href="css/admin.css">
        <link href="css/fullcalendar.min.css" rel="stylesheet">
        <link href="css/fullcalendar.print.min.css" rel="stylesheet" media="print">        
        <script type="text/javascript" src="js/moment.min.js"></script>
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/fullcalendar.min.js"></script>
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
          title: 'All Day Event',
          start: '2017-09-01'
        },
        {
          title: 'Long Event',
          start: '2017-09-07',
          end: '2017-09-10'
        },
        {
          id: 999,
          title: 'Repeating Event',
          start: '2017-09-09T16:00:00'
        },
        {
          id: 999,
          title: 'Repeating Event',
          start: '2017-09-16T16:00:00'
        },
        {
          title: 'Conference',
          start: '2017-09-11',
          end: '2017-09-13'
        },
        {
          title: 'Meeting',
          start: '2017-09-12T10:30:00',
          end: '2017-09-12T12:30:00'
        },
        {
          title: 'Lunch',
          start: '2017-09-12T12:00:00'
        },
        {
          title: 'Meeting',
          start: '2017-09-12T14:30:00'
        },
        {
          title: 'Happy Hour',
          start: '2017-09-12T17:30:00'
        },
        {
          title: 'Dinner',
          start: '2017-09-12T20:00:00'
        },
        {
          title: 'Birthday Party',
          start: '2017-09-13T07:00:00'
        },
        {
          title: 'Click for Google',
          url: 'http://google.com/',
          start: '2017-09-28'
        }
      ]
    });
    
  });

</script>
</head>
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
    <button class="tablinks" onclick="openPages(event, 'My Schedule')">My Schedule</button>
    <button class="tablinks" onclick="openPages(event, 'Calendar')">Calendar</button>
    <button class="tablinks" onclick="openPages(event, 'Travel_Data')" id="defaultOpen">Travel Data</button>
</div>

<!--isi dari sidebar-->

<!--My Schedule-->
<div id="My Schedule" class="tabcontent">
    <div class="content">
      <div id="box">
        <div class="box-top">My Schedule</div>
      <div class="box-panel">
        <div class="menu_atas">
          <div class="menunya2">
            <a href="create_schedule.jsp">Create Schedule</a>
        </div>
      </div>
     </div>
     
     <div class="box-panel">
      <iframe src="schedule_scroll.jsp" width="945" height="200" scrolling="yes">
        </iframe>
            
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
    <div class="box-top">Travel Data</div>
     <div class="box-panel">
      <div class="menu_atas">
        
        <div class="menunya">
          <div class="point">
            <a href="location.jsp" id="defaultOpen">Location</a>
          </div>
        </div>
        
        <div class="menunya">
          <a href="transportation.jsp">Transportation Mode</a>
        </div>
        
        <div class="menunya">
          <a href="distance.jsp">Manage Distance</a>
        </div>
        
        <div class="menunya">
          <a href="estimation.jsp">Estimation Time</a>
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
