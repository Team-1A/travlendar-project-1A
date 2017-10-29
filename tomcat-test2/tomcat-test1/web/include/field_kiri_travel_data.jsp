<%-- 
    Document   : field_kiri_travel_data
    Created on : Oct 19, 2017, 2:34:02 PM
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
        <div id="div1_travel"><!--field tabel lokasi-->
                <table id="table1_travel"><!--isi tabel lokasi-->
                    <tr>
                    <th>From</th>
                    <th>To</th>
                    <th>Distance</th>
                    <th></th>
                    </tr>
                </table>
            </div>
            <div id="div2_travel"><!--field tabel lokasi-->
                <table id="table2_travel"><!--isi tabel lokasi-->
            </form>
                    <tr>
                    <th>Rumah Fatmawati</th>
                    <th>Bandara Soekarno-Hatta, Tangerang</th>
                    <th>40km</th>
                    <th>
                        <!--Modal Delete Lokasi-->
                        <button onclick="document.getElementById('id02').style.display='block'" style="width:auto;"><img src="icon/trash.png"></button><img src="icon/settings.png">
                        <div id="id02" class="modal">
                            <form class="modal-content animate" action="/action_page.php">
                                <div class="imgcontainer">
                                    <div class="container">
                              <label><b>LOCATION DELETION</b></label>

                             <label><p>Are you sure want to delete it?</p></label>
                             <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Yes</button>
                             <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">No</button>
                             </form>
                    </th>
                    </tr>
                    <tr>
                    <th>Bandara Soekarno-Hatta, Tangerang</th>
                    <th>Bandara Haluoleo, Kadia</th>
                    <th>2600km</th>
                    <th>
                        <!--Modal Delete Lokasi-->
                        <button onclick="document.getElementById('id02').style.display='block'" style="width:auto;"><img src="icon/trash.png"></button><img src="icon/settings.png">
                        <div id="id02" class="modal">
                            <form class="modal-content animate" action="/action_page.php">
                                <div class="imgcontainer">
                                    <div class="container">
                                        <label><b>LOCATION DELETION</b></label>
                                        <label><p>Are you sure want to delete it?</p></label>
                                        <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Yes</button>
                                        <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">No</button>
                            </form>
                        </th>
                        </tr>
                        <tr>
                        <th>Bandara Haluoleo, Kadia</th>
                        <th>Hotel "X" Kadia</th>
                        <th>21km</th>
                        <th>
                            <!--Modal Delete Lokasi-->
                            <button onclick="document.getElementById('id02').style.display='block'" style="width:auto;"><img src="icon/trash.png"></button><img src="icon/settings.png">
                            <div id="id02" class="modal">
                                <form class="modal-content animate" action="/action_page.php">
                                    <div class="imgcontainer">
                                        <div class="container">
                                            <label><b>LOCATION DELETION</b></label>
                                            <label><p>Are you sure want to delete it?</p></label>
                                            <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Yes</button>
                                            <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">No</button>
                                </form>

                        </th>
                        </tr>
                        <tr>
                        <th>Hotel "X" Kadia</th>
                        <th>Restoran Poasia</th>
                        <th>200m</th>
                        <th>
                            <!--Modal Delete Lokasi-->
                            <button onclick="document.getElementById('id02').style.display='block'" style="width:auto;"><img src="icon/trash.png"></button><img src="icon/settings.png">
                            <div id="id02" class="modal">
                                <form class="modal-content animate" action="/action_page.php">
                                    <div class="imgcontainer">
                                        <div class="container">
                                            <label><b>LOCATION DELETION</b></label>
                                            <label><p>Are you sure want to delete it?</p></label>
                                            <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Yes</button>
                                            <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">No</button>
                                    </form>
                                 </th>
                              </tr>
                        </table>
                   </div>  
                </body>
            </html>
