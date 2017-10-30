<%-- 
    Document   : activity
    Created on : Oct 19, 2017, 1:08:00 PM
    Author     : netspv
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Activity</title>
    </head>

<body>
    <div id="box"><!--Kotak-->
        <div class="box-top"></div><!--Kotak Judul-->
        <div class="box-panel"><!--Isi kotak-->
            <h2>
                <a href="create_schedule.jsp">
                    <img id="back" src="css/icon/back.png"><!--Tombol back-->
                </a>
                Add Activity
            </h2>
        </div>
        <form action="${pageContext.request.contextPath}/Recommend?action=Activity" class="" method="post">
            <span>Activity's Name</span><br><!--Activity Name-->
            <input class="kotak_lo" type="text"   name="ActivityName" placeholder="Add your activity"><br><!--Form Activity Name-->
            <span>Starting Point - Destination </span><br><!--Form dropdown Starting Point - Destination-->
            <select name="location" >
                  <c:forEach items="${Locations}" var="loc">
                      <option value="${loc.getID_Start()}-${loc.getID_Destination()}"><c:out value="${loc.getStartLoc()} - ${loc.getDestination()}"/></option>
                  </c:forEach>
            </select><br>

            <span>What time the event started?</span><br><!--event dimulai-->
            <input class="time" type="text"  name="HourStart" placeholder="Hour"><!--Form Event dimulai (Jam) -->
            <input class="time" type="text"  name="MinutesStart" placeholder="Minutes"><br><!--Form Event dimulai(minutes)-->

            <span>What time the event ended?</span><br><!--Event berakhir-->
            <input class="time" type="text"  name="HourEnd" placeholder="Hour">
            <input class="time" type="text"  name="MinutesEnd" placeholder="Minutes"><br>

            <span>Choose Scale Priority</span><br><!--Pilih Skala Prioritas -->

              <select name="Priority" ><!--Form dropdown Priority-->
                  <option value="1">Urgent</option>
                  <option value="2">Important</option>
                  <option value="3">Necessary</option>
              </select><br>
              <a href="transportation_mode.jsp"><!--menuju transportation mode-->
                  <button  class="add_button" type="submit">Add</button><!--button add-->
              </a><!--Add Button-->
              <br><br>
        </form>
    </div>
</body>
</html>
