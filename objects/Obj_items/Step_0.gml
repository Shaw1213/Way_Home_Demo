/// @description Insert description here
// You can write your code in this editor
if(!is_being_carried)
{
	move_y += 1;
	move_and_collide(0, move_y, obj_temp_ground);
	if(y == yprevious)
		move_y = 0;
}