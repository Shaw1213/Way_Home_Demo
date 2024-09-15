#region pushable_items
// Set which pushable object is being pushed
if(pushing == noone) {
	var pushable_list = ds_list_create();
	var pushables = collision_circle_list(x, y, sprite_width, obj_moveable, false, true, pushable_list, false);

	for(var index = 0; index < pushables; index++){
		if(place_meeting(x+1, y, pushable_list[| index]) || place_meeting(x-1, y, pushable_list[| index])) {
			pushing = pushable_list[| index];
			pushing.held_by = id;
			pushing.being_pushed = true;
			break;
		}
	}
	ds_list_destroy(pushable_list);
} else {
	pushing.held_by = noone;
	pushing.being_pushed = false;
	pushing = noone;
}
#endregion

/**
#region item_pickup
/// @description Item Pickup / place down. CURRENTLY UNUSED
var pickupList = ds_list_create();
var pickCount = collision_circle_list(x, y, pickup_radius, Obj_items, false, true, pickupList, true);

// CASE: no item
if(item == noone) {
	if (pickCount>0) {
		item = pickupList[|0];
		item.target =id;
		item.is_being_carried = true;
	}
} else { //CASE: holding item
	if(pickCount>1) { // swap items
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
	} else { // drop item
		item.target= noone;
		item.is_being_carried = false;
		item = noone;
	}
}

ds_list_destroy(pickupList);
#endregion
**/