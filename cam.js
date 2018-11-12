document.getElementById("id_logic_version").innerHTML = "Logic version: 2018.11.12.0";
document.getElementById("id_button").addEventListener("click", start);

function on_success(e)
{
	document.getElementById("id_video").srcObject = e;
}


function on_failure(e)
{
	alert("Cannot read camera");
}
	

function start()
{
	var c = {audio:true, video:{facingMode:"environment"}};
	navigator.mediaDevices.getUserMedia(c).then(on_success).catch(on_failure);
}

function on_touch(e)
{
	var canvas = document.getElementById("id_canvas");
	var context = canvas.getContext("2d");
	var vide = document.getElementById("id_video");
	context.drawImage()
}