<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
 <head>
  <title>INDORE</title>
 <link rel="stylesheet" type="text/css"  href="css/city.css" />
 <link rel="stylesheet" type="text/css"  href="css/footer.css" />
 <link href="http://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="icon" href="/tailblocks/favicon.png"/><meta name="viewport" content="width=device-width,initial-scale=1"/><meta name="theme-color" content="#000000"/><meta name="description" content="Web site created using create-react-app"/><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/1.4.6/tailwind.min.css"><link rel="manifest" href="/tailblocks/manifest.json"/><link href="/tailblocks/static/css/main.e64c1c7e.chunk.css" rel="stylesheet">
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
				

				
				<section class="text-gray-700 body-font">
						  <div class="container px-5 py-24 mx-auto section1-div">
							<div class="flex flex-col">
							  <!--<div class="h-1 bg-gray-200 rounded overflow-hidden">
								<!--<div class="w-24 h-full bg-indigo-500"></div>
							  </div>-->
							  <div class="flex flex-wrap sm:flex-row flex-col py-6 mb-12">
						<H1 class="sm:w-2/5 text-grey-900 font-medium title-font text-2xl mb-2 sm:mb-0 top-heading" align="center" style="color:white;font-size:5vw;margin-left:370px;position:relative;"><b>INDORE</b></h1>
							  </div>
							</div>
							<div class="flex flex-wrap sm:-m-4 -mx-4 -mb-10 -mt-4 ">
							  <div class="p-4 md:w-1/3 sm:mb-0 mb-6 disp">
								<div class="rounded-lg h-64 overflow-hidden">
								  <img class="object-cover object-center h-full w-full"  src="static_images/lp.jpg" alt="Lalbagh Palace">
								</div>
								<h2 class="text-xl font-medium title-font text-gray-900 mt-5">Lalbagh Palace</h2>
								<a href="#a"class="text-indigo-500 inline-flex items-center mt-3">Learn More
								  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
									<path d="M5 12h14M12 5l7 7-7 7"></path>
								  </svg>
								</a>
							  </div>
							  <div class="p-4 md:w-1/3 sm:mb-0 mb-6 disp">
								<div class="rounded-lg h-64 overflow-hidden">
								  <img  class="object-cover object-center h-full w-full" src="static_images/kg.jpg" alt="Khajrana Ganesh Temple">
								</div>
								<h2 class="text-xl font-medium title-font text-gray-900 mt-5">Khajrana Ganesh Temple</h2>
								<a href="#b" class="text-indigo-500 inline-flex items-center mt-3">Learn More
								  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
									<path d="M5 12h14M12 5l7 7-7 7"></path>
								  </svg>
								</a>
							  </div>
							  <div class="p-4 md:w-1/3 sm:mb-0 mb-6 disp">
								<div class="rounded-lg h-64 overflow-hidden">
								  <img class="object-cover object-center h-full w-full" src="static_images/km.jpg" alt="Kanch Mandir">
								</div>
								<h2 class="text-xl font-medium title-font text-gray-900 mt-5">Kanch Mandir</h2>
								<a href="#c" class="text-indigo-500 inline-flex items-center mt-3">Learn More
								  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
									<path d="M5 12h14M12 5l7 7-7 7"></path>
								  </svg>
								</a>
							  </div></br>
							  <div class="p-4 md:w-1/3 sm:mb-0 mb-6 disp2">
								<div class="rounded-lg h-64 overflow-hidden">
								  <img  class="object-cover object-center h-full w-full" src="static_images/rw.jpg" alt="Rajwada">
								</div>
								<h2 class="text-xl font-medium title-font text-gray-900 mt-5">Rajwada</h2>
								<a href="#d" class="text-indigo-500 inline-flex items-center mt-3">Learn More
								  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
									<path d="M5 12h14M12 5l7 7-7 7"></path>
								  </svg>
								</a>
							  </div>
							  <div class="p-4 md:w-1/3 sm:mb-0 mb-6 disp2">
								<div class="rounded-lg h-64 overflow-hidden">
								  <img  class="object-cover object-center h-full w-full"  src="static_images/pw.jpg" alt="Patalpani Waterfall">
								</div>
								<h2 class="text-xl font-medium title-font text-gray-900 mt-5">Patalpani Waterfall</h2>
								<a href="#e" class="text-indigo-500 inline-flex items-center mt-3">Learn More
								  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
									<path d="M5 12h14M12 5l7 7-7 7"></path>
								  </svg>
								</a>
							  </div>
							  <div class="p-4 md:w-1/3 sm:mb-0 mb-6 disp2">
								<div class="rounded-lg h-64 overflow-hidden">
								  <img class="object-cover object-center h-full w-full" src="static_images/at.jpg" alt="Annapurna Temple">
								</div>
								<h2 class="text-xl font-medium title-font text-gray-900 mt-5">Annapurna Temple</h2>
								<a href="#f" class="text-indigo-500 inline-flex items-center mt-3">Learn More
								  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
									<path d="M5 12h14M12 5l7 7-7 7"></path>
								  </svg>
								</a>
							  </div>
							</div>
						  </div>
						</section>

						


						<section class="text-gray-700 body-font">
						  <div class="container mx-auto flex px-5 py-24 items-center justify-center flex-col single">
							<img class="lg:w-2/6 md:w-3/6 w-5/6 mb-10 object-cover object-center rounded" src="static_images/lp.jpg" alt="Lalbagh Palace">
							<div class="text-center lg:w-2/3 w-full">
					<h1 id="a"class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900" >Lalbagh Palace</h1>
							  <p class="mb-8 leading-relaxed detail">Spread over an area of approximately 445 hectares, the ‘Van Vihar National Park’ is one of the most popular national parks in Central India, established in the year 1979. Considered as one of the best places to visit in Bhopal, the park is located just adjacent to the ‘Upper Lake’ and attracts loads of nature lovers, wildlife enthusiasts and nature photographers throughout the year. Though the park is actually a national park, on visiting it, you will get more of a zoological feel to it, rather it would be more appropriate to call it as a unique mix of a zoo and a wildlife sanctuary; on one side, you would spot the carnivores such as tigers, leopards, panthers, lions, bears and gharials enclosed in their natural habitats, bounded by trenches and walls, on the other end, this park would give you a completely different experience of spotting the herbivores like chital, blackbucks and sambars roaming about freely in their natural environs.</p>
							<a  href="#top" class="text-indigo-500 inline-flex items-center mt-3">Go to top
								  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
									<path d="M5 12h14M12 5l7 7-7 7"></path>
								  </svg>
								</a>
							</div>
						  </div>
						</section>

						<section class="text-gray-700 body-font">
						  <div class="container mx-auto flex px-5 py-24 items-center justify-center flex-col single">
							<img class="lg:w-2/6 md:w-3/6 w-5/6 mb-10 object-cover object-center rounded" src="static_images/kg.jpg" alt="Khajrana Ganesh Temple">
							<div class="text-center lg:w-2/3 w-full">
							  <h1 id="b" class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900">Khajrana Ganesh Temple</h1>
							  <p class="mb-8 leading-relaxed detail">Highly revered by the local population, this beautiful Ganesh temple was built by the benevolent queen Ahilyabai Holkar. It is said that she built this powerful shrine to protect the idol of Lord Ganesh from the wrath of Aurangzeb. With a towering Ganesha statue and smaller temples dedicated to other deities, the beautiful and well-maintained temple complex exudes and aura of serenity and spirituality. This undoubtedly is one of the best places in Indore for stealing some tranquil moments and seeking blessings of the almightyWith a towering Ganesha statue and smaller temples dedicated to other deities, the beautiful and well-maintained temple complex exudes and aura of serenity and spirituality. This undoubtedly is one of the best places in Indore for stealing some tranquil moments and seeking blessings of the almighty</p>
							<a  href="#top" class="text-indigo-500 inline-flex items-center mt-3">Go to top
								  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
									<path d="M5 12h14M12 5l7 7-7 7"></path>
								  </svg>
								</a>
							</div>
						  </div>
						</section>

						<section class="text-gray-700 body-font">
						  <div class="container mx-auto flex px-5 py-24 items-center justify-center flex-col single">
							<img class="lg:w-2/6 md:w-3/6 w-5/6 mb-10 object-cover object-center rounded" src="static_images/km.jpg" alt="Kanch Mandir">
							<div class="text-center lg:w-2/3 w-full">
							  <h1 id="c"class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900">Kanch Mandir</h1>
							  <p class="mb-8 leading-relaxed  detail">Located close to Rajwada Palace, you can add this unique Jain temple to your Indore sightseeing list. Though not a huge temple, its beauty lies in the fact that the entire temple is made of Belgian stained glass and mirrors – from the floor to the ceilings, stairs and walls, everything is crafted out of gleaming glass pieces, giving it an aura of opulence. The dazzling domed ceiling displays intricate designs crafted from glass pieces. Its grandeur is enhanced manifold when it is lit up with lights and candles on certain Jain festivals like Mahavir Jayanti.The dazzling domed ceiling displays intricate designs crafted from glass pieces. Its grandeur is enhanced manifold when it is lit up with lights and candles on certain Jain festivals like Mahavir Jayanti.The dazzling domed ceiling displays intricate designs crafted from glass pieces. Its grandeur is enhanced manifold when it is lit up with lights and candles on certain Jain festivals like Mahavir Jayanti.</p>
							<a  href="#top" class="text-indigo-500 inline-flex items-center mt-3">Go to top
								  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
									<path d="M5 12h14M12 5l7 7-7 7"></path>
								  </svg>
								</a>
							</div>
						  </div>
						</section>

						<section class="text-gray-700 body-font">
						  <div class="container mx-auto flex px-5 py-24 items-center justify-center flex-col single">
							<img class="lg:w-2/6 md:w-3/6 w-5/6 mb-10 object-cover object-center rounded" src="static_images/rw.jpg" alt="Rajwada">
							<div class="text-center lg:w-2/3 w-full">
							  <h1 id="d" class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900">Rajwada</h1>
							  <p class="mb-8 leading-relaxed detail">This seven-storeyed historic attraction is the royal residence of Holkar dynasty, built in 1747AD by the founder of Holkar dynasty, Malhar Rao Holkar. The majestic structure is a fine example of the grandeur and architectural skills during the Holkar rule. Located in the heart of the old city, the 200-year Rajwada palace has influences of Maratha, Muslim and French styles of architecture.You can take a peek into the splendour of the bygone era while walking through the museum inside this popular Indore sightseeing spot. Let the rich baritone of Mr. Amitabh Bachchan’s voice take you on a journey through the story of the first Holkar king and the history of Indore, with the mesmerising light and sound show at 6:30PM You can take a peek into the splendour of the bygone era while walking through the museum inside this popular Indore sightseeing spot. Let the rich baritone of Mr. Amitabh Bachchan’s voice take you on a journey through the story of the first Holkar king and the history of Indore, with the mesmerising light and sound show at 6:30PM </p>
							<a  href="#top" class="text-indigo-500 inline-flex items-center mt-3">Go to top
								  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
									<path d="M5 12h14M12 5l7 7-7 7"></path>
								  </svg>
								</a>
							</div>
						  </div>
						</section>

						<section class="text-gray-700 body-font">
						  <div class="container mx-auto flex px-5 py-24 items-center justify-center flex-col single">
							<img class="lg:w-2/6 md:w-3/6 w-5/6 mb-10 object-cover object-center rounded"  src="static_images/pw.jpg" alt="Patalpani Waterfall">
							<div class="text-center lg:w-2/3 w-full">
							  <h1 id="e" class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900">Patalpani Waterfall</h1>
							  <p class="mb-8 leading-relaxed  detail">This stunning waterfall is one of the top picks amongst Indore picnic spots for its natural beauty and picturesque setting. Located about 30 kms away from the city, you can witness the splendour of Patalpani waterfalls in the monsoon months. This is the perfect place in the rainy season to sit and enjoy some freshly roasted corn-cobs, soak in the breathtaking views and stare with wonder at the jaw-dropping 300-feet fall. A railway line passing along the area adds to the charm of the place. This is the perfect place in the rainy season to sit and enjoy some freshly roasted corn-cobs, soak in the breathtaking views and stare with wonder at the jaw-dropping 300-feet fall. A railway line passing along the area adds to the charm of the place. </p>
							  <a  href="#top" class="text-indigo-500 inline-flex items-center mt-3">Go to top
								  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
									<path d="M5 12h14M12 5l7 7-7 7"></path>
								  </svg>
								</a>
							</div>
						  </div>
						</section>


						<section class="text-gray-700 body-font">
						  <div class="container mx-auto flex px-5 py-24 items-center justify-center flex-col single">
							<img class="lg:w-2/6 md:w-3/6 w-5/6 mb-10 object-cover object-center rounded" src="static_images/at.jpg" alt="Annapurna Temple">
							<div class="text-center lg:w-2/3 w-full">
							  <h1 id="f" class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900">Annapurna Temple</h1>
							  <p class="mb-8 leading-relaxed  detail">The Annapurna temple is visited by thousand of devotees and tourists every year. The shrine is not just a place of pilgrimage for the spiritually inclined, but also one of the most popular places to visit in Indore. Its grand facade and architectural beauty stand out even from a distance. Dedicated to Goddess Annapurna, the deity of food, this magnificent temple has four life-size elephant sculptures guarding the entrance. A rare depiction of the 4-vedas in the Vedhshala is another reason to visit the temple and spend some peaceful moments in the presence of divinity..Dedicated to Goddess Annapurna, the deity of food, this magnificent temple has four life-size elephant sculptures guarding the entrance. A rare depiction of the 4-vedas in the Vedhshala is another reason to visit the temple and spend some peaceful moments in the presence of divinity..</p>
							  <a  href="#top" class="text-indigo-500 inline-flex items-center mt-3">Go to top
								  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
									<path d="M5 12h14M12 5l7 7-7 7"></path>
								  </svg>
								</a>
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