/// description: Write general functions here.


function clampObjToRoom(objID){
	with(objID){ 
		x = clamp(x, 0, room_width);
		y = clamp(y, 0, room_height);
	}
}
