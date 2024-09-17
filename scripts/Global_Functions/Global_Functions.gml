/// description: Write general functions here.


function clampObjToRoom(objID){
	with(objID){ 
		x = clamp(x, 0, room_width);      
	}
}
