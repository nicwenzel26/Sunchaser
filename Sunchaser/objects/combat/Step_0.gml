if(obj_Amos.your_turn || obj_Paratheana.your_turn || obj_Hyperion.your_turn) {
	players_turn = true
}

if(obj_Amos.current_hp == 0 && obj_Paratheana.current_hp == 0 && obj_Hyperion.current_hp == 0) {
	all_dead = true
	exit	
}

if(all_en_dead){
	exit
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
	
	if(players[current_player].your_turn == false) {
		current_player += 1
		if(current_player >= array_length_1d(players)) {
			current_player = 0
			//ENEMY TURN
			
			var i;
			for(i = 0; i < array_length_1d(en); i += 1) {
				if(en[i].current_hp > 0) {
					all_en_dead = false
					var j = choose(0,1,2)
					Attack(en[i].attack_power, en[i].chance_mod, players[j] )
				}
				
				else {
					all_en_dead = true
				}
			}
			
		}
		players[current_player].your_turn = true
	}

}