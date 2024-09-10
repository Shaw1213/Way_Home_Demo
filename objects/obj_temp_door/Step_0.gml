/// @description Insert description here
// You can write your code in this editor
var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);

if (distance_to_player < 200)
{
	
	if obj_player.get_key()
	{
		obj_player.set_key()
		instance_destroy()
	}
}
