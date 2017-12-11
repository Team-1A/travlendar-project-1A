<%-- 
    Document   : HomePage
    Created on : Dec 10, 2017, 7:43:06 AM
    Author     : netspv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Travner</title>
	
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    
<!--    <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css'>-->
    <link rel="stylesheet" type="text/css" href="css/HomePage.css">
    
    <script src="https://code.jquery.com/jquery-2.1.0.min.js" ></script>
    
    <script type="text/javascript" src="js/HomePage.js"></script>
</head>

<body>
    
    <div id="formWrapper">
        <div id="form">
            <div class="logo">
                <img src="css/TravnerColor.svg" onmouseover="this.src='css/Travner.svg'"onmouseout="this.src='css/TravnerColor.svg'">
            </div>
		      <div class="form-item">
			     <p class="formLabel">Email</p>
			     <input type="email" name="email" id="email" class="form-style" autocomplete="off"/>
		      </div>
		      <div class="form-item">
			     <p class="formLabel">Password</p>
			     <input type="password" name="password" id="password" class="form-style" />
			     <!-- <div class="pw-view"><i class="fa fa-eye"></i></div> -->
			     <p><a href="#" ><small>Forgot Password ?</small></a></p>	
		      </div>
		      <div class="form-item">
		          <p class="pull-left"><a href="#"><small>Sign Up</small></a></p>
                  <a class='button glyphicon glyphicon-plus' href='#'></a>
                  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
		          <a href="index.html"><input type="submit" class="login pull-right" value="Log In" ></a>
                  
		          <div class="clear-fix"></div>
		      </div>
             
            
        </div>
    </div>
    
    <div class='wrap'>
        
     
        <div id="form">
        
            <div class="form-item">
		          <a class='button glyphicon glyphicon-plus' href='#'></a>
                  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
		          <input type="button" class="close" value="Close">
		          <div class="clear-fix"></div>
		      </div>
            
		      <div class="form-item">
			     <p class="formLabel">Email</p>
			     <input type="email" name="email" id="email" class="form-style" autocomplete="off"/>
		      </div>
		      <div class="form-item">
			     <p class="formLabel">Username</p>
			     <input type="username" name="username" id="username" class="form-style" />
		      </div>
              <div class="form-item">
                  <p class="formLabel">Password</p>
			     <input type="password" name="password" id="password" class="form-style" />
              
              </div>
            
		      <div class="form-item">
		          
                  <a class='button glyphicon glyphicon-plus' href='#'></a>
                  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
		          <input type="submit" class="login pull-right" value="Sign Up">
		          <div class="clear-fix"></div>
		      </div>
             
            
    </div>
               
        </div>
    </div>
    
    
    
</body>

</html>