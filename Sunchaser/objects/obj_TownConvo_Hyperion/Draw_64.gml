if(close && !doneTalking) {
	draw_set_halign(fa_left)
	draw_set_font(fnt_text)
	
	draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)
	
	draw_text(global.text_offset, gui_height - 180, "Hyperion: They way these people live is deplorable. They need more order in their lives.")
	draw_text(global.text_offset, gui_height - 100, "[1] I disagree, there is nothing wrong with the simple life. The only thing wrong here is the Baron.")
	draw_text(global.text_offset, gui_height - 80, "[2] I agree, hopefully we can help that along.")
	
	if(keyboard_check_pressed(ord("1"))) {
		agree = true	
	}
	
	if(keyboard_check_pressed(ord("2"))) {
		disagree = true	
	}
	
	
	if(agree) {
		draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)
		draw_text(global.text_offset, gui_height - 180, "Hyperion: That is a naive point of view Captain.")
		draw_text(global.text_offset, gui_height - 100, "Hyperion Hated That")
		draw_text(global.text_offset, gui_height - 20, "Press Enter to Exit")
		if(keyboard_check_pressed(vk_enter)) {
			doneTalking = true	
			menu.hyperion_realationship -= 3
		}
	}
	
	else if(disagree) {
		draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)
		draw_text(global.text_offset, gui_height - 180, "Hyperion: *Nods*")
		draw_text(global.text_offset, gui_height - 100, "Hyperion Loved That")
		draw_text(global.text_offset, gui_height - 20, "Press Enter to Exit")
		if(keyboard_check(vk_enter)) {
			doneTalking = true	
			menu.hyperion_realationship += 3
		}
	}
	
	
	
}