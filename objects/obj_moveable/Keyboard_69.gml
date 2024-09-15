/// Push/pull code
// make sure player hasn't left pull/push range
if(being_pushed) {
	if(place_meeting(x+5, y, held_by) || place_meeting(x-5, y, held_by)) {
			held_by.pushing = noone;
			held_by = noone;
			being_pushed = false;
	}
}