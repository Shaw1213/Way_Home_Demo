/// @description Insert description here
// You can write your code in this editor

//calculate distence from npc to player
var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);

//show_debug_message("Distance to player: " + string(distance_to_player));



if (distance_to_player < global.distance_threshold)
{
    // Create textbox if it doesn't exist
    if (!instance_exists(obj_Textbox))
    {
        var offset_y = 100;
        instance_create_layer(x, y - offset_y, "Instances", obj_Textbox);
    }
}
else
{	
    // Destroy textbox if it exists and player is out of range
    if (instance_exists(obj_Textbox))
    {
        instance_destroy(obj_Textbox);
    }
}