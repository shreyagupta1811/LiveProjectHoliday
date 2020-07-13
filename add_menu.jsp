<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <link rel="stylesheet" type="text/css"  href="css/my_rest_home.css" />
 <link href="http://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="js/add_menu.js"></script>
 <link rel="stylesheet" type="text/css" href="css/add_menu.css">
  <title>ADD_MENU_PAGE</title>
 </head>
 <body>
		<div class="whole">
			<header>
			<nav>
				<div class="row clearfix">
						<img src="static_images/pic.png" alt="logo" class="logo1">
						
						<ul class="main-nav animated slideInDown " style="font-size:1vw;" id="check-class">
							<li><a href="my_rest_home.jsp"><b>HOME.</b></a></li>
							<li><a href="about.jsp"><b>ABOUT</b></a></li>
							<li><a href="explore.jsp"><b>EXPLORE</b></a></li>
							<li><a href="select_city.jsp"><b>RESTAURANT</b></a></li>
							<li><a href="logout.do"><b>LOGOUT</b></a></li>
						</ul>
						<a href="#" class="mobile-icon" onclick="slideshow()"><i class="fa fa-bars"></i></a>
				</div>
			</nav>
			</br></br></br></br></br></br></br></br></br></br></br></br></br>
			<div class="main-content-header">
			<h1 id="data"><span id="data2" class="color-change">Welcome To Restautrant MENU</span></br>
			
			<% String ownerName=(String)session.getAttribute("ownername");%>
			<h2> Restaurant ownerName - <%=ownerName%> <h2>
			<% String restName=(String)session.getAttribute("restName");%>
			<h2> Restaurant Name - <%=restName%> <h2></br>


			<h1 id="data"><span id="data2" class="color-change">Welcome To Restautrant MENU</span></br></br>
			

			<a href="#" class="btn btn-full"><span id="add">ADD MENU</span></a>
			<a href="view_menu.do" class="btn btn-nav">VIEW EXISTING MENU</a>


			<div id="menu_box" style="visibility:hidden;" >
				<table  id="form1" >
						<thead>
							<th>Categories</th>
							<th>Select</th>
						</thead>
						<tbody id="rec">
							
						</tbody>
						<tr>
						  <td colspan="2"><input type="button" value="Choose"  id="chsbtn"/></td>
						 </tr>
				</table>
		</div>
		<div  id="item_box" style="visibility:hidden;">
			<form action="save_menu.do" method="get">	
				<table   id="bbb" >
					<thead>
						<tr>
							<th>Food Items</th>
							<th>Price</th>
						</tr>
						</thead>
						<tbody id="rec2">
							
						</tbody>
						<tr>
							<td colspan="2"><input type="submit" value="Save Menu" /></td>
						 </tr>
				</table>
		</div>



			</div>
</br></br></br></br></br></br></br></br></br>
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

		</div>
 </body>
</html>

