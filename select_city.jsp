<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
 <head>
  <title>Holidays</title>
 <link rel="stylesheet" type="text/css"  href="css/select_city.css" />
   
 <link href="http://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
			
			<div class="main-content-header"></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br>
			<h1 id="data"><span id="data2" class="color-change" style="color:white;font-size:25px;">EXPLORE RESTAURANTS IN VARIOUS CITIES!!!</span></br></br></br></br></br>
					<div id="box">
						<form method="Post" action="collect_rest.do" id="form1">
							<input type="text"  id = "fld" name="ct_name" /><button style="font-size:17px" form="form1" type="submit" value="submit"><i class="fa fa-search"></i></button>
							<!--<i class="fa fa-search"><input type="submit" style="font-size:17px"></i>-->
						</form>
					<div id="records"></div>
					</div>
					<div id="details"></div>
				
					<%String msg=(String)request.getAttribute("msg");%>
					  <%if(!(msg==null)){%>
					  <h2 class="lg:w-2/3 mx-auto leading-relaxed text-base" style="color:white;font-size:2vw;"><%=msg%></h2>
					<%}%>
			</div>
</br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br>
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
 <script src="js/select_city.js"></script>
 <script src="js/test.js"></script>
 </body>
</html>
