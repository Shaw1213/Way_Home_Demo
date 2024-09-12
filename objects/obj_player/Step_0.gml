/// @description Insert description here
// You can write your code in this editor


move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
move_x *= currentSpeed;

if(place_meeting(x, y+2, obj_array))
{
	move_y = 0;
	if(keyboard_check(ord("W")) || keyboard_check(vk_space)) 
		move_y = -currentJump;
}
else if (move_y < 10) 
	move_y += currentGravity;
move_and_collide(move_x, move_y, obj_array);
x = clamp(x, 0, room_width);
if(y > room_height + 100)
{
	room_restart();	
}