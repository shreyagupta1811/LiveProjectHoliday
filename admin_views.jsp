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
						
						<ul class="main-nav animated slideInDown "  id="check-class">
							<li><a href="#"><b>HOME</b></a></li>
							<li><a href="#"><b>ABOUT</b></a></li>
							<li><a href="#"><b>EXPLORE</b></a></li>
							<li><a href="#"><b>RESTAURANT</b></a></li>
							<li><a href="#"><b>SIGNIN</b></a></li>
						</ul>
						<a href="#" class="mobile-icon" onclick="slideshow()"><i class="fa fa-bars"></i></a>
				</div>
				
			</nav>
			<%int id=(int)request.getParameter("id");%>
			<%if(id==1){%>
			<%ArrayList<RestRegister>admin=(ArrayList) request.getAttribute("rests");%>
			<%}%>
			<%elseif(id==2){%>
			<%ArrayList<Packagee>admin=(ArrayList)request.getParameter("packs");%>
			<%}%>
			<%elseif(id==3){%>
			<%ArrayList<Hotel>admin=(ArrayList)request.getParameter("hotels");%>
			<%}%>
			<%elseif(id==4){%>
			<%ArrayList<User>admin=(ArrayList)request.getParameter("users");%>
			<%}%>
			<div class="header">
				<section class="text-gray-700 body-font">
				  <div class="container px-5 py-24 mx-auto">
					<div class="flex flex-col text-center w-full mb-20">
					  <h1 class="sm:text-4xl text-3xl font-medium title-font mb-2 text-gray-900">Pricing</h1>
					  <p class="lg:w-2/3 mx-auto leading-relaxed text-base">Banh mi cornhole echo park skateboard authentic crucifix neutra tilde lyft biodiesel artisan direct trade mumblecore 3 wolf moon twee</p>
					</div>
					<div class="lg:w-2/3 w-full mx-auto overflow-auto">
					  <table class="table-auto w-full text-left whitespace-no-wrap">
						<thead>
						  <tr>
							<th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200 rounded-tl rounded-bl">Plan</th>
							<th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200">Speed</th>
							<th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200">Storage</th>
							<th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200">Price</th>
							<th class="w-10 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200 rounded-tr rounded-br"></th>
						  </tr>
						</thead>
						<tbody>
						  <tr>
							<td class="px-4 py-3">Start</td>
							<td class="px-4 py-3">5 Mb/s</td>
							<td class="px-4 py-3">15 GB</td>
							<td class="px-4 py-3 text-lg text-gray-900">Free</td>
							<td class="w-10 text-center">
							  <input name="plan" type="radio">
							</td>
						  </tr>
						  <tr>
							<td class="border-t-2 border-gray-200 px-4 py-3">Pro</td>
							<td class="border-t-2 border-gray-200 px-4 py-3">25 Mb/s</td>
							<td class="border-t-2 border-gray-200 px-4 py-3">25 GB</td>
							<td class="border-t-2 border-gray-200 px-4 py-3 text-lg text-gray-900">$24</td>
							<td class="border-t-2 border-gray-200 w-10 text-center">
							  <input name="plan" type="radio">
							</td>
						  </tr>
						  <tr>
							<td class="border-t-2 border-gray-200 px-4 py-3">Business</td>
							<td class="border-t-2 border-gray-200 px-4 py-3">36 Mb/s</td>
							<td class="border-t-2 border-gray-200 px-4 py-3">40 GB</td>
							<td class="border-t-2 border-gray-200 px-4 py-3 text-lg text-gray-900">$50</td>
							<td class="border-t-2 border-gray-200 w-10 text-center">
							  <input name="plan" type="radio">
							</td>
						  </tr>
						  <tr>
							<td class="border-t-2 border-b-2 border-gray-200 px-4 py-3">Exclusive</td>
							<td class="border-t-2 border-b-2 border-gray-200 px-4 py-3">48 Mb/s</td>
							<td class="border-t-2 border-b-2 border-gray-200 px-4 py-3">120 GB</td>
							<td class="border-t-2 border-b-2 border-gray-200 px-4 py-3 text-lg text-gray-900">$72</td>
							<td class="border-t-2 border-b-2 border-gray-200 w-10 text-center">
							  <input name="plan" type="radio">
							</td>
						  </tr>
						</tbody>
					  </table>
					</div>
					<div class="flex pl-4 mt-4 lg:w-2/3 w-full mx-auto">
					  <a class="text-indigo-500 inline-flex items-center md:mb-2 lg:mb-0">Learn More
						<svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
						  <path d="M5 12h14M12 5l7 7-7 7"></path>
						</svg>
					  </a>
					  <button class="flex ml-auto text-white bg-indigo-500 border-0 py-2 px-6 focus:outline-none hover:bg-indigo-600 rounded">Button</button>
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
 <script src="js/getRest.js"></script>
 </body>
</html>
