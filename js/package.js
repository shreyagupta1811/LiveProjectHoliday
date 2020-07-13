window.onload=initAll;

function initAll(){
	alert("helloo")
	getAllElements();
	setAllActions();
}

var pacBox,pic;
function getAllElements(){
	
	pacBox = document.getElementById("box");
	pic = document.getElementById("pic");
}

function setAllActions(){
	pic.onclick=add;
	
}

var i=2;
function add(){

	var br=document.createElement('br');
	pacBox.appendChild(br);
	var inp=document.createElement("input");
	inp.setAttribute("type","file");
	inp.setAttribute("name","file"+i);
	i++;
	pacBox.appendChild(inp);
}