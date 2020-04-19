//COMBAT
//If the room is a combat room check if the space bar is pressed
if((room == CombatRoom || room == CombatRoom_Landed) && your_turn && current_hp > 0) {
	if(keyboard_check_pressed(vk_space)) {
		//If the spacebar is pressed then attack the selected enemy 
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