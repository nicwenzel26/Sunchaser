if(close && !done_talking) {
	gui_width = display_get_gui_width()
	gui_height = display_get_gui_height()
	
	
	draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)
	draw_text(global.text_offset, gui_height -180, "HYPERION: I think we should kill the Baron and just get it over with")
	draw_text(global.text_offset, gui_height - 100, " - I don't think so, we should here what he has to say first [1]")
	draw_text(global.text_offset, gui_height - 80, " - I agree, let's get this done so we can go home. [2]")
	
	if(keyboard_check_pressed(ord("1"))) {
		answer_one = true
	}
	
	if(keyboard_check_pressed(ord("2"))) {
		answer_two = true
	}
	
	if(answer_one) {
		draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)	
		draw_text(global.text_offset, gui_height - 180, "HYPERION: All right we will do it your way Captain")
		draw_text(global.text_offset, gui_height - 20, "Press Enter to Continue")
		if(keyboard_check_pressed(vk_enter)) {
			done_talking = true
		}
		
	}
	
	else if(answer_two) {
		draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)	
		draw_text(global.text_offset, gui_height - 180, "HYPERION: I am glad you concur with my assesment.")
		draw_text(global.text_offset, gui_height - 160, "Hyperion Liked That")
		draw_text(global.text_offset, gui_height - 20, "Press Enter to Continue")
		if(keyboard_check_pressed(vk_enter)) {
			done_talking = true
		}
	}
	
}