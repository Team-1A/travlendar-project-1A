<%-- 
    Document   : schedule
    Created on : Oct 19, 2017, 1:40:38 PM
    Author     : netspv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Travner</title>
    </head>
    <body>
        <div class="content">
      <div id="box"><!--Kotak-->
        <div class="box-top">My Schedule</div><!--Judul Kotak-->
          <div class="box-panel"><!--Isi Kotak-->
            <h2>Create Schedule</h2>
              <p>I want to create Schedule for :<p><!--Form Tanggal Schedule-->

              <input class="waktu"  type="text" name="Date" placeholder="Date" required>
              <input class="waktu" type="text" name="Month" placeholder="Month" required>
              <input class="waktu" type="text" name="Year" placeholder="Year" required>

              <a href="detail_schedule.jsp"><button  class="add_button">Finish</button></a><!--Finish Button-->
              <a href="index.jsp"><button  class="add_button">Back</button></a><!--Back button-->
              <div class="activity"><br><br><br></div><!--Activity-->
                  <div class="menunya2"><!--Add Activity Button-->
                   <a href="add_activity.jsp">Add Activity</a>
                  </div><br>


                        <div id="div2_create_schedule"><!--Field Tabel Schedule-->
                         <table id="table2_create_schedule"><!--tabel Schdule-->
                          <tr style= "border-bottom:4px solid white">
                              <!--Isi Tabel Lokasi-->
                              <th bgcolor="#B40404"></th>
                                 <th> Activity Name : Ke Bandara Soekarno Hatta<br>
                                    From : Rumah @Fatmawati<br>
                                    To : Bandara Soekarno-Hatta @Tangerang</th>
                                    <th></th>
                                    <th></th>
                                    <th></th>

                                 <!--Modal Delete Lokasi-->
                            <th>
                              <div onclick="document.getElementById('id01').style.display='block'" style="width:auto;">
                              <img src="icon/ExitIcon.svg"></div>
                                <a href="add_activity.jsp"><img src="icon/settings.png"></a>

                              <div id="id01" class="modal">

                              <form class="modal-content animate" action="/action_page.php">
                              <div class="imgcontainer">


                              <div class="container">
                              <label><b>ACTIVITY DELETION</b></label>

                             <label><p>Are you sure want to delete it?</p></label>

                            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Yes</button>
                          <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">No</button>

                              </th>
                          </tr>

                          <tr style= "border-bottom:4px solid white">
                              <!--Isi Tabel Lokasi-->
                              <th bgcolor="#B40404"></th>
                                 <th> Activity Name : Ke Bandara Haluoleo<br>
                                      From : Bandara Soekarno-Hatta @Tangerang<br>
                                      To : Bandara Haluoleo @Kadia </th>
                                 <th> </th>
                                 <th> </th>
                                 <th> </th>
                            <th>
                                <!--Modal Delete Lokasi-->
                              <div onclick="document.getElementById('id01').style.display='block'" style="width:auto;">
                                <img src="icon/ExitIcon.svg"></div>
                                <a href="add_activity.jsp"><img src="icon/settings.png"></a>

                              <div id="id01" class="modal">

                              <form class="modal-content animate" action="/action_page.php">
                              <div class="imgcontainer">


                              <div class="container">
                              <label><b>ACTIVITY DELETION</b></label>

                             <label><p>Are you sure want to delete it?</p></label>

                            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Yes</button>
                          <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">No</button>

                              </th>
                          </tr>

                          <tr style= "border-bottom:4px solid white">
                              <!--Isi Tabel Lokasi-->
                              <th bgcolor="#B43104"></th>
                                 <th>Activity Name : Hotel "X" @Kadia<br>
                                      From : Bandara Haluoleo, @Kadia<br>
                                      To : Hotel "X" @Kadia </th>
                                 <th> </th>
                                 <th> </th>
                                 <th> </th>
                            <th>
                                <!--Modal Delete Lokasi-->
                              <div onclick="document.getElementById('id01').style.display='block'" style="width:auto;">
                                <img src="icon/ExitIcon.svg"></div>
                                <a href="add_activity.jsp"><img src="icon/settings.png"></a>

                              <div id="id01" class="modal">

                              <form class="modal-content animate" action="/action_page.php">
                              <div class="imgcontainer">


                              <div class="container">
                              <label><b>ACTIVITY DELETION</b></label>

                             <label><p>Are you sure want to delete it?</p></label>

                            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Yes</button>
                          <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">No</button>

                              </th>
                          </tr>

                          <tr style= "border-bottom:4px solid white">
                              <!--Isi Tabel Lokasi-->
                              <th bgcolor="#B18904"></th>
                                 <th>Activity Name : Ke Restoran @Poasia<br>
                                      From : Hotel "X" @Kadia<br>
                                      To : Restoran @Poasia </th>
                                 <th> </th>
                                 <th> </th>
                                 <th> </th>
                            <th>
                                <!--Modal Delete Lokasi-->
                              <div onclick="document.getElementById('id01').style.display='block'" style="width:auto;">
                                <img src="icon/ExitIcon.svg"></div>
                                <a href="add_activity.jsp"><img src="icon/settings.png"></a>

                              <div id="id01" class="modal">

                              <form class="modal-content animate" action="/action_page.php">
                              <div class="imgcontainer">


                              <div class="container">
                              <label><b>ACTIVITY DELETION</b></label>

                             <label><p>Are you sure want to delete it?</p></label>

                            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Yes</button>
                          <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">No</button>

                              </th>
                          </tr>

                          </table>
                        </div>


           </div>
        </div>
      </div>
    </div>
  </div>
    </body>
</html>
