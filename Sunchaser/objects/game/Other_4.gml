if(spawn_room != -1) {
	obj_Amos.x = spawn_x
	obj_Amos.y = spawn_y
	obj_Amos.facing = spawn_player_facing
	
	with(obj_Amos) {
		switch(facing) {
			case dir.up: sprite_index = spr_Amos_Up; break
			case dir.down: sprite_index = spr_Amos_Down; break
			case dir.left: sprite_index = spr_Amos_Left; break
			case dir.right: sprite_index = spr_Amos_Right; break
			case -1: image_index = 0; break;
		}
	}
}