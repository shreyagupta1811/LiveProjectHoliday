<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <link rel="stylesheet" type="text/css"  href="css/my_rest_home.css" />
 <link href="http://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <title>Restaurant_Owner_Welcome</title>
 </head>
 <body>
		<div class="whole">
			<header>
			<nav>
				<div class="row clearfix">
						<img src="static_images/pic.png" alt="logo" class="logo1">
						
						<ul class="main-nav animated slideInDown " style="font-size:1vw;" id="check-class">
							<li><a href="my_rest_home.jsp"><b>HOME.</b></a></li>
							<li><a href="about.jsp"><b>ABOUT</b></a></li>
							<li><a href="explore.jsp"><b>EXPLORE</b></a></li>
							<li><a href="select_city.jsp"><b>RESTAURANT</b></a></li>
							<li><a href="logout.do"><b>LOGOUT</b></a></li>
						</ul>
						<a href="#" class="mobile-icon" onclick="slideshow()"><i class="fa fa-bars"></i></a>
				</div>
			</nav>
			</br></br></br></br></br></br></br></br></br></br></br></br>
			<div class="main-content-header">
			<h1 id="data"><span id="data2" class="color-change">Welcome To Your Restautrant Page</span></br></br>
			<% String ownerName=(String)session.getAttribute("ownername");%>
			 RESTAURANT OWNER - <%=ownerName%> <h1>
			<a href="dashboard.do" class="btn btn-full">View Your Restaurant</a>
			<a href="rest_register.jsp" class="btn btn-nav">Add New Restaurant</a>
			</div>
		</br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br>
		</header>

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


			<c:import url="footer.jsp" />

		</div>
 </body>
</html>
