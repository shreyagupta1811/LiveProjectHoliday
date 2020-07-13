var pic=document.getElementById("pic").src;
var ur=pic.replace("/opt/tomcat/webapps/ROOT/","");
alert(ur);
document.getElementById("pic").src=ur;
