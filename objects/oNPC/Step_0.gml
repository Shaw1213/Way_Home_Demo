/// @description Insert description here
// You can write your code in this editor

//calculate distence from npc to player
var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);

show_debug_message("Distance to player: " + string(distance_to_player));

if (distance_to_player < global.distance_threshold)
{
   show_debug_message("Hi");
}