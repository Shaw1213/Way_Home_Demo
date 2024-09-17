/// @description Insert description here
// You can write your code in this editor

if(global.enemyTriggered) {
	image_alpha = 1;
	var jump = 0;
	// A hole or wall
	if(!place_meeting(x + sprite_width, y + 20, COLLISION_ENEMY) || place_meeting(x+sprite_width, y, COLLISION_ENEMY)) {
		jump = -15;
	}
	move_and_collide(chase_speed, jump, COLLISION_ENEMY);
}