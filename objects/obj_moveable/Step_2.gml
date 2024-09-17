/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y+0.1, COLLISION_INTERACTABLES) {
	x = xprevious;
	y = yprevious;
	speed = 0;
	gravity = 0;
}
else{
	gravity = 1;	
}

// movement final touches
if(being_pushed) {
	var _move = held_by.move_x;
	move_and_collide(_move, 0, COLLISION_INTERACTABLES);
	// moving towards the box the player will stay snapped to box.
	if((x>held_by.x) == (_move>0)) {
		with(held_by)
			move_and_collide(move_x, 0, COLLISION_GHOST_ZERO);
	}
			
	// Out of pull range checks (ie: the box falls)
	if(!place_meeting(x+10, y, held_by) && !place_meeting(x-10, y, held_by)) {
			held_by.pushing = noone;
			held_by = noone;
			being_pushed = false;
	}
	else if(held_by.currentGhostLevel!=0) {
			held_by.pushing = noone;
			held_by = noone;
			being_pushed = false;
	}
}