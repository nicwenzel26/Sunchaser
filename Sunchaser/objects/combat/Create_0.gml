instance_deactivate_layer("Transition")

if(room == CombatRoom) {
	en[0] = AG1
	en[1] = AG2
	
}

if(room == CombatRoom_Landed) {
	en[0] = AG_Landed1
	en[1] = AG_LANDED2
	en[2] = HG1
}

//Getting the gui height and width to cover the whole screen
gui_width = display_get_gui_width()
gui_height = display_get_gui_height()

current_player = 0
players[0] = obj_Amos
players[1] = obj_Hyperion
players[2] = obj_Paratheana


current_en = 0
players_turn = true
all_dead = false
all_en_dead = false