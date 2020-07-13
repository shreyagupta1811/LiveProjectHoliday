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
							<li><a href="index.jsp"><b>HOME</b></a></li>
							<li><a href="about.jsp"><b>ABOUT</b></a></li>
							<li><a href="explore.jsp"><b>EXPLORE</b></a></li>
							<li><a href="select_city.jsp"><b>RESTAURANT</b></a></li>
							<li><a href="login.jsp"><b>SIGNIN</b></a></li>
						</ul>
						<a href="#" class="mobile-icon" onclick="slideshow()"><i class="fa fa-bars"></i></a>
				</div>
			</nav>
 
		<div class="header">
			<div>Login<span>Here</span></div>
		</div>
		<br>
		<div class="login">
				<form method="POST" action="login.do">
				<input type="text" placeholder="username or email" name="email" required></br>
				<input type="password" placeholder="password" name="password" required></br></br>
				<input type="radio" value="owner" name="logType"required><label> login as Owner</label></br>
				<input type="radio" value="user" name="logType"required><label> login as User</label>
				</br>
				<input type="submit" id="button" value="Login">
				</br>
				
				<h2>New User?</br><a href="register.jsp"><span>Create new account</a></span></h2>
				<h2><a href="forgot.jsp"><span>Forgot Password</a></span></h2>
				</form>
			<% String message= (String)request.getAttribute("message"); %>
            <% if(message!=null){ %>
            <div class="errmsg">
              <h1><%= message %></h1>
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
 </body>
</html>
