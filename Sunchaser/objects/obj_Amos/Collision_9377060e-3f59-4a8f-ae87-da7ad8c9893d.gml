/// @description Insert description here
// You can write your code in this editor

target = other.target_room
start_x = other.target_x
start_y = other.target_y

with(game) {
	if(!do_transition) {
		spawn_room = obj_Amos.target
		spawn_x = obj_Amos.start_x
		spawn_y = obj_Amos.start_y
		do_transition = true
	}
}