draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)

draw_text(global.text_offset, gui_height - 180, "Dock Manager: Alright everything seems to be in order. Welcome to Helios.")
draw_text(global.text_offset, gui_height - 100, "Paratheana Disliked That.")
draw_text(global.text_offset, gui_height - 80, "Hyperion Disliked That.")
draw_text(global.text_offset, gui_height - 20, "Press Enter to Enter the Town")

if(keyboard_check_pressed(vk_enter)) {
	menu.para_realationship -= .5
	menu.hyperion_realationship -= .5
	room_goto(TownRoom)
}