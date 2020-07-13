window.onload=initAll;
function initAll(){

	getAllElements(); 
	setAllActions();
}

var restName,restAddress,box,pic,restContact,regform;
var conterr;
function getAllElements(){
	alert("hello");
	restName = document.getElementById('restName');
	restAddress = document.getElementById('restAddress');
	restContact=document.getElementById('restContact');
	conterr=document.getElementById('conterr');
	box = document.getElementById('box');
	pic=document.getElementById("pic");
	regform=document.getElementById('regform');
}
function setAllActions(){
	pic.onclick=addPic;
	regform.onsubmit=validateForm;
	restContact.onblur = function(){
						if(restContact.value.length<10 || restContact.value.length>10 ){
							flag = false;
							conterr.style.visibility = 'visible';
						}else{
							conterr.style.visibility = 'hidden';
							flag = true;
						}					
					};
}
var i=2;
function addPic(){
	var br=document.createElement('br');
	box.appendChild(br);
	var inp=document.createElement("input");
	inp.setAttribute("type","file");
	inp.setAttribute("name","file"+i);
	i++;
	box.appendChild(inp);
}

var flag = true;
function validateForm(){
	if(conterr.value.length<10 || conterr.value.length>10){
		conterr.style.visibility = 'visible';
		flag =false;
	}
	if(!flag){
		return flag;
	}
}
