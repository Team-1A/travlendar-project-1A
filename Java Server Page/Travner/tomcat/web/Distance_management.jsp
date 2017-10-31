<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page contentType="text/html" pageEncoding = "UTF-8"%>
<html>
  <head>
      <title>Distance Management</title>
      <%@include file="include/link-another-page.jsp"%>
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
      <a href="index.jsp">
          <img src="css/logo.png " width="90px" height="35px"> <!--memanggil logo-->
      </a>
    </div>
</div>

<!--sidebar-->
<div class="tab">
    <%@include file="include/tab.jsp"%><!--menuju page tab-->
</div>

<div id="Travel_Data" class="tabcontent"><!--menuju page Travel Data -->
<%@include file="include/menu_travel_data2.jsp"%><!--manggil menu travel data-->

<div class="box-panel"><!--Isi Kotak-->
    <div class="kiri"><!--field kiri-->
        <jsp:include page="/DistanceTable"/><!--manggil field kiri-->
    </div>

    <div class="kanan">
        <jsp:include page="/DistanceMng"/><!--manggil field kanan-->
    </div>
</div>
    
</body>
</html>
