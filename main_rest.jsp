<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="models.*"%>
<%@page import="java.util.*"%>
<!doctype html>
<html lang="en">
 <head>
  <title>Holidays</title>
 <link rel="stylesheet" type="text/css"  href="css/main_rest.css" />
 <link href="http://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta charset="utf-8"/><link rel="icon" href="/tailblocks/favicon.png"/><meta name="viewport" content="width=device-width,initial-scale=1"/><meta name="theme-color" content="#000000"/><meta name="description" content="Web site created using create-react-app"/><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/1.4.6/tailwind.min.css"><link rel="manifest" href="/tailblocks/manifest.json"/>
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
			<%RestRegister rr=(RestRegister)session.getAttribute("records");%>
			<%ArrayList<RestFood> menu=(ArrayList)session.getAttribute("menu");%>
			<%ArrayList<String> path=(ArrayList)session.getAttribute("path");%>
			
			<div class="display-content">
						<section class="text-gray-700 body-font">
							  <div class="container px-5 py-24 mx-auto flex flex-wrap" id="top-div">
								<!--<div class="flex w-full mb-20 flex-wrap">
								  <h1 class="sm:text-3xl text-2xl font-medium title-font text-gray-900 lg:w-1/3 lg:mb-0 mb-4">Master Cleanse Reliac Heirloom</h1>
								  <p class="lg:pl-6 lg:w-2/3 mx-auto leading-relaxed text-base">Whatever cardigan tote bag tumblr hexagon brooklyn asymmetrical gentrify, subway tile poke farm-to-table. Franzen you probably haven't heard of them man bun deep jianbing selfies heirloom.</p>
								</div>-->
				<h1 class="top-heading">VISIT OUR RESTAURANT AND EXPLORE ITS DELICIOUS MENU</h1>
								<div class="flex flex-wrap md:-m-2 -m-1">
								  <div class="flex flex-wrap w-1/2">
									<div class="md:p-2 p-1 w-1/2">
									  <img alt="gallery" class="w-full object-cover h-full object-center block image" src="<%= path.get(0)%>" >
									</div>
									<div class="md:p-2 p-1 w-1/2">
									  <img alt="gallery" class="w-full object-cover h-full object-center block image" src="<%= path.get(1)%>">
									</div>
									<div class="md:p-2 p-1 w-full">
									  <img alt="gallery" class="w-full h-full object-cover object-center block image" src="<%= path.get(2)%>">
									</div>
								  </div>
								  <div class="flex flex-wrap w-1/2">
									<div class="md:p-2 p-1 w-full">
									  <img alt="gallery" class="w-full h-full object-cover object-center block image " src="<%= path.get(3)%>">
									</div>
									<div class="md:p-2 p-1 w-1/2">
									  <img alt="gallery" class="w-full object-cover h-full object-center block image" src="<%= path.get(4)%>">
									</div>
									<div class="md:p-2 p-1 w-1/2">
									  <img alt="gallery" class="w-full object-cover h-full object-center block image" src="<%= path.get(4)%>">
									</div>
								  </div>
								</div>
							  </div>
						</section>


						<section class="text-gray-500 bg-gray-900 body-font overflow-hidden">
									  <div class="container px-5 py-24 mx-auto">
										<div class="lg:w-4/5 mx-auto flex flex-wrap">
										  <img alt="ecommerce" class="lg:w-1/2 w-full lg:h-auto h-64 object-cover object-center rounded image" id="pic"
										  src="<%= rr.getDispImg()%> ">
										  <div class="lg:w-1/2 w-full lg:pl-10 lg:py-6 mt-6 lg:mt-0">
											<h1 class="text-white text-3xl title-font font-medium mb-1">Details Of <%= rr.getRestName()%></h1>
											<div class="flex mb-4">
											  <!--<span class="flex items-center">
												<svg fill="currentColor" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 text-indigo-500" viewBox="0 0 24 24">
												  <path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"></path>
												</svg>
												<svg fill="currentColor" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 text-indigo-500" viewBox="0 0 24 24">
												  <path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"></path>
												</svg>
												<svg fill="currentColor" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 text-indigo-500" viewBox="0 0 24 24">
												  <path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"></path>
												</svg>
												<svg fill="currentColor" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 text-indigo-500" viewBox="0 0 24 24">
												  <path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"></path>
												</svg>
												<svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 text-indigo-500" viewBox="0 0 24 24">
												  <path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"></path>
												</svg>
												<span class="text-gray-500 ml-3">4 Reviews</span>
											  </span>-->
											  <span class="flex ml-3 pl-3 py-2 border-l-2 border-gray-800 text-gray-600">
												<a>
												  <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
													<path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
												  </svg>
												</a>
												<a class="ml-2">
												  <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
													<path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z"></path>
												  </svg>
												</a>
												<a class="ml-2">
												  <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
													<path d="M21 11.5a8.38 8.38 0 01-.9 3.8 8.5 8.5 0 01-7.6 4.7 8.38 8.38 0 01-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 01-.9-3.8 8.5 8.5 0 014.7-7.6 8.38 8.38 0 013.8-.9h.5a8.48 8.48 0 018 8v.5z"></path>
												  </svg>
												</a>
											  </span>
											</div>
											<div class="flex mt-6 items-center pb-5 border-b-2 border-gray-800 mb-5">
											 <h2>1.RestaurantName - <%= rr.getRestName()%></br>
												2.Address - <%= rr.getRestAddress()%></br>
												3.Contact - <%= rr.getRestContact()%></br>
												4.OpeningTime - <%= rr. getOpTime()%></br>
												 5.ClosingTime - <%= rr.getClTime()%></br></h2>
											</div>
											<div class="flex">
											  <button class="flex ml-auto text-white bg-indigo-500 border-0 py-2 px-6 focus:outline-none hover:bg-indigo-600 rounded">ORDER FOOD</button>
											</div>
										  </div>
										</div>
									  </div>
									</section>

									
									<section class="text-gray-700 body-font" id="last-section">
										  <div class="container px-5 py-24 mx-auto">
											<div class="flex flex-col text-center w-full mb-20">
											  <h1 class="sm:text-4xl text-3xl font-medium title-font mb-2 text-gray-900">MENU CARD</h1>
											</div>
											<div class="lg:w-2/3 w-full mx-auto overflow-auto" id="table-div">
											  <table class="table-auto w-full text-left whitespace-no-wrap">
												<thead>
												  <tr>
													<th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200 rounded-tl rounded-bl">FOOD ITEMS</th>
													<th class="px-4 py-3 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200">PRICE</th>
													<th class="w-10 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-200 rounded-tr rounded-br"></th>
												  </tr>
												</thead>
												<tbody>
											<%for(RestFood rf:menu){%>
												  <tr>
													<td class="px-4 py-3"><%=rf. getTempFoodName()%></td>
													<td class="px-4 py-3 text-lg text-gray-900"><%=rf. getFoodPrice()%></td>
													<td class="w-10 text-center">
													  <input name="plan" type="radio">
													</td>
												  </tr>
											<%}%>
												 <!-- <tr>
													<td class="border-t-2 border-gray-200 px-4 py-3">Pro</td>
													<td class="border-t-2 border-gray-200 px-4 py-3 text-lg text-gray-900">$24</td>
													<td class="border-t-2 border-gray-200 w-10 text-center">
													  <input name="plan" type="radio">
													</td>
												  </tr>
												  <tr>
													<td class="border-t-2 border-gray-200 px-4 py-3">Business</td>
													<td class="border-t-2 border-gray-200 px-4 py-3 text-lg text-gray-900">$50</td>
													<td class="border-t-2 border-gray-200 w-10 text-center">
													  <input name="plan" type="radio">
													</td>
												  </tr>
												  <tr>
													<td class="border-t-2 border-b-2 border-gray-200 px-4 py-3">Exclusive</td>
													<td class="border-t-2 border-b-2 border-gray-200 px-4 py-3 text-lg text-gray-900">$72</td>
													<td class="border-t-2 border-b-2 border-gray-200 w-10 text-center">
													  <input name="plan" type="radio">
													</td>
												  </tr>-->
												</tbody>
											  </table>
											</div>
											<div class="flex pl-4 mt-4 lg:w-2/3 w-full mx-auto">
											  <button class="flex ml-auto text-white bg-indigo-500 border-0 py-2 px-6 focus:outline-none hover:bg-indigo-600 rounded">ORDER FOOD</button>
											</div>
										 </div>
										</section>


					</div></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br>
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
 
 <script src="js/rest_gallery.js"></script>
	<c:import url="footer.jsp" />
 </body>
</html>



