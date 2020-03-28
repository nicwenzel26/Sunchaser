if(close && !done_talking) {
	
	
	draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)
	draw_text(global.text_offset, gui_height -180, "BARON: What is the meaning of this? Who are you?")
	draw_text(global.text_offset, gui_height -100, " [1] I don't have time for this (Attack) ")
	draw_text(global.text_offset, gui_height -80, " [2] Me and my crew have been sent to kill you, what do you have to say for yourself.")
	
	if(keyboard_check_pressed(ord("1"))) {
		answer_one = true
	}
	
	if(keyboard_check_pressed(ord("2"))) {
		answer_two = true
	}
	
	if(answer_one) {
		draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)
		draw_text(global.text_offset, gui_height - 20, "PRESS W TO FIGHT")
		instance_activate_layer("Transition_Convo")
		if(keyboard_check_pressed(ord("W"))) {
			done_talking = true
		}
	}
	
	else if(answer_two) {
		draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)
		draw_text(global.text_offset, gui_height - 180, "BARON: How dare you! Guards attack!!")
		draw_text(global.text_offset, gui_height - 20, "PRESS W TO FIGHT")
		instance_activate_layer("Transition_Convo")
		if(keyboard_check_pressed(ord("W"))) {
			done_talking = true
		}
		
	}
		
}