window.onload=initAll;
alert(12);
function initAll(){
	var sb=document.getElementById("sb");
	sb.onclick=sendRequest;
}
var req;
function sendRequest(){
	var email=document.getElementById("email");

	req=new XMLHttpRequest();
	url="forget.do?email="+email.value;
	req.open('get',url,true);
	req.onreadystatechange=handleRequest;
	req.send(null);	
}
function handleRequest(){
	if(req.readyState==4&&req.status==200){
		alert("password hasbeen send to your email id");
	}
}
