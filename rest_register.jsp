<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="css/index.css" />
		<link rel="stylesheet" type="text/css"  href="css/my_rest_home.css" />
	<link href="http://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css"  href="css/rest_form.css" / >
		<script src="js/rest.js"></script>
        <title>Resturant register</title>
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
								
								<ul class="main-nav animated slideInDown "  id="check-class" style="font-size:1.2vw;">
									<li><a href="my_rest_home.jsp"><b>HOME</b></a></li>
									<li><a href="about.jsp"><b>ABOUT</b></a></li>
									<li><a href="explore.jsp"><b>EXPLORE</b></a></li>
									<li><a href="select_city.jsp"><b>RESTAURANT</b></a></li>
									<li><a href="logout.do"><b>LOGOUT</b></a></li>
								</ul>
								<a href="#" class="mobile-icon" onclick="slideshow()"><i class="fa fa-bars"></i></a>
						</div>
					</nav>
					
					<div class="main-content-header"></br></br></br></br></br></br></br></br></br></br></br></br>
					<h1 id="data"><b><span id="data2" class="color-change">HAPPY HOLIDAYS</span></b></h1>
					<h1><span id="data3">ADD YOUR NEW RESTAURANT</span></h1>
								<div class="form-div">
											<form action="Restaurant.do"method="post" id="regform" enctype="multipart/form-data">
														<table class="form-table">
																<tr>
																		<td>Restaurant name:</td>
																		<td><input type="text" name="restName" id="restName" required/></td>
																</tr>
																<tr>
																		<td>City:</td>
																		<td><select name="city" id="city" required>
																				<option>jabalpur</option>
																				<option>Bhopal</option>
																				<option>Indore</option>
																				</select>
																		</td>
																</tr>
																<tr>
																		<td>Restaurant Address:</td>
																		<td><input type="text" name="restAddress" id="restAddress" required/></td>
																</tr>
																<tr>
																		<td>Restaurant Contact no:</td>
																		<td><input type="text" name="restContact" id="restContact" required/>
																				<span id="conterr" class="errmsg">Invalid Contact must be eqaul to character</span>
																		</td>
																</tr>
																<tr>
																		<td>Opening Time:</td>
																		<td><input type="time" name="optime" required/></td>
																</tr>
																<tr>
																		<td>Closing Time</td>
																		<td><input type="time" name="cltime" required/></td>
																</tr>
																<tr>
																		<td>Category:</td>
																		<td>
																					Chinese<input type="checkbox" name="category1" value="Chinese" />&nbsp &nbsp&nbsp
																					South Indian<input type="checkbox" name="category2" value="South Indian" /></br>
																					North Indian<input type="checkbox" name="category3" value="North Indian" />&nbsp &nbsp&nbsp
																					Italian<input type="checkbox" name="category4" value="Italian" />
																		</td>
																</tr>
																<tr>
																		<td>Display Image:</td>
																		<td>
																				<input type="file" name="disp_img" required>
																		</td>
																</tr>
																<tr>
																		<td>Restaurant Image:(select atleast 6 images)</td>
																		<td>
																					<div id="box">
																					<input type="file" name="img"  id="file1" required>
																					</div>
																		</td>
																</tr> 
													<tr>
															<%Integer oid= (Integer)session.getAttribute("ownerId");%>
															<td>Owner id:</td>
															<td><input type="hidden" value="<%=oid%>"  name="ownerId" id="onwerId"/></td>
													</tr>
																<tr>
																		<td><input type="button" value="add more pictures" id="pic"/></td>
																		<td></td>
																</tr>
																<tr>
																		<td><input type="submit" value="Register"/></td>
																</tr>
														</table>
											</form>	
								</div>
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

		</div>

       
    </body>
</html>

 

