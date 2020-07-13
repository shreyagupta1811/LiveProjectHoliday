<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <link rel="stylesheet" type="text/css"  href="css/my_rest_home.css" />
 <link href="http://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <title>Welcome_Admin</title>
 </head>
 <body>
		<div class="whole">
			<header>
			<nav>
				<div class="row clearfix">
						<img src="static_images/pic.png" alt="logo" class="logo1">
						
						<ul class="main-nav animated slideInDown " style="font-size:1.2vw;" id="check-class">
							<li><a href="adminHome.jsp"><b>HOME.</b></a></li>
							<li><a href="about.jsp"><b>ABOUT</b></a></li>
							<li><a href="explore.jsp"><b>EXPLORE</b></a></li>
							<li><a href="select_city.jsp"><b>RESTAURANT</b></a></li>
							<li><a href="logout.do"><b>LOGOUT</b></a></li>
						</ul>
						<a href="#" class="mobile-icon" onclick="slideshow()"><i class="fa fa-bars"></i></a>
				</div>
			</nav>
</br></br></br></br></br></br></br></br></br></br></br></br></br></br>			
			<div class="main-content-header">
			<h1 id="data"><span id="data2" class="color-change">Welcome To Admin DashBoard</span></br></br>
			<% String ownerName=(String)session.getAttribute("ownername");%>
			 AUTHERIZED TO - <%=ownerName%> <h1>
			<a href="admin_views.do?id=1" class="btn btn-full">View Restaurants</a>
			<a href="admin_views.do?id=2" class="btn btn-full">View Packages</a>
			<a href="admin_views.do?id=3" class="btn btn-full">View Hotels</a>
			<a href="admin_views.do?id=4" class="btn btn-full">View Users</a></br></br>
			<a href="add_accomodation.jsp" class="btn btn-nav" style="border: 1px solid white;color:white">Add Hotels</a>&nbsp;
			<a href="add_package.jsp" class="btn btn-nav"  style="border: 1px solid white;color:white">Add Package</a>
			</div>
		</br></br></br></br></br></br></br></br></br></br></br></br></br></br>
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

