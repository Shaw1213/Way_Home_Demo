/// @description Item Pickup / place down
var pickupList = ds_list_create();
var pickCount = collision_circle_list(x, y, pickup_radius, Obj_items, false, true, pickupList, true);

// CASE: item is being picked up
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