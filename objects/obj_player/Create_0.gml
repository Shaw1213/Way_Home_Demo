/// @description Insert description here
// You can write your code in this editor
currentSpeed = 4;
currentJump = 16;
currentGravity = 1;

maxSpeed = 4;
maxJump = 24;
maxGravity = 1.5;

currentGhostLevel = 0;

ghostAlphas = [1, 0.8, 0.3]
ghostJump = [16,16,16]
ghostSpeed = [4,4,4]
ghostGravity = [1,1,1]


move_x = 0;
move_y = 0;
key = false;

setGhostLevel = function(newGhostLevel)
{
	currentGhostLevel = newGhostLevel;
	currentJump = ghostJump[newGhostLevel];
	currentGravity = ghostGravity[newGhostLevel];
	image_alpha = ghostAlphas[newGhostLevel];
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

key_pickup = ord("E");
item = noone;
pickup_radius = 50;