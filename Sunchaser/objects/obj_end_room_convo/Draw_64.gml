//END CONVERSATION
draw_set_halign(fa_left)
draw_set_font(fnt_text)
	
draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)

draw_text(global.text_offset, gui_height - 180, "Strangers: We have a proposition...")
draw_text(global.text_offset, gui_height - 20, "Press Enter to Continue.")

if(keyboard_check_pressed(vk_enter)) {
	done = true	
}


if(done) {
	draw_rectangle_color(0, 0, gui_width, gui_height, c_black, c_black, c_black, c_black, false)
	draw_set_font(fnt_title)
	draw_set_halign(fa_center)
	draw_text_transformed(gui_width/2, 140, "SUNCHASER", 3, 3, 0)
	draw_text(gui_width / 2, gui_height/2, "To Be Continued...")
	draw_text(gui_width/2, gui_height - 30, "Press Escape to Return to Menu")
	if(keyboard_check_pressed(vk_escape)) {
		game_restart()	
	}
}