draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)

draw_text(global.text_offset, gui_height - 180, "Dock Manager: That sounds most agreeable. Welcome to Helios.")

draw_text(global.text_offset, gui_height - 100, "Paratheana Liked That")
draw_text(global.text_offset, gui_height - 80, "Hyperion Strongly Disliked That")

draw_text(global.text_offset, gui_height - 20, "Press Enter to Enter The Town")

if(keyboard_check_pressed(vk_enter)) {
	room_goto(TownRoom)
	menu.para_realationship += 1
	menu.hyperion_realationship -= 2 
}