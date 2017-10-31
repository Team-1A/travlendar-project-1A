<%-- 
    Document   : field_kanan_travel_data
    Created on : Oct 19, 2017, 2:36:38 PM
    Author     : netspv
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Travner</title>
    </head>
    <body>
        <form action="${pageContext.request.contextPath}/DistanceMng" class="location_form" method="post">
            <h2>Add Distance</h2>
            <span>From</span><br>
            <select name="fromLoc" >
                <c:forEach items="${lokasi}" var="name">
                      <option value="${name.getNamePoint()}"><c:out value="${name.getNamePoint()}"/></option>
                </c:forEach>
            </select><br>
            <span>To</span><br>
            <select name="destination" >
                  <c:forEach items="${lokasi}" var="name">
                      <option value="${name.getNamePoint()}"><c:out value="${name.getNamePoint()}"/></option>
                  </c:forEach>
            </select><br>
            <span>Distance</span><br>
            <input class="ktk_distance" type="text"  name="distKM" placeholder="km">
            <input class="ktk_distance" type="text"  name="distM" placeholder="m"><br><br>
            <input class="add_button" type="submit" name="#" value="Add"><!--add button-->
        </form>
    </body>
</html>
