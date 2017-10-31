<%-- 
    Document   : field_kiri_location
    Created on : Oct 19, 2017, 1:32:05 PM
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
        <a href="add_activity.jsp">
            <img id="back" src="css/icon/back.png"><!--Tombol back-->
        </a>
        <div id="div1_transportation"><!--field tabel lokasi-->
                <table id="table1_transportation"><!--isi tabel lokasi-->
                    <tr>
                    <th>Transportation</th>
                    <th>Recomendation</th>
                    <th>Departure Time</th>
                    </tr>
                </table>
        </div>
        <div id="div2_transportation"><!--field tabel lokasi-->
            <table id="table2_transportation"><!--isi tabel lokasi-->
                <c:forEach items="${transportation}" var="tr">
                    <tr>
                        <th><br><c:out value="${tr.getTransportName()}"/></th> <!--mendapatkan nama transportasi-->
                        <th><c:out value="${tr.getEstimation()}"/> Minutes </th> <!--mendapatkan rekomendasi waktu-->
                        <th>-</th>
                        <th> </th>
                    </tr> 
                            </c:forEach>
            </table>
        </div>
    </body>
</html>
