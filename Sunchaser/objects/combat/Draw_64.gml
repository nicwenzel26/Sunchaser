if(all_dead) {
	draw_set_font(fnt_end)
	draw_text_color(gui_width/2, gui_height/2, "YOU DIED!", c_red, c_red, c_red, c_red, 1)
	
	draw_set_font(fnt_norm)
	draw_text(gui_width/2, gui_height/2 + 20, "Press Enter to Restart Fight")
	
	if(keyboard_check(vk_enter)) {
		room_restart()
	}
}


if(all_en_dead) {
	draw_set_font(fnt_end)
	draw_text_color(gui_width/2, gui_height/2, "YOU WIN!", c_green, c_green, c_green, c_green, 1)
	
	draw_set_font(fnt_norm)
	draw_text(gui_width/2, gui_height/2 + 20, "Press Enter to Continue.")
	
	if(keyboard_check_pressed(vk_enter)) {
		instance_activate_layer("Transition")
	}
}