<%-- 
    Document   : field_kanan_location
    Created on : Oct 19, 2017, 1:34:46 PM
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
        <div class="kanan"><!--Field Kanan-->
    <form action="${pageContext.request.contextPath}/locview" class="location_form" method="post"><!--add location-->
      <h2>Add Location</h2>
          <span>Place's Name</span><br><!--Form Place name-->
          <input class="kotak_lo" type="text"  name="locationName" placeholder="Place's Name">

          <span>Address</span><br><!--Form Address-->
          <input class="kotak_lo" type="text"  name="address" placeholder="Address">
           <input class="add_button" type="submit" name="#" value="Add"><!--add Button-->


            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
 </div>
    </body>
</html>
