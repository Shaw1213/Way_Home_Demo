/// @description Insert description here
// You can write your code in this editor

if(global.enemyTriggered) {
	image_alpha = 1;
	sprite_index= spr_enemy_walking;
	sprite_set_speed(spr_enemy_walking, chase_speed, spritespeed_framespersecond);
	move_and_collide(chase_speed, 0, COLLISION_ENEMY);
} else {
	sprite_index= spr_enemy_idle;
}