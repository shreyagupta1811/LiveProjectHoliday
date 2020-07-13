window.onload = initAll;

function initAll(){
	getAllElements();
	setAllActions();
}

var add,aaa,rec,menuBox,form1;
var chsbtn;
var categ;
var bbb,rec2,itemBox,form2,chsbtn;
function getAllElements(){
	add = document.getElementById("add");
	aaa= document.getElementById("aaa");
    rec = document.getElementById("rec");
	menuBox = document.getElementById("menu_box");
	form1 = document.getElementById("form1");
	chsbtn=document.getElementById("chsbtn");
	
	bbb= document.getElementById("bbb");
    rec2 = document.getElementById("rec2");
	form2 = document.getElementById("form2");
	itemBox = document.getElementById("item_box");
}

function setAllActions(){
	add.onclick=collectRecords1;
	chsbtn.onclick=collectMenu2;
}
var reqObj2
function collectMenu2(){
	menuBox.style.display="none";
	itemBox.style.visibility="visible";
	categ=document.getElementById("categ");
	//alert(categ.value);
	reqObj2 =  new XMLHttpRequest();
	reqObj2.open('get','collect_item.do?category='+categ.value,true);
	reqObj2.onreadystatechange = showRecord2;
	reqObj2.send(null);
}
//function for showing menu item
function showRecord2(){
	if(reqObj2.readyState==4&&reqObj2.status==200){
		//alert(reqObj2.responseText);
		
		var records = eval(reqObj2.responseText);
		//alert(records);
		var j=1;
		var len = records.length;
		for(i=0;i<len;i++){
			var row = rec2.insertRow(i);
			var n=0;
			var obj = records[i];
			
			for(x in obj){
									
				var cell1= row.insertCell( n);
				cell1.innerHTML= obj[x];
				n++;
				
				var cell2=row.insertCell(n);
				var inp1=document.createElement("input");
				inp1.setAttribute("type","checkbox");
				inp1.setAttribute("value",obj[x]);
				inp1.setAttribute("name","item");
				cell2.appendChild(inp1);
				n++;
				
				var cell3=row.insertCell(n);
				var inp=document.createElement("input");
				inp.setAttribute("type","number");
				inp.setAttribute("name","price");
				cell3.appendChild(inp);
				n++;

				var cell4=row.insertCell(n);
				var inp4=document.createElement("input");
				inp4.setAttribute("type","hidden");
				inp4.setAttribute("name","total");
				inp4.setAttribute("value",obj[x]);
				cell4.appendChild(inp4);
				j++;
			}
		}
	}
}
//ajax for categories
var reqObj;
function collectRecords1(){
	menuBox.style.visibility="visible";
	//alert("hello");
	reqObj =  new XMLHttpRequest();
	reqObj.open('get','collect_category.do',true);
	reqObj.onreadystatechange = showRecord;
	reqObj.send(null);
}
//function for showing categories
function showRecord(){
		if(reqObj.readyState==4&&reqObj.status==200){
				//alert(reqObj.responseText);
		
	var records = eval(reqObj.responseText);
		//alert(records);

		var len = records.length;
		for(i=0;i<len;i++){
				var row = rec.insertRow(i);
				var n=0;
				var obj = records[i];
				for(x in obj){
						var cell1= row.insertCell( n);
						cell1.innerHTML= obj[x];
						n++;	
						var cell2=row.insertCell(n);
						var inp =document.createElement("input");
						inp.setAttribute("type","radio");
						inp.setAttribute("name","category");
						inp.setAttribute("id","categ");
						inp.setAttribute("value",obj[x]);
						cell2.appendChild(inp);	
						//alert(document.getElementById("categ").value);
				}
		}
	}
}
