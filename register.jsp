<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
 <head>
  <title>Holidays</title>
 <link rel="stylesheet" type="text/css"  href="css/header.css" />
 <link href="http://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link href="css/login.css" rel="stylesheet"/>
 </head>
 <body>
		<header>
		<!--NAVBAR STARTED-->
			<nav>
				<div class="row clearfix">
						<img src="static_images/pic.png" alt="logo" class="logo1">
						
						<ul class="main-nav animated slideInDown "  id="check-class">
							<li><a href="index.jsp"><b>HOME</b></a></li>
							<li><a href="about.jsp"><b>ABOUT</b></a></li>
							<li><a href="explore.jsp"><b>EXPLORE</b></a></li>
							<li><a href="select_city.jsp"><b>RESTAURANT</b></a></li>
							<li><a href="login.jsp"><b>SIGNIN</b></a></li>
						</ul>
						<a href="#" class="mobile-icon" onclick="slideshow()"><i class="fa fa-bars"></i></a>
				</div>
			</nav> 
			<!--NAVBAR END-->
			<!--fORM START-->
		<div class="header">
			<div>SignUp<span>Here</span></div>
		</div>
		<br>
		<div class="login">
			<form method="POST" action="register.do" id="regForm">
				<input type="text" placeholder="Name" id="uname" name="uname">
				<span id="unerr" class="errmsg"> name must be atleast 3 char</span></br></br>
				<input type="text" placeholder="email" id="email" name="email">
				<span id="emerr" class="errmsg"> invalid email</span><br>
				<input type="password" placeholder="password" id="password" name="password">
				<span id="perr" class="errmsg">len must be between 6-12 char</span><br>
				<input type="password" placeholder="confirm password" id="cpassword" name="cpassword">
				<span id="cperr" class="errmsg"> Password not match</span></br></br>
				<input type="radio" value="owner" name="logType"><label> Sign Up as Owner</label></br>
				<input type="radio" value="user" name="logType"><label> Sign Up  as User</label></br>

				<input type="submit" value="SignUp">
				</br>
			</form>
				<h2>Already registered?</br><a href="login.jsp"><span>Login</a></span></h2>
				<!--<h2><a href="forgot.jsp"><span>Forgot Password</a></span></h2>-->
			<h1><% String message= (String)request.getAttribute("message"); %>
            <% if(message!=null){ %>
            <div class="errmsg">
              <%= message %>
            </div>
            <% } %></h1>
		</div>
</header>
<!--fORM END-->
<!--FOOTER-->
<c:import url="footer.jsp"/>
<script type="text/javascript">
				function slideshow(){
					var x=document.getElementById('check-class');
					if(x.style.display === "none"){
							x.style.display= "block";
					}
					else{
							x.style.display= "none";
					}
				}
 </script>
 <script src="js/register.js"></script>
 </body>
</html>
