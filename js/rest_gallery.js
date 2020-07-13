var image=document.getElementsByClassName("image");
var i;
for(i=0;i<image.length;i++){
	var ur=image[i].src.replace("http://holiday.fr-1.paas.massivegrid.net/opt/tomcat/webapps/ROOT/","");
  	//alert(ur);
	image[i].src=ur;
  
  
}
/*
var pic=document.getElementById("picss").src;
alert(pic);
var ur=pic.replace("http://holiday.fr-1.paas.massivegrid.net/opt/tomcat/webapps/ROOT/","");
alert(ur)
document.getElementById("picss").src=ur;
*/
