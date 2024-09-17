/*
/// @description Move the Viewport, Lerp smoothing
#region
hor_x = keyboard_check(vk_right) - keyboard_check(vk_left);


halfViewWidth = camera_get_view_width(view_camera[0])/2;
halfViewHeight = camera_get_view_width(view_camera[0])/2;

view_x = camera_get_view_x(view_camera[0]);
view_y = camera_get_view_y(view_camera[0]);

goto_x = x + (hor_x * 200) - (halfViewHeight);
new_x = lerp(view_x, goto_x, 0.03);

camera_set_view_pos(view_camera[0], new_x, 0);
//camera_set_view_pos(view_camera[0], x - halfViewWidth, 0);

#endregion
*/

#region spriteHandling
if(abs(move_x) > 0){
	if (image_xscale > 0 && move_x < 0) || (image_xscale < 0 && move_x > 0) // sprite is opposite of movement
		image_xscale*= -1;
	if(onGround) {
		sprite_index = WH_player_walking;
		sprite_set_speed(WH_player_walking, move_x, spritespeed_framespersecond);
	}
}
else
	if(onGround)
		sprite_index = spr_temp_player;
	
#endregion