<%-- 
    Document   : list_detail_schedule
    Created on : Oct 19, 2017, 2:39:20 PM
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
    </body>
</html>
