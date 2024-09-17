/// @description Insert description here
// You can write your code in this editor

// if on floor, jump.
if(place_meeting(x, y+5, COLLISION_ENEMY)) {
	speed = 15;
	direction = 90;
}