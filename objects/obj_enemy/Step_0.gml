/// @description Insert description here
// You can write your code in this editor

if(global.enemyTriggered) {
	image_alpha = 1;
	sprite_index= spr_enemy_walking;
	sprite_set_speed(spr_enemy_walking, chase_speed, spritespeed_framespersecond);
	if(place_meeting(x, y+5, COLLISION_ENEMY)) {
		// A hole or wall	
		if(!place_meeting(x + 30, y + 50, COLLISION_ENEMY) || place_meeting(x+30, y-20, COLLISION_ENEMY)) {
			speed = 15;
			direction = 90;
		}
	}
	move_and_collide(chase_speed, 0, COLLISION_ENEMY);
} else {
	sprite_index= spr_enemy_idle;
}