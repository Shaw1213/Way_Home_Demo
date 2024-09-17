/// @description Insert description here
// You can write your code in this editor

if(global.enemyTriggered) {
	image_alpha = 1;
	if(place_meeting(x, y+5, COLLISION_ENEMY)) {
		// A hole or wall	
		if(!place_meeting(x + 20, y + 10, COLLISION_ENEMY) || place_meeting(x+sprite_width, y, COLLISION_ENEMY)) {
			speed = 20;
			direction = 90;
		}
	}
	move_and_collide(chase_speed, 0, COLLISION_ENEMY);
} else {
	sprite_index= spr_enemy_idle;
}