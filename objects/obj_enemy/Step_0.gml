/// @description Insert description here
// You can write your code in this editor

if(global.enemyTriggered) {
	var jump = 0;
	if(!place_meeting(x + sprite_width, y + 10, COLLISION_INTERACTABLES)) {
		jump = -20;
	}
	move_and_collide(chase_speed, jump, COLLISION_INTERACTABLES);
}