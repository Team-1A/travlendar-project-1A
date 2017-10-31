<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding = "UTF-8"%>
<html>
    <head>
        <title>Add Activity</title>
        <%@include file="include/link-another-page.jsp"%> <!--memanggil link another page -->
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
    <!--header-->
    <div id="header">
        <div class="logo"><!--logo travner-->
            <a href="index.jsp"><!--menuju halaman utama-->
                <img src="css/logo.png " width="90px" height="35px"> <!--memanggil logo -->
            </a> 
        </div>
    </div>

    <!--sidebar-->
    <div class="tab">
        <%@include file="include/tab.jsp"%> <!--memanggil tab -->
    </div>

    <div id="My Schedule" class="tabcontent">
        <!--add activity-->
        <div class = add_activity>
            <jsp:include page="/ActController"/><!--manggil form add activity-->
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
