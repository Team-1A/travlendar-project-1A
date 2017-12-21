
<!DOCTYPE html>
<html>
    <head>
        <title>Travner</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"
              <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
        <!--    <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css'>-->
        <link rel="stylesheet" type="text/css" href="css/index.css">
        <script src="js/jquery.min.js" ></script>
        <script type="text/javascript" src="js/index.js"></script>
        <script>
function Submit(){
	var emailRegex = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;
	var fname = document.form.Name.value,
		lname = document.form.LastName.value,
		femail = document.form.Email.value,
	    fpassword = document.form.Password.value,
        frepassword = document.form.enterPassword.value,
		fmonth = document.form.birthday_month.value,
		fday = document.form.birthday_day.value,
		fyear = document.form.birthday_year.value;
		
	if( fname === "" )
   {
     document.form.Name.focus() ;
	 document.getElementById("errorBox_name").innerHTML = "enter the first name";
     return false;
   }
	if( lname === "" )
   {
     document.form.LastName.focus() ;
	  document.getElementById("errorBox_name").innerHTML = "enter the last name";
            return false;
   }
   
   if (femail === "" )
	{
		document.form.Email.focus();
         document.getElementById("errorBox_name").innerHTML = "";
		document.getElementById("errorBox_email").innerHTML = "enter the email";
		return false;
	 }else if(!emailRegex.test(femail)){
		document.form.Email.focus();
        document.getElementById("errorBox_name").innerHTML = "";
		document.getElementById("errorBox_email").innerHTML = "enter the valid email";
		return false;
	 }
    
    if(fpassword === "")
	 {
          document.form.Password.focus();
        document.getElementById("errorBox_email").innerHTML = "";
		 document.getElementById("errorBox_password").innerHTML = "enter the password";
		 return false;
	 }
	 
	  if (frepassword === "" )
	{
		document.form.enterPassword.focus();
        document.getElementById("errorBox_password").innerHTML = "";
		document.getElementById("errorBox_repassword").innerHTML = "Re-enter the password";
		return false;
	 }

	 if(frepassword !==  fpassword){
		 document.form.enterPassword.focus();
         document.getElementById("errorBox_password").innerHTML = "";
		 document.getElementById("errorBox_repassword").innerHTML = "emails are not matching, re-enter again";
		 return false;
		 }
	 
	 
    if (fmonth === "") {
        document.form.birthday_month.focus();
        document.getElementById("errorBox_repassword").innerHTML = "";
		document.getElementById("errorBox_birthday").innerHTML = "select the birthday month";
        return false;
     }
	 if (fday === "") {
        document.form.birthday_day.focus();
          document.getElementById("errorBox_repassword").innerHTML = "";
		document.getElementById("errorBox_birthday").innerHTML = "select the birthday day";
        return false;
     }
	 if (fyear === "") {
        document.form.birthday_year.focus();
          document.getElementById("errorBox_repassword").innerHTML = "";
		document.getElementById("errorBox_birthday").innerHTML = "select the birthday year";
        return false;
     }
//		if(document.form.radiobutton[0].checked == false && document.form.radiobutton[1].checked == false){
//				document.getElementById("errorBox").innerHTML = "select your gender";
//			 return false;
//			}
    
		if(fname !== '' && lname !== '' && femail !== '' && fpassword !== '' && frepassword !== '' && fmonth !== '' && fday !== '' && fyear !== ''){
                        document.getElementById("errorBox_birthday").innerHTML = "";
                        document.getElementById("signup").submit();
			document.getElementById("errorBox_name").innerHTML = "form submitted successfully";
		}
		  
}

</script>
    </head>
    <body>
        <div id="formWrapper">
            <div id="form">
                <div class="logo">
                    <img src="css/Assets/icon/TravnerColor.svg" onmouseover="this.src='css/Assets/icon/Travner.svg'"onmouseout="this.src='css/Assets/icon/TravnerColor.svg'">
                </div>
                <!-- masukkan email-->
                <div class="form-item">
                    <p class="formLabel">Username</p>
                    <input form="login" type="text" name="email" id="email" class="form-style" autocomplete="off"/>
                </div>
                <!-- masukkan password-->
                <div class="form-item">
                    <p class="formLabel">Password</p>
                    <input form="login" type="password" name="password" id="password" class="form-style" />
                    <!-- <div class="pw-view"><i class="fa fa-eye"></i></div> -->
                    <!-- klik untuk lupa password-->
                    <p><a href="#" ><small>Forgot Password ?</small></a></p>
                </div>
                <div class="form-item">
                    <!-- klik untuk membuat akun baru-->
                    <p class="pull-left"><a href="#"><small>Sign Up</small></a></p>
                    <a class='button glyphicon cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
                    <input form="login" type="submit" class="login pull-right" value="Log In" >
                    <div class="clear-fix"></div>
                </div>
            </div>
        </div>
        <div class='wrap'>
            <div id="form">
                <div id="emptyDiv"></div>
<div id="description"></div>
<!--container start-->

  <div id="container_body">
    
    <!--Form  start-->
    <div id="form_name">
      <div class="firstnameorlastname">
          <form name="form" action="${pageContext.request.contextPath}/Travner?action=signup" id="signup" method="POST"></form>
           
    <div id="errorBox_name"></div>
        <input form="signup" type="text" name="Name" value="" placeholder="First Name"  class="input_name" >
<!--           <div id="errorBox_lastname"></div>-->
           <input form="signup" type="text" name="LastName" value="" placeholder="Last Name" class="input_name" >
    </div>
          
        <div id="errorBox_email"></div>
      <div id="email_form">
        <input form="signup" type="text" name="Email" value=""  placeholder="Your Email" class="input_email">
      </div>
          
          <div id="errorBox_password"></div>
        <div id="password_form">
        <input form="signup" type="password" name="Password" value=""  placeholder="New Password" class="input_password">
      </div>
          
          <div id="errorBox_repassword"></div>
      <div id="re_password_form">
        <input form="signup" type="text" name="enterPassword" value=""  placeholder="Re-enter Password" class="input_re_password">
      </div>
      
      <!--birthday details start-->
      <div>
        <h3 class="birthday_title">Birthday</h3>
      </div>
          <div id="errorBox_birthday"></div>
      <div>
        <select form="signup" name="birthday_month" >
          <option value="" selected >Month</option>
          <option value="1">Jan</option>
          <option value="2">Feb</option>
          <option value="3">Mar</option>
          <option value="4">Apr</option>
          <option value="5">May</option>
          <option value="6">Jun</option>
          <option value="7">Jul</option>
          <option value="8">Aug</option>
          <option value="9">Sep</option>
          <option value="10">Oct</option>
          <option value="11">Nov</option>
          <option value="12">Dec</option>
        </select>
        &nbsp;&nbsp;
        <select form="signup" name="birthday_day" >
          <option value="" selected>Day</option>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
          <option value="7">7</option>
          <option value="8">8</option>
          <option value="9">9</option>
          <option value="10">10</option>
          <option value="11">11</option>
          <option value="12">12</option>
          <option value="13">13</option>
          <option value="14">14</option>
          <option value="15">15</option>
          <option value="16">16</option>
          <option value="17">17</option>
          <option value="18">18</option>
          <option value="19">19</option>
          <option value="20">20</option>
          <option value="21">21</option>
          <option value="22">22</option>
          <option value="23">23</option>
          <option value="24">24</option>
          <option value="25">25</option>
          <option value="26">26</option>
          <option value="27">27</option>
          <option value="28">28</option>
          <option value="29">29</option>
          <option value="30">30</option>
          <option value="31">31</option>
        </select>
        &nbsp;&nbsp;
        <select form="signup" name="birthday_year">
          <option value="" selected>Year</option>
          <option value="2013">2013</option>
          <option value="2012">2012</option>
          <option value="2011">2011</option>
          <option value="2010">2010</option>
          <option value="2009">2009</option>
          <option value="2008">2008</option>
          <option value="2007">2007</option>
          <option value="2006">2006</option>
          <option value="2005">2005</option>
          <option value="2004">2004</option>
          <option value="2003">2003</option>
          <option value="2002">2002</option>
          <option value="2001">2001</option>
          <option value="2000">2000</option>
          <option value="1999">1999</option>
          <option value="1998">1998</option>
          <option value="1997">1997</option>
          <option value="1996">1996</option>
          <option value="1995">1995</option>
          <option value="1994">1994</option>
          <option value="1993">1993</option>
          <option value="1992">1992</option>
          <option value="1991">1991</option>
          <option value="1990">1990</option>
        </select>
      </div>
      <!--birthday details ends-->
<!--
      <div id="radio_button">
        <input type="radio" name="radiobutton" value="Female">
        <label >Female</label>
        &nbsp;&nbsp;&nbsp;
        <input type="radio" name="radiobutton" value="Male">
        <label >Male</label>
      </div>
-->
          <div>
        <p form="signup" id="sign_user" onClick="Submit()">Sign Up </p>
      </div>

          <div class="form-item">
        <a class='button glyphicon glyphicon-plus' href='#'></a>
                    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
                  <!-- <input type="button" class="close" value="Close">  -->
                    <p class="close"><a href="#"><small>Close</small></a></p>
                    <div class="clear-fix"></div>
          </div>
<!--
       <div class="form-item">
                    <a class='button glyphicon glyphicon-plus' onClick="Submit()"></a>
                    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
                    <input type="submit" class="login pull-right" value="Sign Up" onClick="Submit()">
                    <div class="clear-fix"></div>
                </div>
          
-->
          
          
     </form>
    </div>
    <form id="login" action="${pageContext.request.contextPath}/Travner?action=Login" method="POST"></form>
    <!--form ends-->
  </div>

<!--container ends-->
            </div>
        </div>
    </body>
</html>