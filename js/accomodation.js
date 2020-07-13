var pic1=document.getElementById("pic1").src;
var ur=pic1.replace("file:///C:/Tomcat%209.0/webapps/Holiday/","");
document.getElementById("pic1").src=ur;
alert(pic1);