
// Base camera size
camera_width_base = 1280;
camera_height_base = 720;

// Initial zoom factor
zoom_factor = 1.0;

// Initial camera target
camera_target = obj_player;

// Desired camera position
desired_cam_x = 0;
desired_cam_y = 0;

// Camera movement smoothness
camera_smoothness = 0.1;

// Create a custom camera
camera = camera_create_view(0, 0, camera_width_base, camera_height_base, 0, -1, -1, -1, -1);

// Assign the camera to Viewport 0
view_camera[0] = camera;
view_visible[0] = true;

// Enable views globally
view_enabled = true;

// Functions for camera control

function Camera_Zoom_Set(factor) {
    zoom_factor = factor;

    // Update the camera view size
    var new_width = camera_width_base * zoom_factor;
    var new_height = camera_height_base * zoom_factor;
    camera_set_view_size(camera, new_width, new_height);
}

function Camera_Zoom_To(factor, speed) {
    zoom_factor = lerp(zoom_factor, factor, speed);

    // Update the camera view size
    var new_width = camera_width_base * zoom_factor;
    var new_height = camera_height_base * zoom_factor;
    camera_set_view_size(camera, new_width, new_height);
}

function Camera_Set_Target(new_target, smoothness) {
    camera_target = new_target;
    if (argument_count > 1) {
        camera_smoothness = smoothness;
    } else {
        camera_smoothness = 0.1;
    }
}
