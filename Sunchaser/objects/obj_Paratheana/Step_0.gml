
//COMBAT
//If the room is a combat room check to see if it is this characters turn 
if((room == CombatRoom || room == CombatRoom_Landed) && your_turn && current_hp > 0) {
	//If it is this characters turn then check if they attacked
	if(keyboard_check_pressed(vk_space)) {
		//Attack the selected enemy 
		Attack(attack_power,chance_mod, combat.en[combat.current_en])
		your_turn = false
	}
}

else {
	your_turn = false
}

//APPLY MOVEMENT

if(canMove) {
	x += moveX
	y += moveY
}

//Setting animation based on movement
if(moveX < 0) {
	sprite_index = spr_Paratheana_Left	
}

else if(moveX > 0) {
	sprite_index = spr_Paratheana_Right
}

else if(moveY > 0) {
	sprite_index = spr_Paratheana_Down	
}

else if(moveY < 0) {
	sprite_index = spr_Paratheana_Up
}

else image_index = 0