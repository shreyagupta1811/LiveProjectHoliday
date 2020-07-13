<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="models.*"%>
<%@page import="java.util.*"%>
<!doctype html>
<html lang="en">
 <head>
  <title>Holidays</title>
 <link rel="stylesheet" type="text/css"  href="css/header.css" />
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
						
						<ul class="main-nav animated slideInDown " id="check-class">
							<li><a href="adminHome.jsp"><b>HOME.</b></a></li>
							<li><a href="about.jsp"><b>ABOUT</b></a></li>
							<li><a href="explore.jsp"><b>EXPLORE</b></a></li>
							<li><a href="select_city.jsp"><b>RESTAURANT</b></a></li>
							<li><a href="logout.do"><b>LOGOUT</b></a></li>
						</ul>
						<a href="#" class="mobile-icon" onclick="slideshow()"><i class="fa fa-bars"></i></a>
				</div>
				
			</nav>
			<%ArrayList<Accomodation>admin=(ArrayList) request.getAttribute("hotels");%>
			<div class="header">
				<section class="text-gray-700 body-font">
				  <div class="container px-5 py-24 mx-auto">
					<div class="flex flex-col text-center w-full mb-20">
					  <h1 class="sm:text-4xl text-3xl font-medium title-font mb-2 text-gray-900">All Hotels</h1>
					  <%String msg=(String)request.getAttribute("msg");%>
					  <%if(!(msg==null)){%>
					  <p class="lg:w-2/3 mx-auto leading-relaxed text-base" style="color:white;"><%=msg%></p>
					<%}%>
					</div>
					<div class="lg:w-2/3 w-full mx-auto overflow-auto">
					  <table class="table-auto w-full text-left whitespace-no-wrap">
						<thead>
						  <tr>
							<th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200 rounded-tl rounded-bl">ID</th>
							<th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200">Name</th>
							<th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200">City</th>
						  </tr>
						</thead>
						<tbody>
							<%for(Accomodation acc:admin){%>
						  <tr style="color:white;">
							<td class="px-4 py-3"><%=acc.getAccomodationId()%></td>
							<td class="px-4 py-3"><%=acc.getAccomodationName()%></td>
							<td class="px-4 py-3 text-lg text-gray-900" style="color:white;"><%=acc.getCity().getCityName()%></td>
							<td class="w-10 text-center">
							  <input name="plan" type="radio">

							</td>
						  </tr>
						  <%}%>
						</tbody>
					  </table>
					</div>
					<!--
					<div class="flex pl-4 mt-4 lg:w-2/3 w-full mx-auto">
					  <a class="text-indigo-500 inline-flex items-center md:mb-2 lg:mb-0">Learn More
						<svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
						  <path d="M5 12h14M12 5l7 7-7 7"></path>
						</svg>
					  </a>
					  <button class="flex ml-auto text-white bg-indigo-500 border-0 py-2 px-6 focus:outline-none hover:bg-indigo-600 rounded">Button</button>
					</div>
					-->
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
 <script src="js/getRest.js"></script>
 </body>
</html>
