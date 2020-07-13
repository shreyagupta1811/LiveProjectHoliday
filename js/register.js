window.onload=initAll;

function initAll(){
	getAllElements();
	setAllActions();
	
}
var uname,email,password,cpassword,regForm;
var unerr,emerr,perr,cperr;
function getAllElements(){
	uname=document.getElementById('uname');
	email=document.getElementById('email');
	password=document.getElementById('password');
	cpassword=document.getElementById('cpassword');
	
	regForm=document.getElementById('regForm');

	unerr=document.getElementById('unerr');
	emerr=document.getElementById('emerr');
	perr=document.getElementById('perr');
	cperr=document.getElementById('cperr');
}
var flag=true;
function setAllActions(){
	//regForm.onsubmit=validateForm;

	uname.onkeyup=function(){
		if(uname.length<3){
			flag=false;
			unerr.style.visibility = 'visible';
		}
		else{
			flag=true;
			unerr.style.visibility = 'hidden';
		}
	
	};
	email.onkeyup = function(){
						var emTest = /\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}/.test(email.value)
						
						if(!emTest){
							flag = false;
							emerr.style.visibility = 'visible';
						}else{
							flag = true;
							emerr.style.visibility = 'hidden';
						}
					};
	password.onkeyup=function(){
		var plen = password.value.length;
						if(plen<6||plen>12){
							flag = false;
							perr.style.visibility = 'visible';							
						}else{
							flag = true;
							perr.style.visibility = 'hidden';							
						}
					};
	cpassword.onkeyup = function(){
							if(cpassword.value.length<6||password.value!=cpassword.value){
								flag = false;
								cperr.style.visibility = 'visible';
							}else{
								flag = true;
								cperr.style.visibility = 'hidden';
							}
						}
	regForm.onsubmit=validateForm;
}
function validateForm(){
if(!flag){
		return flag;
	}
}