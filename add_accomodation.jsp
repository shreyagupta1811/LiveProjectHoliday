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
								
						<ul class="main-nav animated slideInDown " style="font-size:1.2vw;" id="check-class">
							<li><a href="adminHome.jsp"><b>HOME.</b></a></li>
							<li><a href="about.jsp"><b>ABOUT</b></a></li>
							<li><a href="explore.jsp"><b>EXPLORE</b></a></li>
							<li><a href="select_city.jsp"><b>RESTAURANT</b></a></li>
							<li><a href="logout.do"><b>LOGOUT</b></a></li>
						</ul>
								<a href="#" class="mobile-icon" onclick="slideshow()"><i class="fa fa-bars"></i></a>
						</div>
					</nav>
					
					<div class="main-content-header">
						<h1 id="data"><b><span id="data2" class="color-change">HAPPY HOLIDAYS</span></b></h1>
						<h1><span id="data3">ADD NEW ACCOMODATION</span></h1>
						<div class="form-div">
							<form action=" save_accomodation.do" enctype="multipart/form-data" method="post">
								<table class="form-table">
									<tr>
										<td>Name</td>
										<td>:</td>
										<td><input type="text" name="aname" required></td>
									</tr>
									<tr>
										<td>Address</td>
										<td>:</td>
										<td><input type="text" name="address" required></td>
									</tr>
									<tr>
										<td>City</td>
										<td>:</td>
										<td><input type="text" name="city" required></td>
									</tr>
									<tr>
										<td>Upload Pic</td>
										<td>:</td>
										<td><input type="file" name="pic" required></td>
									</tr>
									<tr>
										<td colspan="3"><input type="submit" value="save" required></td>
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

       <script src="js/package.js">
    </body>
</html>

 