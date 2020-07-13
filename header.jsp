<!doctype html>
<html lang="en">
 <head>
  <title>Holidays</title>
 <link rel="stylesheet" type="text/css"  href="css/header.css" />
 <link href="http://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
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
			
			<div class="main-content-header">
			<h1 id="data"><span id="data2" class="color-change">HAPPY HOLIDAYS</span></br>
			We help you find the best places to travel,</br>shop, eat & drink across the world.</h1>
			<a href="explore.jsp" class="btn btn-full">Click to Explore</a>
			<a href="select_city.jsp" class="btn btn-nav">Click for Restaurants</a>
			<a href="show_pack.do" class="btn btn-nav">Click for Packages</a>
			</div>

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
 </body>
</html>


<!--<!doctype html>
<html lang="en">
 <head>
  <title>Holidays</title>
 <link rel="stylesheet" type="text/css"  href="css/header.css" />
 <link rel="stylesheet" type="text/css"  href="css/icon.css" />
 <link rel="stylesheet" type="text/css"  href="css/footer.css" />
 <link href="http://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

 </head>
 <body>
		<header>
			<nav>
				<div class="row clearfix">
						<img src="images/pic.png" alt="logo" class="logo">
						
						<ul class="main-nav animated slideInDown "  id="check-class">
							<li><a href="#"><b>HOME</b></a></li>
							<li><a href="#"><b>ABOUT</b></a></li>
							<li><a href="#"><b>EXPLORE</b></a></li>
							<li><a href="#"><b>RESTAURANT</b></a></li>
							<li><a href="#"><b>SIGNIn</b></a></li>
						</ul>
						<a href="#" class="mobile-icon" onclick="slideshow()"><i class="fa fa-bars"></i></a>
				</div>
			</nav>
			
			<div class="main-content-header">
			<h1 id="data"><span id="data2" class="color-change">HAPPY HOLIDAYS</span></br>
			We help you find the best places to travel,</br>shop, eat & drink across the world.</h1>
			<a href="#" class="btn btn-full">Click to Explore</a>
			<a href="#" class="btn btn-nav">Click for Restaurants</a>
			</div>

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
 </body>
 
</html>-->
