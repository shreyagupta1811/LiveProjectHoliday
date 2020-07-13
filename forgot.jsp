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
			<nav>
				<div class="row clearfix">
						<img src="static_images/pic.png" alt="logo" class="logo1">
						
						<ul class="main-nav animated slideInDown "  id="check-class">
							<li><a href="home.jsp"><b>HOME</b></a></li>
							<li><a href="about.jsp"><b>ABOUT</b></a></li>
							<li><a href="explore.jsp"><b>EXPLORE</b></a></li>
							<li><a href="select_city.jsp"><b>RESTAURANT</b></a></li>
							<li><a href="login.jsp"><b>SIGNIN</b></a></li>
						</ul>
						<a href="#" class="mobile-icon" onclick="slideshow()"><i class="fa fa-bars"></i></a>
				</div>
			</nav>
 
		<div class="header">
			<div>Forgot Password<span></span></div>
		</div>
		<br><br><br><br>
		<div class="login">
				<form method="POST" action="forget.do">
				<label>Password will be send to linked account</label>
				<input type="text" placeholder="username or email" name="email" id="email"></br>
				</br>
				<input type="submit" id="sb" value="forgot password">
				</br>
		
			<% String message= (String)request.getAttribute("message"); %>
            <% if(message!=null){ %>
            <div class="errmsg">
              <%= message %>
            </div>
            <% } %> 
		</div>
</header>
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
 <!--<script type="text/javascript" src="js/forgot.js"></script>-->
 </body>
</html>
