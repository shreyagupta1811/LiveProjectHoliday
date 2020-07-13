//alert('hello world');
//alert('Hello');
window.onload = initAll;

function initAll(){
	getAllElements();
	setAllActions();
}

var fld,records;
var recs,details;
var pacBox,pic;
function getAllElements(){
	fld = document.getElementById('fld');
	records = document.getElementById('records');
	
	//details = document.getElementById('details');	
	pacBox = document.getElementById("box");
	pic = document.getElementById("pic");
}

function setAllActions(){
	fld.onkeyup = collectRecords;

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

var req;
function collectRecords(){
	//details.innerHTML = ' ';
	//details.style.display = 'none';
	
	if(fld.value.length>1){
		req = new XMLHttpRequest();

		req.open('get','collect_acc.do?acc='+fld.value,true);
		req.onreadystatechange = showRecords;
		req.send(null);
	}else{
		records.innerHTML = ' ';
		records.style.display = 'none';
	}
}

function showRecords(){
	//alert(req.readyState+' ~ '+req.status)

	if(req.readyState==4&&req.status==200){
		records.innerHTML = ' ';
		records.style.display = 'block';
		alert(req.responseText);

		var arr = eval(req.responseText);
		
		var len = arr.length;
		for(i=0;i<len;i++){
			var elm = document.createElement('div');
			elm.className = 'rec';
			elm.innerHTML = arr[i]['accomodationName'];
			//elm.ctid = arr[i]['cityId']

			elm.onmouseover = function(){ this.className = 'rec over'; }; 
			elm.onmouseout = function(){ this.className = 'rec out'; };
			elm.onclick = bringDetails;

			records.appendChild(elm);
		}
	}
}

function bringDetails(){
	//alert(this.innerHTML)
	fld.value = this.innerHTML;
	records.style.display = 'none';
	//alert(this.ctid)
	getDetails(this.ctid);
}

var dreq;
function getDetails(ctid){
	dreq = new XMLHttpRequest();

	dreq.open('get','get_details.do?ct_id='+ctid,true);
	dreq.onreadystatechange = showDetails;
	dreq.send(null);
}

function showDetails(){
	if(dreq.readyState==4&&dreq.status==200){
		//alert(dreq.responseText);
		details.innerHTML = dreq.responseText;
		details.style.display = 'block';
	}
}