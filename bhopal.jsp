<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
 <head>
  <title>BHOPAL</title>
 <link rel="stylesheet" type="text/css"  href="css/city.css" />
 <link rel="stylesheet" type="text/css"  href="css/footer.css" />
 <link href="http://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="icon" href="/tailblocks/favicon.png"/><meta name="viewport" content="width=device-width,initial-scale=1"/><meta name="theme-color" content="#000000"/><meta name="description" content="Web site created using create-react-app"/><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/1.4.6/tailwind.min.css"><link rel="manifest" href="/tailblocks/manifest.json"/>
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
						<H1 id="top"class="sm:w-2/5 text-grey-900 font-medium title-font text-2xl mb-2 sm:mb-0 top-heading" align="center"
						style="color:white;font-size:2.5vw;margin-left:370px;position:relative;"><b>CITY OF LAKE- BHOPAL</b></h1>
							  </div>
							</div>
							<div class="flex flex-wrap sm:-m-4 -mx-4 -mb-10 -mt-4 ">
							  <div class="p-4 md:w-1/3 sm:mb-0 mb-6 disp">
								<div class="rounded-lg h-64 overflow-hidden">
								  <img class="object-cover object-center h-full w-full"  src="static_images/vv.png" alt="Van Vihar National Park">
								</div>
								<h2 class="text-xl font-medium title-font text-gray-900 mt-5">Van Vihar National Park</h2>
								<a href="#a"class="text-indigo-500 inline-flex items-center mt-3">Learn More
								  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
									<path d="M5 12h14M12 5l7 7-7 7"></path>
								  </svg>
								</a>
							  </div>
							  <div class="p-4 md:w-1/3 sm:mb-0 mb-6 disp">
								<div class="rounded-lg h-64 overflow-hidden">
								  <img  class="object-cover object-center h-full w-full" src="static_images/bt.jpg" alt="Bhojpur Temple">
								</div>
								<h2 class="text-xl font-medium title-font text-gray-900 mt-5">Bhojpur Temple</h2>
								<a href="#b" class="text-indigo-500 inline-flex items-center mt-3">Learn More
								  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
									<path d="M5 12h14M12 5l7 7-7 7"></path>
								  </svg>
								</a>
							  </div>
							  <div class="p-4 md:w-1/3 sm:mb-0 mb-6 disp">
								<div class="rounded-lg h-64 overflow-hidden">
								  <img class="object-cover object-center h-full w-full"src="static_images/nm.jpg" alt="National Museum of Mankind">
								</div>
								<h2 class="text-xl font-medium title-font text-gray-900 mt-5">National Museum of Mankind</h2>
								<a href="#c"class="text-indigo-500 inline-flex items-center mt-3">Learn More
								  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
									<path d="M5 12h14M12 5l7 7-7 7"></path>
								  </svg>
								</a>
							  </div></br>
							  <div class="p-4 md:w-1/3 sm:mb-0 mb-6 disp2">
								<div class="rounded-lg h-64 overflow-hidden">
								  <img  class="object-cover object-center h-full w-full" src="static_images/sa.jpg" alt="State Archaeological Museum">
								</div>
								<h2 class="text-xl font-medium title-font text-gray-900 mt-5">State Archaeological Museum</h2>
								<a href="#d" class="text-indigo-500 inline-flex items-center mt-3">Learn More
								  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
									<path d="M5 12h14M12 5l7 7-7 7"></path>
								  </svg>
								</a>
							  </div>
							  <div class="p-4 md:w-1/3 sm:mb-0 mb-6 disp2">
								<div class="rounded-lg h-64 overflow-hidden">
								  <img  class="object-cover object-center h-full w-full" src="static_images/bb.jpg" alt="Birla Museum">
								</div>
								<h2 class="text-xl font-medium title-font text-gray-900 mt-5">Birla Museum</h2>
								<a href="#e"class="text-indigo-500 inline-flex items-center mt-3">Learn More
								  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
									<path d="M5 12h14M12 5l7 7-7 7"></path>
								  </svg>
								</a>
							  </div>
							  <div class="p-4 md:w-1/3 sm:mb-0 mb-6 disp2">
								<div class="rounded-lg h-64 overflow-hidden">
								  <img class="object-cover object-center h-full w-full" src="static_images/ln.jpg" alt="Lakshmi Narayan Temple">
								</div>
								<h2 class="text-xl font-medium title-font text-gray-900 mt-5">Lakshmi Narayan Temple</h2>
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
							<img class="lg:w-2/6 md:w-3/6 w-5/6 mb-10 object-cover object-center rounded"   src="static_images/vv.png" alt="Van Vihar National Park">
							<div class="text-center lg:w-2/3 w-full">
							  <h1 id="a"class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900" >Van Vihar National Park</h1>
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
							<img class="lg:w-2/6 md:w-3/6 w-5/6 mb-10 object-cover object-center rounded" src="static_images/bt.jpg" alt="Bhojpur Temple">
							<div class="text-center lg:w-2/3 w-full">
							  <h1 id="b"class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900">Bhojpur Temple</h1>
							  <p class="mb-8 leading-relaxed detail">Yet another of the most popular places to see and visit during your holidays in Bhopal is the ancient ‘Bhojpur Temple’, also known as ‘Bhojeshwar Temple’ built in 11th century AD during the reign of Raja Bhoj. Dedicated to lord Shiva, the temple is located in the heart of the archeologically important site of Bhojpur, just 28 km. from the city of Bhopal. The religious significance of this ancient temple is such high that it is often referred to as ‘Somnath of the East’ and pilgrims from different corners of the country travel here in huge numbers to pay their homage to the God. The Shivlinga at this temple is the largest stone structure in the world and is carved from a single rock, measuring 7.5 ft. in height and 18 ft. in circumference. Standing on a 21 ft. tall platform, devotees are only able to access the Shivlinga by climbing an iron staircase. Talking about the architecture of this exquisite temple, it was built in accordance to the principles of Vastu Shastra and is decorated with an intricately carved arch at the entrance..</p>
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
							<img class="lg:w-2/6 md:w-3/6 w-5/6 mb-10 object-cover object-center rounded" src="static_images/nm.jpg" alt="National Museum of Mankind">
							<div class="text-center lg:w-2/3 w-full">
							  <h1 id="c" class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900">National Museum of Mankind</h1>
							  <p class="mb-8 leading-relaxed  detail">Nadin Falls makes a perfect vacation spot for all the nature enthusiasts and  Also famous as the ‘Tribal Habitat Museum’, the ‘National Museum of Mankind’ was established in 1977. In 1993, this museum was renamed as Indira Gandhi Rashtriya Manav Sangrahalaya, at the instance of the Ex- Prime Minister, Late Mrs. Indira Gandhi. Spread over an area of 200 acres of land, close to the ‘Upper Lake’ amidst Shamla Hills in Bhopal, the museum is the only one of its kind in India and is world-famous to house an excellent collection of pre-historic rock shelters dating back to the early stone-age era that prevailed on the Indian sub-continent in bygone times. Elaborately detailed dioramas here, provide you with a deep insight into human evolution from pre-historic times until today’s modern age.</p>
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
							<img class="lg:w-2/6 md:w-3/6 w-5/6 mb-10 object-cover object-center rounded" src="static_images/sa.jpg" alt="State Archaeological Museum">
							<div class="text-center lg:w-2/3 w-full">
							  <h1 id="d" class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900">State Archaeological Museum</h1>
							  <p class="mb-8 leading-relaxed detail">Pisanhari Ki Madiya</b> is a famous Jain pilgrimage located near the Netaji If history, culture and ancient art is what that interests you, the ‘State Archaeological Museum’, located in close proximity to the ‘National Museum of Mankind’ is a place just for your kinds in Bhopal. Inaugurated in November 2005, this museum is one of the most significant museums in the city showcasing the rich cultural heritage and legacy of Madhya Pradesh in the form of rare ancient paintings, sculptures and other objects of historical and archaeological significance. As you enter the museum, walk into the age of pre-historic men and get to see some of the most well-preserved fossils from their times, marvel on an excellent collection of paintings copied and brought from the famous ‘Bagh Caves’ near Mandu, get awe-struck with a colossal statue of Lord Buddha on display or admire the art and craftsmanship of sculptors of olden times who brought to life, the sensual romance of ‘Khajuraho’. </p>
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
							<img class="lg:w-2/6 md:w-3/6 w-5/6 mb-10 object-cover object-center rounded" src="static_images/bb.jpg" alt="Birla Museum">
							<div class="text-center lg:w-2/3 w-full">
							  <h1 id="e"class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900">Birla Museum</h1>
							  <p class="mb-8 leading-relaxed  detail">Bhopal is dotted with an endless number of museums and galleries showcasing the enriching history and past glory of this princely state of Madhya Pradesh. While ‘Museum of Mankind’ and ‘State Archaeological Museum’ are the top two of such attractions in the city, there is yet another museum that is sure to leave you spellbound with its antique collection of objects and artefacts dating back to Palaeolithic and Neolithic periods. One of its kind museums in Bhopal, set amidst serene environs of Arera Hills, the ‘Birla Museum’ preserves a huge collection of rare tools and equipment used by the primitive men during the stone-age. A scale model of Bhimbetka rock shelters is also an interesting highlight of the museum that gives you a deep insight into the excellent artistic abilities of the pre-historic humans. .</p>
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
							<img class="lg:w-2/6 md:w-3/6 w-5/6 mb-10 object-cover object-center rounded" src="static_images/ln.jpg" alt="Lakshmi Narayan Temple">
							<div class="text-center lg:w-2/3 w-full">
							  <h1 id="f"class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900">Lakshmi Narayan Temple</h1>
							  <p class="mb-8 leading-relaxed  detail">A trip to Bhopal remains incomplete without visiting the famous and architecturally stunning temple of Lakshmi Narayan, also known as ‘Birla Mandir’. One of the 18 temples built across India by the renowned Birla family, the ‘Birla Mandir’ at Bhopal adorns the sandy-yellowish outlook and sits atop the Arera Hills, in close proximity to the ‘Birla Museum’, providing breath-taking views of the surroundings and the lakes. The sprawling lawns dotted with beautiful fountains and beds of colourful flowers surround the grandiose structure, further lending it a picturesque appeal and tranquil atmosphere; one can sit in these expansive lawns for hours gazing at the hypnotic architecture of the temple and soaking his souls in spiritual aura of the place..</p>
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

