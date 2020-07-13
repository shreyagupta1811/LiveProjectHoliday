<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
 <head>
  <title>About</title>
 <link rel="stylesheet" type="text/css"  href="css/about.css" />
 <link href="http://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="icon" href="/tailblocks/favicon.png"/><meta name="viewport" content="width=device-width,initial-scale=1"/><meta name="theme-color" content="#000000"/><meta name="description" content="Web site created using create-react-app"/><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/1.4.6/tailwind.min.css">
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
			<div class="display-content">
						<section class="text-white-700 body-font section1">
							  <div class="container px-5 py-24 mx-auto div1">
								<div class="xl:w-1/2 lg:w-3/4 w-full mx-auto text-center">
								<p align="center" id="p"><b>OUR MISSION</b></p></br>
								  <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="inline-block w-8 h-8 text-gray-400 mb-8" viewBox="0 0 975.036 975.036">
									<path d="M925.036 57.197h-304c-27.6 0-50 22.4-50 50v304c0 27.601 22.4 50 50 50h145.5c-1.9 79.601-20.4 143.3-55.4 191.2-27.6 37.8-69.399 69.1-125.3 93.8-25.7 11.3-36.8 41.7-24.8 67.101l36 76c11.6 24.399 40.3 35.1 65.1 24.399 66.2-28.6 122.101-64.8 167.7-108.8 55.601-53.7 93.7-114.3 114.3-181.9 20.601-67.6 30.9-159.8 30.9-276.8v-239c0-27.599-22.401-50-50-50zM106.036 913.497c65.4-28.5 121-64.699 166.9-108.6 56.1-53.7 94.4-114.1 115-181.2 20.6-67.1 30.899-159.6 30.899-277.5v-239c0-27.6-22.399-50-50-50h-304c-27.6 0-50 22.4-50 50v304c0 27.601 22.4 50 50 50h145.5c-1.9 79.601-20.4 143.3-55.4 191.2-27.6 37.8-69.4 69.1-125.3 93.8-25.7 11.3-36.8 41.7-24.8 67.101l35.9 75.8c11.601 24.399 40.501 35.2 65.301 24.399z"></path>
								  </svg>
								  <p class="leading-relaxed text-lg">Our vision behind this platform is to provide customer a best place where they get every facality from planning holidays to decide a delicious food of their choice.We devide our whole website into three different module ,the first one is EXPLORE section that offers you best places in every famous city,our next section is PACKAGE provide you a planned trip you only need to choose your days with your expected budget & our last section provide you best option of restaurants in every city with delicious taste and high level of hygene.</p>
								</div>
							  </div>
							</section>
							


							<section class="text-gray-700 body-font section2">
								  <div class="container px-5 py-24 mx-auto">
								  <p align="center" id="p1"><b>OUR SUPPORT</b></p></br></br>
									<div class="flex flex-wrap -m-4">
									<!--<p align="center" id="p"><b>OUR SUPPORT</b></p></br>-->
									  <div class="p-4 md:w-1/3 ">
										<div class="h-full border-2 border-gray-200 rounded-lg overflow-hidden disp">
										  <img class="lg:h-48 md:h-36 w-full object-cover object-center" src="static_images/about2.jpg" alt="blog">
										  <div class="p-6">
											<h1 class="title-font text-lg font-medium text-gray-900 mb-3 head"><p>EXPLORE</p></h1>
											<p class="leading-relaxed mb-3">We provide you the best destination to plan an amazinf trip with your friends & family in affordable price.</p>
											<div class="flex items-center flex-wrap ">
											  <a href="explore.jsp" style="color:blue">Learn Nore</a>
											</div>
										  </div>
										</div>
									  </div>
									  <div class="p-4 md:w-1/3">
										<div class="h-full border-2 border-gray-200 rounded-lg overflow-hidden  disp">
										  <img class="lg:h-48 md:h-36 w-full object-cover object-center" src="static_images/about3.jpg" alt="blog">
										  <div class="p-6">
											<h1 class="title-font text-lg font-medium text-gray-900 mb-3 head"><p>PACKAGES</p></h1>
											<p class="leading-relaxed mb-3">Our package section provides full facility and plan your trip in scheduled way to maximum utilize your Holiday and and make fun.</p>
											<div class="flex items-center flex-wrap">
											 <a href="allPack.jsp" style="color:blue">Learn Nore</a>
											</div>
										  </div>
										</div>
									  </div>
									  <div class="p-4 md:w-1/3">
										<div class="h-full border-2 border-gray-200 rounded-lg overflow-hidden  disp">
										  <img class="lg:h-48 md:h-36 w-full object-cover object-center" src="static_images/images.jpg" alt="blog">
										  <div class="p-6">
											<h1 class="title-font text-lg font-medium text-gray-900 mb-3 head"><p>RESTAURANTS</p></h1>
											<p class="leading-relaxed mb-3">We provide you immense option with different cultural foods and best taste in afforadle price with best hygene.</p>
											<div class="flex items-center flex-wrap ">
											 <a href="allRest.jsp" style="color:blue">Learn Nore</a>
											</div>
										  </div>
										</div>
									  </div>
									</div>
								  </div>
								</section></br></br>


								<section class="text-gray-700 body-font">
								  <div class="container px-5 py-24 mx-auto ">
										<p align="center" id="p1"><b>OUR TEAM</b></p>
									<div class="flex flex-wrap -m-4 section3">
									  <div class="lg:w-1/3 lg:mb-0 mb-6 p-4 section3-div1">
										<div class="h-full text-center">
										  <img alt="testimonial" class="w-20 h-20 mb-8 object-cover object-center rounded-full inline-block border-2 border-gray-200 bg-gray-100" src="static_images/member1.jpg">
										  <p class="leading-relaxed">He is 3rd year Undergraduate student persuing B.tech from Gyan Ganga College Of Technology ,Jabalpur from C.S department.Highly intrested in the field of full-stack development and having expertise in JAVA.Apart from this he is good in C/C++ ,MySQL,HTML,CSS and JS.</p>
										  <span class="inline-block h-1 w-10 rounded bg-indigo-500 mt-6 mb-4"></span>
										  <h2 class="text-black-900 font-medium title-font tracking-wider text-sm info">VISHAL AGRAHARI</h2>
										  <p class="text-black-500">FullStack Developer</p>
										</div>
									  </div>
									  <div class="lg:w-1/3 lg:mb-0 mb-6 p-4 section3-div2" >
										<div class="h-full text-center">
										  <img alt="testimonial" class="w-20 h-20 mb-8 object-cover object-center rounded-full inline-block border-2 border-gray-200 bg-gray-100" src="static_images/member3.jpg">
										  <p class="leading-relaxed">She is 3rd year Undergraduate student persuing B.tech from Gyan Ganga College Of Technology ,Jabalpur from C.S department.Highly intrested in the field of full-stack development and having expertise in JAVA.Apart from this he is good in C/C++ ,MySQL,HTML,CSS and JS.</p>
										  <span class="inline-block h-1 w-10 rounded bg-indigo-500 mt-6 mb-4"></span>
										  <h2 class="text-black-900 font-medium title-font tracking-wider text-sm info">SHREYA GUPTA</h2>
										  <p class="text-black-500 ">FullStack Developer</p>
										</div>
									  </div>
									</div>
								  </div>
								</section>



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
	<c:import url="footer.jsp" />
 </body>
</html>