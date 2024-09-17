/// @description Insert description here
// You can write your code in this editor
if global.trigger_end
{
	show_debug_message("End Triggered")
	global.trigger_end = false
	alarm[0] = 60
}