//Move to the target room if the player collides with the objTransition object
//Only hapens when the player is facing the correct direction 
target = other.target_room
start_x = other.target_x
start_y = other.target_y
trans_facing_after = other.player_facing_after
trans_facing_before = other.player_facing_before

with(game) {
	if(obj_Amos.facing == obj_Amos.trans_facing_before) {
		if(!do_transition) {
			spawn_room = obj_Amos.target
			spawn_x = obj_Amos.start_x
			spawn_y = obj_Amos.start_y
			do_transition = true
			spawn_player_facing = obj_Amos.trans_facing_after
		}
	}
}