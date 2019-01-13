document.getElementById("id_logic_version").innerHTML = "Logic version: 2018.11.26.12";
var canvas = document.getElementById("id_canvas");
canvas.addEventListener("touchstart", on_touch_start);
canvas.addEventListener("touchmove", on_touch_move);
canvas.addEventListener("touchend", on_touch_end);

var canvas_bounding_rect = canvas.getBoundingClientRect();


var last_pos_array = [];

//------------------------------------

var chooseRed = document.getElementById("chooseRed");
var chooseGreen = document.getElementById("chooseGreen");
var chooseBlue = document.getElementById("chooseBlue");

chooseRed.onclick = red;
chooseGreen.onclick = green;
chooseBlue.onclick = blue;

var finalColor;

function green()
{
    var greenColor = "#32CD32";
    finalColor = greenColor;
    return finalColor;
}

function red()
{
    var redColor = "#FF0000";
    finalColor = redColor;
    return finalColor;
}

function blue()
{
    var blueColor = "0000ff";
    finalColor = blueColor;
    return finalColor;
}



function chosenColor()
{
    
}

function get_random_color()
{
    
	var litere = '0123456789ABCDEF';
	var s = "#";
	for (var i = 0; i < 6; i++)
		s = s + litere[Math.floor(Math.random() * 16)];
	return s;
}
//------------------------------------
function on_touch_start(e)
{
	for (var i = 0; i < e.changedTouches.length; i++){
		var context = canvas.getContext("2d");
		context.beginPath();
		var last_pos = {x: e.changedTouches[i].pageX, 
						y: e.changedTouches[i].pageY, 
						id: e.changedTouches[i].identifier,
						color: finalColor};
		last_pos_array.push(last_pos);

		context.fillStyle = last_pos_array[last_pos_array.length - 1].color;
		context.strokeStyle = last_pos_array[last_pos_array.length - 1].color;
		
		context.arc(e.changedTouches[i].pageX - canvas_bounding_rect.left,
					e.changedTouches[i].pageY - canvas_bounding_rect.top,
					10,
					0, 2 * Math.PI);
		context.fill();
		context.stroke();

	}
}
//------------------------------------
function on_touch_move(e)
{
	e.preventDefault();
	
	for (var i = 0; i < e.changedTouches.length; i++){
		var j = 0;
		for (; j < last_pos_array.length; j++)
			if (last_pos_array[j].id == e.changedTouches[i].identifier)
				break;
		
		var context = canvas.getContext("2d");
		context.beginPath();
		context.lineWidth = 20;
		context.fillStyle = last_pos_array[j].color;
		context.strokeStyle = last_pos_array[j].color;
		context.moveTo(last_pos_array[j].x - canvas_bounding_rect.left, last_pos_array[j].y - canvas_bounding_rect.top);
		context.lineTo(e.changedTouches[i].pageX - canvas_bounding_rect.left,
					e.changedTouches[i].pageY - canvas_bounding_rect.top);
		context.stroke();
		
		context.beginPath();
		context.lineWidth = 1;		
		context.fillStyle = last_pos_array[j].color;
		context.strokeStyle = last_pos_array[j].color;

		context.arc(e.changedTouches[i].pageX - canvas_bounding_rect.left,
					e.changedTouches[i].pageY - canvas_bounding_rect.top,
					10,
					0, 2 * Math.PI);
		context.fill();
		context.stroke();
		
		last_pos_array[j].x = e.changedTouches[i].pageX;
		last_pos_array[j].y = e.changedTouches[i].pageY;		
	}
	
}
//--------------------------------------
function on_touch_end(e)
{
	for (var i = 0; i < e.changedTouches.length; i++){
		var j = 0;
		for (; j < last_pos_array.length; j++)
			if (last_pos_array[j].id == e.changedTouches[i].identifier)
				break;
			
		last_pos_array.splice(j, 1);
	}
	
}
//--------------------------------------