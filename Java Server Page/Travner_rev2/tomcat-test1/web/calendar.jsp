<%-- 
    Document   : calendar.jsp
    Created on : Oct 28, 2017, 7:17:27 PM
    Author     : Rahmat Supriatna
--%>

<%@page contentType="text/html" pageEncoding = "UTF-8"%>
<html>
  <head>
      <title>Calendar</title>
      <%@include file="include/link-another-page.jsp"%> <!--memanggil link another page -->
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
            <a href="index.jsp"> <!--menuju halaman utama -->
                <img src="css/logo.png " width="90px" height="35px"> <!--memanggil logo -->
        </a>
        </div>
    </div>

    <!--sidebar-->
    <div class="tab"> 
        <%@include file="include/tab.jsp"%> <!--memanggil tab -->
    </div>

    <!--Calendar-->
    <div id="Calendar" class="tabcontent"><!--menuju page calendar-->
        <%@include file="include/calendar.jsp"%><!--manggil calendar-->
    </div>
</body>
</html>