//COMBAT
if(room == CombatRoom && your_turn) {
	if(keyboard_check_pressed(vk_space)) {
		Attack(attack_power,chance_mod, combat.en[combat.current_en])
		your_turn = false
	}
}
	


//APPLY MOVEMENT

if(canMove) {
	x += moveX
	y += moveY
}



//Setting animation based on movement
if(moveX < 0) {
	sprite_index = spr_Hyperion_Left	
}

else if(moveX > 0) {
	sprite_index = spr_Hyperion_Right
}

else if(moveY > 0) {
	sprite_index = spr_Hyperion_Down	
}

else if(moveY < 0) {
	sprite_index = spr_Hyperion_Up
}

else image_index = 0