/// @description Insert description here
// You can write your code in this editor

move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));

if keyboard_check(ord("A")) || keyboard_check(ord("D"))
	sprite_index = WH_player_walking
if keyboard_check_released(ord("A")) || keyboard_check_released(ord("D"))
	sprite_index = spr_temp_player
	
if (pushing!=noone)
	move_x *= pushSpeed;
else if(keyboard_check(vk_shift) && currentGhostLevel != 2 && !isCrouching)
	{
	move_x *= sprintSpeed;
	sprite_set_speed(WH_player_walking, 8, spritespeed_framespersecond);
	}
else if(isCrouching)
	move_x *= crouchSpeed;
else
	{
	move_x *= currentSpeed;
	sprite_set_speed(WH_player_walking, 4, spritespeed_framespersecond);
	}

if(place_meeting(x, y+2, obj_array))
{
	move_y = 0;
	if(keyboard_check(ord("W")) || keyboard_check(vk_space)) 
		move_y = -currentJump;
}
else if (move_y < 10 && !(currentGhostLevel == 2 && isCrouching)) 
	move_y += currentGravity;
else if(move_y < 10 && (currentGhostLevel == 2 && isCrouching))
	move_y += 0.5 * currentGravity;

move_and_collide(move_x, move_y, obj_array);
x = clamp(x, 0, room_width);
if(y > room_height + 100)
{
	room_restart();	
}