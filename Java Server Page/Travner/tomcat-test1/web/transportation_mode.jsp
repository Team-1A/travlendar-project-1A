<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
  <head>
      <title>Add Activity</title>
      <%@include file="include/link-another-page.jsp"%><!--memanggil link another page-->
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
        };
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
    <!--sidebar-->
    <div class="tab">
        <%@include file="include/tab.jsp"%>
    </div>
    
<div class="content">
    <div id="box"><b>Transportation Mode</b></div><br><!--kotak-->
    
         <div class="box-panel"><!--Isi Kotak-->
    
    <div class="kiri"><!--field kiri-->
        <jsp:include page="/Recommend"/><!--manggil field kiri-->
    </div>

    <div class="kanan"><!--Field Kanan-->
        <jsp:include page="/Transportation"/><!--manggil field kanan-->    
    </div>
         
     </div>
</div>

</body>
</html>
