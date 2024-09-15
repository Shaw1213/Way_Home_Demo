/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y+0.1, COLLISION_INTERACTABLES) {
	x = xprevious;
	y = yprevious;
	speed = 0;
	gravity = 0;
}
else{
	gravity = 1;	
}