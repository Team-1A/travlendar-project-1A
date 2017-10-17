
<!DOCTYPE html>
<html>
  <%@page contentType="text/html" pageEncoding = "UTF-8"%>
<head>
<style>
body{
  background-image: url("background.jpg");
  background-size: 1400px 750px;
  background-repeat: no-repeat;

}
.button_started{
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
  border-radius: 5px;
  float:none;
  height:max-content;
  width: 50%;
  padding: 6px;
  margin: 450px 450px 330px 330px;
  text-align: center;
  font: 20px sans-serif;
  font-weight: bold;
  color: white;
  background: #2980b9;
}
.button_started a{
  color: white;
}

.button_started:hover {
	background:#2c3e50;
	transition: 0.3s;
}
.button_started, a:hover{
	color: white;
}
</style>
</head>
<body >
<div class="button_started"><a href="index.jsp" style="text-decoration:none;">GET STARTED</a></div>

</body>
</html>
