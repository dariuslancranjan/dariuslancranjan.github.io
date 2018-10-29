document.getElementById("id_logic_version").innerHTML = "Logic version: 2018.10.29.2";
document.getElementById("id_start_button").addEventListener("click", start);
document.getElementById("id_stop_button").addEventListener("click", stop);
//----------------------
document.getElementById("id_start_button").disabled=false;
document.getElementById("id_stop_button").disabled=true;

var unghi = 0 {valoare:0};
var my_worker = null;

function deseneaza_cerc(context,w,h,unghi)
{   context.clearRect(0,0,w,h);
	context.beginPath();
	context.arc (w/2+100* Math.cos(unghi.valoare*Math.PI/180), h/2+Math.sin(unghi.valoare*Math.PI/180)*100,50,0,2*Math.PI);
    
	context.stroke();
	unghi.valoare++;
}
//------------------------------
function start()
{
	var canvas= document.getElementById("id_canvas");
	var context= canvas.getContext("2d");
	var unghi={ valoare:0};
	document.getElementById("id_start_button").disabled=true;
	document.getElementById("id_stop_button").disabled=false;
	
	if(my_worker == null){
		
	
	my_worker = new Worker("calcul_prim.js");

	my_worker.onmessage = function(){
		
		document.getElementById("id_prime").innerHTML = e.data;
	}	
		
	}
	
	else
		my_worker.postMessage("start");
	
     id_timer=setInterval(deseneaza_cerc,10,context,canvas.width,canvas.height,unghi);
	 
	
}
//-----------------
function stop()
{
	
	document.getElementById("id_start_button").disabled=false;
	document.getElementById("id_stop_button").disabled=true;
	clearInterval(id_timer);
	
	my_worker.postMessage("STOP");
}