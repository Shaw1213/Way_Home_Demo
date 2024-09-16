
// Check if the camera target exists
if (instance_exists(camera_target)) {
    // Get the target's position
    var target_x = camera_target.x;
    var target_y = camera_target.y - 200;

    // Calculate desired camera position to center on target
    var cam_width = camera_get_view_width(camera);
    var cam_height = camera_get_view_height(camera);

    desired_cam_x = target_x - (cam_width / 2);
    desired_cam_y = target_y - (cam_height / 2);
}

// Smoothly interpolate the camera position towards the desired position
var current_cam_x = camera_get_view_x(camera);
var current_cam_y = camera_get_view_y(camera);

var new_cam_x = lerp(current_cam_x, desired_cam_x, camera_smoothness);
var new_cam_y = lerp(current_cam_y, desired_cam_y, camera_smoothness);

// Clamp camera position within room boundaries
new_cam_x = clamp(new_cam_x, 0, room_width - camera_get_view_width(camera));
new_cam_y = clamp(new_cam_y, 0, room_height - camera_get_view_height(camera));

// Update camera position
camera_set_view_pos(camera, new_cam_x, new_cam_y);
