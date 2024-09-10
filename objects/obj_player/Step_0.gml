/// @description Insert description here
// You can write your code in this editor


move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
move_x *= currentSpeed;
var obj_array = [obj_temp_floor, obj_temp_semi_wall]


if currentGhostLevel < 2
{
	if(place_meeting(x, y+2, obj_array))
{
	move_y = 0;
	if(keyboard_check(ord("W"))) move_y = -currentJump;
}
else if (move_y < 10) move_y += currentGravity;
	move_and_collide(move_x, move_y, obj_array);
}
else
{
	if(place_meeting(x, y+2, obj_temp_floor))
{
	move_y = 0;
	if(keyboard_check(ord("W"))) move_y = -currentJump;
}
else if (move_y < 10) move_y += currentGravity;
	
	move_and_collide(move_x, move_y, obj_temp_floor);	
}


#region Pickup Items
	if(keyboard_check_pressed(key_pickup)){
		var pickupList = ds_list_create();
		var pickCount =collision_circle_list(x, y, pickup_radius, Obj_items, false, true, pickupList, true);
		
		if(pickCount>0){
			if(item == noone){
				item = pickupList[|0];
				item.target =id;
				item.is_being_carried = true;
			}else{
				// if we have a item now
				for(var index = 0; index< pickCount; index++){
					if(pickupList[|index] != item) {
						// drop item
						item.target = noone;
						item.is_being_carried = false;
						// pickup new item
						item = pickupList[|index];
						item.target = id;
						item.is_being_carried = true;
						break;
					}
				}
			}
			
		}
	
		ds_list_destroy(pickupList);
	
	}
	
#endregion
