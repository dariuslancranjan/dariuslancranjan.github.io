document.getElementById("id_logic_version").innerHTML = "Logic version: 2018.10.29.2";

window.addEventListener("deviceorientation", on_device_orientation);

//--------------------------------------------------------------------------------------------

function on_device_orientation(e)
{
	document.getElementById("id_alpha").innerHTML = e.alpha;
	document.getElementById("id_beta").innerHTML = e.beta;
	document.getElementById("id_gamma").innerHTML = e.gamma;


var canvas = document.getElementById("id_canvas");
var context = canvas.getContext("2d");

context.clearRect(0,0,canvas.width,canvas.height);

context.beginPath();
context.arc(canvas.height/2 + e.gamma/90 * (canvas.width/2-R),
canvas.height/2 + e.beta/90 * (canvas.height/2-R)
 R, 0, 2 * Math.PI)
context.stroke();

}