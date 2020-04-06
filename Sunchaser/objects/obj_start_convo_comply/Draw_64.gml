if(!confident and !agressive) {
	draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)
	draw_text(global.text_offset, gui_height - 180, "Operator: Thank you Icarus, you are cleared for entry, please land at designated port where your ship will be searched")
	draw_text(global.text_offset, gui_height - 160, "Paratheana: Cap I do not think the feds are gonna like the cargo we have, breaks a lot of local laws, This could go real pear shaped.")
	draw_text(global.text_offset, gui_height - 100, "[1]: Don't worry so much, we have this under control.")
	draw_text(global.text_offset, gui_height - 80, "[2]: If worse comes to worse we kill them, job description says by any means necessary.")
	
	if(keyboard_check_pressed(ord("1"))) {
		confident = true
		instance_create_layer(0,0, "Instances", obj_start_confident)
	}
	
	if(keyboard_check_pressed(ord("2"))) {
		agressive = true	
		instance_create_layer(0,0, "Instances", obj_start_convo_aggressive)
	}
}