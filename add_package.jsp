<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="css/index.css" />
		<link rel="stylesheet" type="text/css"  href="css/my_rest_home.css" />
		 <link rel="stylesheet" type="text/css"  href="css/select_city.css" /> 
	<link href="http://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css"  href="css/rest_form.css" / >
       
		<title>Package register</title>
    </head>
    <body>

	 <% String errmsg = (String)request.getAttribute("err_msg"); %>

            <% if(errmsg!=null){ %>
            <div style="color:red">
              <%= errmsg %>
            </div>
            <% } %> 

			<div class="whole">
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
					</br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br>
					<div class="main-content-header">
					
					<h1><span id="data3">ADD NEW PACKAGE</span></h1>
								<div class="form-div" style="font-size:15px;">
											<form action="add_pack.do"method="POST" id="regform" enctype="multipart/form-data">
														<table class="form-table">
																<tr>
																		<td>Package name:</td>
																		<td><input type="text" name="pacname" id="pacname"/></td>
																</tr>
																<tr>
														<td>Type Category:</br></td>
		<td style="font-size:12px;">religious:<input type="radio" name="typecategory" value="religious" />Honeymoon:<input type="radio" name="typecategory" value="Honeymoon" /></br>Family Vacation:<input type="radio" name="typecategory" value="Family Vacation"/>
		Adventurous:<input type="radio" name="typecategory" value="Adventurous" /></td>

																</tr>
																<tr>
																		<td>Accomodation:</td>
																		<td><input type="text" name="accomodation" id="fld"/></td>
																		<td>
																		<div id="records"></div>
																		</div>
																		</td>
																</tr>
																<tr>
																		<td>Days:</td>
																		<td><input type="text" name="day" id="day" /></td>
																</tr>
																<tr>
																		<td>Cost:</td>
																		<td><input type="text" name="cost" id="cost" /></td>
																</tr>
																<tr>
																		<td>Start-End point:</td>
																		<td><input type="text" name="sepoint" id="sepoint"/></td>
																</tr>
																<tr>
																		<td>Food:</td>
																		<td>	<input type="text" name="food" id="food" /></td>
																</tr>
																<tr>
																		<td>Place Visit:</td>
																		<td>
																				<input type="text" name="placevisit" id="placevisit"/>
																		</td>
																</tr>
																<tr>
																		<td>Transport:</td>
																		<td>
																					<input type="text" name="transport" id="transport"/>
																		</td>
																</tr> 
													
															
													
													<tr>
															<td>Contact No:</td>
															<td><input type="text" name="number" id="number" /></td>
													</tr>
      												<tr>
      													<td>Package Details:</td>
															<td><input type="text" name="details" id="detail"/></td>					
      												</tr>
													<tr>
															<td>Display Image:</td>
															<td><input type="file" name="display_image" id="display_image" /></td>
													</tr>
													<tr>
														<td>Package Images(select atleast 6 images):</td>
														<td>
															<div id="box">
																<input type="file" name="img" id="file1">
															</div>
														</td>
													</tr> 
													<tr>
															<td><input type="button" value="add more pictures" id="pic" /></td>
															<td></td>
													</tr>
														<tr>
															<td><input type="submit" value="Register"/></td>
														</tr>
														</table>
											</form>	
								</div>
					</div>
</br></br></br></br></br></br></br></br></br></br></br></br></br></br>
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
				
       <script src="js/pacAcc.js"></script>

    </body>
</html>

 


