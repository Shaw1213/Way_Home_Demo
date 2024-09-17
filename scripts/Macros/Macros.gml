/// Store Data in the form of macros or enum types

// Collision for player's ghosts states
#macro COLLISION_GHOST_ZERO [obj_moveable, obj_temp_floor, obj_temp_semi_wall]
#macro COLLISION_GHOST_ONE  [obj_moveable, obj_temp_floor, obj_temp_semi_wall, obj_invisible_wall]
#macro COLLISION_GHOST_TWO  [obj_moveable, obj_temp_floor, obj_invisible_wall]

// Collision for interactables
#macro COLLISION_INTERACTABLES [obj_temp_floor, obj_temp_semi_wall, obj_moveable, obj_player]

#macro COLLISION_ENEMY [obj_temp_floor, obj_temp_semi_wall, obj_moveable]