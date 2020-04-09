draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)
draw_text(global.text_offset, gui_height -180, "Not a chance! Men Attack!")

draw_text(global.text_offset, gui_height - 20, "Press Enter to Fight")
if(keyboard_check_pressed(vk_enter)) {
	room_goto(CombatRoom_Landed)	
	
}