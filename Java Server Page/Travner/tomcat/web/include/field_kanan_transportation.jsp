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
        
        <form action="${pageContext.request.contextPath}/Recommend?action=Transport" class="" method="post"><br><br>
            <h5>Select Transportation</h5>
            <select name="transport" >
                <c:forEach items="${transportation}" var="tr">
                    <option value="${tr.getTransportation_Code()}"><c:out value="${tr.getTransportation()}"/></option>
                </c:forEach>
            </select><br>
            <input class="add_button" type="submit" name="#" value="Add"><!--add Button-->
        </form>
    </body>
</html>
