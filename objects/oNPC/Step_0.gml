/// @description Insert description here
// You can write your code in this editor


if(obj_player.currentGhostLevel <= ghost_level_interaction) 
{
	//calculate distence from npc to player
	var distance_to_player_x = abs(obj_player.x - id.x);
	var distance_to_player_y = abs(obj_player.y - id.y); 


	//show_debug_message("Distance to player: " + string(distance_to_player));

	if (distance_to_player_x < global.distance_threshold_x && distance_to_player_y < global.distance_threshold_y)
	{
	    // Create textbox if it doesn't exist
	    if (text_box == noone)
	    {
	        var offset_y = 100;
	        text_box = instance_create_layer(x, y - offset_y, "Instances", obj_Textbox);
	    }
	}
	else
	{	
	    // Destroy textbox if it exists and player is out of range
	    if (text_box != noone)
	    {
	        instance_destroy(text_box);
			text_box = noone;
	    }
	}
}