//PARATHEANA CONVERSATION IN THE BARONS CHAMBER
if(close && !global.done_talking_Para_Alpha) {
	draw_set_font(fnt_text)
	draw_set_halign(fa_left)
	draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)
	draw_text(global.text_offset, gui_height - 180, "PARA: Cap, are you sure this is a good idea?")
	
	draw_text(global.text_offset, gui_height - 100, " [1] This guy has been enslaving these people for far to long, we have to help them.")
	draw_text(global.text_offset, gui_height - 80, " [2] We are getting paid, so shut it and lets get it done.")
	
	if(keyboard_check_pressed(ord("1"))) {
		answer_one = true
	}
	
	if(keyboard_check_pressed(ord("2"))) {
		answer_two = true
	}
	
	if(answer_one) {
		draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)
		draw_text(global.text_offset, gui_height - 180, "PARA: Yeah you are right, we have to help these folk")
		draw_text(global.text_offset, gui_height - 100, "Paratheana Loved That")
		
		draw_text(global.text_offset, gui_height -20, "Press Enter to Continue")
		
		if(keyboard_check_pressed(vk_enter)) {
			global.done_talking_Para_Alpha = true
			menu.para_realationship += 2
		}
			
	}
	
	else if(answer_two) {
		draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)
		draw_text(global.text_offset, gui_height - 180, "Yes sir...")
		draw_text(global.text_offset, gui_height - 100, "Paratheana disliked that.")
		
		draw_text(global.text_offset, gui_height - 20, "Press Enter to Continue")
		
		if(keyboard_check_pressed(vk_enter)) {
			global.done_talking_Para_Alpha = true
			menu.para_realationship -= 1
		}
	}
}