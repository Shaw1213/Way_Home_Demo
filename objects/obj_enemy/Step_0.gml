/// @description Insert description here
// You can write your code in this editor

// Check if the player exists in the room
if (instance_exists(obj_player)) {
    // Calculate the direction from the enemy to the player
    var direction_to_player = point_direction(x, y, obj_player.x, obj_player.y);

    // Calculate the movement components
    var x_speed = lengthdir_x(chase_speed, direction_to_player);
    var y_speed = lengthdir_y(chase_speed, direction_to_player);

    // Move the enemy towards the player at the specified speed
    x += x_speed;
    y += y_speed;
}