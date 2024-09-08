/// @description Insert description here
// You can write your code in this editor
currentSpeed = 4;
currentJump = 16;
currentGravity = 1;

maxSpeed = 4;
maxJump = 24;
maxGravity = 1.5;

currentGhostLevel = 0;

ghostLevelMultipliers = [0.9, 0.5, 0.3]

move_x = 0;
move_y = 0;

setGhostLevel = function(newGhostLevel)
{
	currentGhostLevel = newGhostLevel;
	currentJump = maxJump - (10 * ghostLevelMultipliers[newGhostLevel]);
	currentGravity = maxGravity * ghostLevelMultipliers[newGhostLevel];
	image_alpha = ghostLevelMultipliers[newGhostLevel] + 0.1;
};

setGhostLevel(2);