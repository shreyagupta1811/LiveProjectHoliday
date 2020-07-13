var image=document.getElementsByClassName("image");
var i;
for(i=0;i<image.length;i++){
	var ur=image[i].src.replace("file:///C:/Tomcat%209.0/webapps/Holiday/","");
	image[i].src=ur;
}