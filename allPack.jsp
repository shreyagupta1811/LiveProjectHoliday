<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="models.*"%>
<%@page import="java.util.*"%>
<!doctype html>
<html lang="en">
 <head>
  <title>Holidays</title>
 <link rel="stylesheet" type="text/css"  href="css/all_Pack.css" />
 <link href="http://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <meta name="viewport" content="width=device-width,initial-scale=1"/>
<meta name="theme-color" content="#000000"/>
<meta name="description" content="Web site created using create-react-app"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/1.4.6/tailwind.min.css">
<link rel="stylesheet" href="css/button.css">
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
			<%ArrayList<Packagee>packs=(ArrayList) request.getAttribute("packs");%>
		<div class="header">
			<section class="text-gray-700 body-font">
  <div class="container px-5 py-24 mx-auto ">
    <div class="flex flex-col text-center w-full mb-20">
      <h1 class="text-2xl font-medium title-font mb-4 text-gray-900 tracking-widest" style="color:black;"><b>CHOOSE BEST PACKAGE FOR YOUR TRIP</b></h1>
	  <div style="display:inline">
		<h1 style="color:black;"><b>Choose cateogry</b></h1>
		<form method="post" action="pack_categ.do">
			<button type="submit" name="categ"  value="0" class="btn success">All</button>
			<button type="submit" value="1" name="categ"  class="btn info">Religous</button>
			<button type="submit" value="2"   name="categ"   class="btn warning">Adventure</button>
			<button type="submit" value="3" name="categ"   class="btn danger">Family Vacation</button>
			<button type="submit" value="4" name="categ" class="btn default">Honeymooon</button>
		</form>
      </div></br>
	  <p class="lg:w-2/3 mx-auto leading-relaxed text-base" style="color:black;font-size:25px;"><b><%=(String)request.getAttribute("cat")%> Packages</b></p>
    </div>
    <div class="flex flex-wrap -m-4" style="color:white;">
		<%if(!(packs==null)){%>
			<%for(Packagee pack:packs){%>
				<div class="p-4 lg:w-1/2 disp" style="color:white; ">
					<div class="h-full flex sm:flex-row flex-col items-center sm:justify-start justify-center text-center sm:text-left">
					  <img alt="team" class="flex-shrink-0 rounded-lg w-48 h-48 object-cover object-center sm:mb-0 mb-4 image"  src="<%=pack.getDispImg()%>">
					  <div class="flex-grow sm:pl-8">
						<h2 class="title-font font-medium text-lg text-gray-900" style="color:white;"><%=pack.getPackageName()%></h2>
						<h3 class="text-gray-500 mb-3">No of Days:<%=pack.getDays()%></h3>
						<p class="mb-4">Price<%=pack.getCost()%> per person</p>
						<a href="view_more_pack.do?pack_id=<%=pack.getPackageId()%>"><p class="mb-4">Click Here for more info </p></a>
						<span class="inline-flex">
						  <a class="text-gray-500">
							<svg fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
							  <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
							</svg>
						  </a>
						  <a class="ml-2 text-gray-500">
							<svg fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
							  <path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z"></path>
							</svg>
						  </a>
						  <a class="ml-2 text-gray-500">
							<svg fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
							  <path d="M21 11.5a8.38 8.38 0 01-.9 3.8 8.5 8.5 0 01-7.6 4.7 8.38 8.38 0 01-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 01-.9-3.8 8.5 8.5 0 014.7-7.6 8.38 8.38 0 013.8-.9h.5a8.48 8.48 0 018 8v.5z"></path>
							</svg>
						  </a>
						</span>
					  </div>
					</div>
				</div>
			<%}%>
		<%}else{%>
			<%=(String)request.getAttribute("msg")%>
		<%}%>
    </div>
  </div>
</section>		
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

 
 <script src="js/rest_gallery.js"></script>
 </body>
</html>

