/// @description Insert description here
// You can write your code in this editor
currentSpeed = 4;
currentJump = 8;
currentGravity = 1;

sprintSpeed = 2 * currentSpeed
crouchSpeed = 0.5 * currentSpeed
isCrouching = false;

currentGhostLevel = 0;

ghostAlphas = [1, 0.8, 0.3]
ghostJump = [12,13,10]
ghostSpeed = [4,3,2]
ghostGravity = [1,0.5,0.2]

obj_array = COLLISION_GHOST_ZERO;

move_x = 0;
move_y = 0;
key = false;

//Lerp camera movement vars
halfViewWidth = 0;
halfViewHeight = 0;

view_x = 0;
view_y = 0;

hor_x = 0;
hor_y = 0;

goto_x = 0;
new_x = 0;

setGhostLevel = function(newGhostLevel)
{
	currentGhostLevel = newGhostLevel;
	currentJump = ghostJump[newGhostLevel];
	currentGravity = ghostGravity[newGhostLevel];
	image_alpha = ghostAlphas[newGhostLevel];
	
	sprintSpeed = 0.5 * currentSpeed + currentSpeed;
	crouchSpeed = 0.5 * currentSpeed;
	
	if(newGhostLevel == 0)
		obj_array = COLLISION_GHOST_ZERO;
	else if(newGhostLevel == 1)
		obj_array = COLLISION_GHOST_ONE;
	else
		obj_array = COLLISION_GHOST_TWO
};

set_key = function()
{
	key = !key
};
get_key = function()
{
	return key
};

setGhostLevel(2);

pushing = noone;
item = noone;
pickup_radius = 50;