if(obj_Amos.your_turn || obj_Paratheana.your_turn || obj_Hyperion.your_turn) {
	players_turn = true
}

else {
	players_turn = false
}


//Changes the selected enemy
if(players_turn) {
	en[current_en].selected = true
	if(keyboard_check_pressed(vk_down)) {
		en[current_en].selected = false
		current_en += 1
		if(current_en >= array_length_1d(en)) {
			current_en = 0		
		}
		en[current_en].selected = true
	}
	
	if(keyboard_check_pressed(vk_up)) {
		en[current_en].selected = false
		current_en -= 1
		if(current_en < 0 ) {
			current_en = array_length_1d(en) -1		
		}
		en[current_en].selected = true
	}
}