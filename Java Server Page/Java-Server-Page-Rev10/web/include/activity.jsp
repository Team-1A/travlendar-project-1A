<%-- 
    Document   : activity
    Created on : Oct 19, 2017, 1:08:00 PM
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
<div id="box"><!--Kotak-->
  <div class="box-top">My Schedule</div><!--Kotak Judul-->
    <div class="box-panel"><!--Isi kotak-->
      <h2>Add Activity</h2>
         </div>
            <span>Activity's Name</span><br><!--Activity Name-->
            <input class="kotak_lo" type="text"   name="#" placeholder="Add your activity"><br><!--Form Activity Name-->

            <span>Starting Point - Destination </span><br><!--Form dropdown Starting Point - Destination-->
            <select name="location" >
                  <option value="Rumah Fatmawati" >Rumah Fatmawati</option>
                  <option value="Bandara Soekarno Hatta, Tangerang ">Bandara Soekarno Hatta, Tangerang </option>
                  <option value="Bandara Haluoleo, Kadia ">Bandara Haluoleo, Kadia</option>
                  <option value="Hotel X , Kadia">Hotel "X", Kadia</option>
                  <option value="Restoran Poasia">Restoran Poasia</option>
            </select><br>

            <span>What time the event started?</span><br><!--event dimulai-->
            <input class="time" type="text"  name="#" placeholder="Hour"><!--Form Event dimulai (Jam) -->
            <input class="time" type="text"  name="#" placeholder="Minutes"><br><!--Form Event dimulai(minutes)-->

            <span>What time the event ended?</span><br><!--Event berakhir-->
            <input class="time" type="text"  name="#" placeholder="Hour">
            <input class="time" type="text"  name="#" placeholder="Minutes"><br>

            <span>Choose Scale Priority</span><br><!--Pilih Skala Prioritas -->

              <select name="Priotity" ><!--Form dropdown Priority-->
                  <option value="Urgent">Urgent</option>
                  <option value="Important">Important</option>
                  <option value="Necessary">Necessary</option>
              </select><br>
              <a href="create_schedule.jsp"><button  class="add_button">Add</button></a><!--Add Button-->
              <a href="create_schedule.jsp"><button  class="add_button">Back</button></a><!--Back Button-->
            <br><br>
          </div>
        </div>
      </div>
    </div>
  </div>
    </body>
</html>
