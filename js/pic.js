var pic=document.getElementById("pic").src;
var ur=pic.replace("file:///C:","http://127.0.0.1:8887/");
document.getElementById("pic").src=ur;