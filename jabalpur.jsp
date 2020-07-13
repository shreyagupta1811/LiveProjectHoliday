<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
 <head>
  <title>Jabalpur</title>
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
				

				
				<section class="text-gray-700 body-font" id="Top">
						  <div class="container px-5 py-24 mx-auto section1-div">
							<div class="flex flex-col">
							  <!--<div class="h-1 bg-gray-200 rounded overflow-hidden">
								<!--<div class="w-24 h-full bg-indigo-500"></div>
							  </div>-->
							  <div class="flex flex-wrap sm:flex-row flex-col py-6 mb-12">
						<H1 class="sm:w-2/5 text-grey-900 font-medium title-font text-2xl mb-2 sm:mb-0 top-heading" align="center" style="color:white;font-size:5vw;margin-left:370px;position:relative;"><b>JABALPUR</b></h1>
							  </div>
							</div>
							<div class="flex flex-wrap sm:-m-4 -mx-4 -mb-10 -mt-4 ">
							  <div class="p-4 md:w-1/3 sm:mb-0 mb-6 disp">
								<div class="rounded-lg h-64 overflow-hidden">
								  <img class="object-cover object-center h-full w-full" src="static_images/df.jpg" alt="Dhuandhar Falls">
								</div>
								<h2 class="text-xl font-medium title-font text-gray-900 mt-5">Dhuandhar Falls</h2>
								<a  href="#a"class="text-indigo-500 inline-flex items-center mt-3">Learn More
								  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
									<path d="M5 12h14M12 5l7 7-7 7"></path>
								  </svg>
								</a>
							  </div>
							  <div class="p-4 md:w-1/3 sm:mb-0 mb-6 disp">
								<div class="rounded-lg h-64 overflow-hidden">
								  <img  class="object-cover object-center h-full w-full" src="static_images/mm.jpg" alt="Madan Mahal Fort">
								</div>
								<h2 class="text-xl font-medium title-font text-gray-900 mt-5">Madan Mahal Fort</h2>
								<a  href="#b" class="text-indigo-500 inline-flex items-center mt-3">Learn More
								  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
									<path d="M5 12h14M12 5l7 7-7 7"></path>
								  </svg>
								</a>
							  </div>
							  <div class="p-4 md:w-1/3 sm:mb-0 mb-6 disp">
								<div class="rounded-lg h-64 overflow-hidden">
								  <img class="object-cover object-center h-full w-full" src="static_images/dn.jpg" alt="Dumna Nature Reserve Park">
								</div>
								<h2 class="text-xl font-medium title-font text-gray-900 mt-5">Dumna Nature Reserve Park</h2>
								<a href="#c" class="text-indigo-500 inline-flex items-center mt-3">Learn More
								  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
									<path d="M5 12h14M12 5l7 7-7 7"></path>
								  </svg>
								</a>
							  </div></br>
							  <div class="p-4 md:w-1/3 sm:mb-0 mb-6 disp2">
								<div class="rounded-lg h-64 overflow-hidden">
								  <img  class="object-cover object-center h-full w-full" src="static_images/pk.jpg" alt="Pisanhari ki Madiya">
								</div>
								<h2 class="text-xl font-medium title-font text-gray-900 mt-5">Pisanhari ki Madiya</h2>
								<a href="#d" class="text-indigo-500 inline-flex items-center mt-3">Learn More
								  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
									<path d="M5 12h14M12 5l7 7-7 7"></path>
								  </svg>
								</a>
							  </div>
							  <div class="p-4 md:w-1/3 sm:mb-0 mb-6 disp2">
								<div class="rounded-lg h-64 overflow-hidden">
								  <img  class="object-cover object-center h-full w-full" src="static_images/rd.jpg" alt="Rani Durgavati Museum">
								</div>
								<h2 class="text-xl font-medium title-font text-gray-900 mt-5">Rani Durgavati Museum</h2>
								<a href="#e" class="text-indigo-500 inline-flex items-center mt-3">Learn More
								  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
									<path d="M5 12h14M12 5l7 7-7 7"></path>
								  </svg>
								</a>
							  </div>
							  <div class="p-4 md:w-1/3 sm:mb-0 mb-6 disp2">
								<div class="rounded-lg h-64 overflow-hidden">
								  <img class="object-cover object-center h-full w-full" src="static_images/br.jpg" alt="Balancing Rock">
								</div>
								<h2 class="text-xl font-medium title-font text-gray-900 mt-5">Balancing Rock</h2>
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
							<img class="lg:w-2/6 md:w-3/6 w-5/6 mb-10 object-cover object-center rounded"  src="static_images/df.jpg" alt="Dhuandhar Falls">
							<div class="text-center lg:w-2/3 w-full">
					<h1 class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900" id="a" >Dhuandhar Falls</h1>
							  <p class="mb-8 leading-relaxed detail">The Dhuandhar Falls are located on Narmada River in Bhedaghat and are 30 meters high. The Narmada River, making its way through the world-famous Marble Rocks, narrows down and then plunges in a waterfall known as Dhuandhaar. The plunge, which creates a bouncing mass of mist, is so powerful that its roar is heard from a far distance. The best time to visit Dhuandhar falls is during in Sharad Purnima, when Narmada Mahotsava get celebrated. The white marbles appears spectacular when the moon light falls on it and give it a silver appearance. Once in Dhuandhar don't forget to have a pleasure on boat ride in the valley of white marble which appears yellow during sunsets .</p>
							
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
							<img class="lg:w-2/6 md:w-3/6 w-5/6 mb-10 object-cover object-center rounded"src="static_images/mm.jpg" alt="Madan Mahal Fort">
							<div class="text-center lg:w-2/3 w-full">
							  <h1 class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900" id="b">Madan Mahal Fort</h1>
							  <p class="mb-8 leading-relaxed detail">Situated atop a hill in Jabalpur town is a small but enchanting fort of the Rajgond rulers. It was more of a manned post on vigil for invaders now enveloped in shroud of history. The fort dates back to 11th century AD. The fort is well associated with Rani Durgavati the Gond Queen and her son Veer Narayan. Rani Durgavati eventually died fighting the Moguls and is hailed as a martyr in Indian history. She also built numerous temples and tanks scattered around Jabalpur chiefly around her Garha principality.The Rajgond rulers reigned over Jabalpur, Mandla and surrounding regions. Madan Mahal is one such fort built by them. Though not exactly an architectural marvel, the little fort is characterized by intrigue of ancient monuments in India. The structure generates an aura of awe being compact and yet fully equipped for martial encounters. The stable, war rooms, small reservoir and main pleasure chamber of the rulers offer visitors much to see and admire. The monument is situated at a height of about five hundred meters on the hill of same name. The Balancing Rock is a huge stone balanced on the tip of another. It is a geological wonder on the way to the fort.</p>
							
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
							<img class="lg:w-2/6 md:w-3/6 w-5/6 mb-10 object-cover object-center rounded" src="static_images/dn.jpg" alt="Dumna Nature Reserve Park">
							<div class="text-center lg:w-2/3 w-full">
							  <h1 class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900" id="c">Dumna Nature Reserve Park</h1>
							  <p class="mb-8 leading-relaxed  detail">Nadin Falls makes a perfect vacation spot for all the nature enthusiasts and adventure seekers. Adventure activity like trekking can be taken up by interested visitors to track the entire distance of the falls. A long hike across the lush green surroundings of the falls can also be a fun activity that can be considered. Visitors can also relax and soothe themselves by taking a plunge in the fresh water of the river. It becomes a perfect picnic spot during the months of September and October as the water dries up. The falls can be visited between the sunrise and sunset. Staying after sunset is not advisable. The best time to visit is between 6:00 AM - 7:30 PM. The luxuriate experience of the Nadin Falls is free for all visitors.</p>
							
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
							<img class="lg:w-2/6 md:w-3/6 w-5/6 mb-10 object-cover object-center rounded" src="static_images/pk.jpg" alt="Pisanhari ki Madiya">
							<div class="text-center lg:w-2/3 w-full">
							  <h1 class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900" id="d">Pisanhari ki Madiya</h1>
							  <p class="mb-8 leading-relaxed detail">Pisanhari Ki Madiya</b> is a famous Jain pilgrimage located near the Netaji Subhash Chandra Bose Medical College in Jabalpur. It is known since last 500 years for its extra ordinary story of a dedicated and God loving women who built it Pisanhari Ki Madiya is believed to be built by a lady whose name is lost in history. Once she heard the preaching of a Jain monk and was inspired to built a Jain temple. But she was poor and 
grinding of wheat floor by hand driven grinder was the only source of income for her. But she didn&#39;t lose hope and worked harder to earn more. When she collected sufficient money she went on the hill top and began building the temple.With the little help of the other villagers she  completed the Jain temple. But she was left with no money to install gold pots on the top of pinnacle. Thus she decided to place her last assets the two stones of her floor grinder on the top of pinnacle.The stones places by the women are still present on the temple thus symbolizing her dedication. To pay a tribute to her this  place is named “Pisanhari ki Marhiyaa”, meaning the temple of the -Pisanhari (the woman preparing wheat floor on hand operated stone-mill). The Pisanhari Ki Madiya is full of lush greenery and  eye catching beautiful hilly area. The surrounding is perfect for meditation and other rituals.  It is a very </p>
							
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
							<img class="lg:w-2/6 md:w-3/6 w-5/6 mb-10 object-cover object-center rounded" src="static_images/rd.jpg" alt="Rani Durgavati Museum">
							<div class="text-center lg:w-2/3 w-full">
							  <h1 class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900" id="e">Rani Durgavati Museum</h1>
							  <p class="mb-8 leading-relaxed  detail">The museum located Bhavartal garden near of bus stand. This historical city is well connected with big cities like Delhi, Varanasi, Allahabad, Kanpur, Nagpur, Sagar, etc. by road as well as rail route. Jabalpur region has very rich historical background since time immemorial. The minor rock edict, Rupanath of Ashoka is located in this region. After Mauryas this region was ruled by the Sunga, Satavahana, Kushana, Sakas. The Satavahana stone inscription of Shivghosh, contain information of Ashwamedh Yagya procured from Baghora and Kushana inscription on Yakshi image, are the important source of regional history of Jabalpur region. Copper plates of Buddha Gupta & Jaya Natha are important source of Gupta period. DahalaMandala was the capital of Kalchuris of Tripuri who rules in this region for abput 500 years. Later on Sangram Saha, Dalpati Saha and Rani Durgawati were the brave rulers of Gaund dynasty. Jabalpur was said to have been Jauli-Pattal or Jabalipattan during Kalchuri period. During this period temples, mathas, and sculptures were erected with great magnitude. Among these art centres of Bilhari, Karitalai, Tigwan, Tewar, and Bheraghat are most noteworthy.</p>
							
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
							<img class="lg:w-2/6 md:w-3/6 w-5/6 mb-10 object-cover object-center rounded" src="static_images/br.jpg" alt="Balancing Rock">
							<div class="text-center lg:w-2/3 w-full">
							  <h1 class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900" id="f">Balancing Rock</h1>
							  <p class="mb-8 leading-relaxed  detail">A balancing rock, also called balanced rock or precarious boulder, is a naturally occurring geological formation featuring a large rock or boulder, sometimes of substantial size, resting on other rocks, bedrock, or on glacial till. Some formations known by this name only appear to be balancing, but are in fact firmly connected to a base rock by a pedestal or stem</p>
							
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
