//RELENT CUT SCENCE
draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)
draw_text(global.text_offset, gui_height - 180, "Thank you Sunchaser, land and prepare for a search upon landing.")
draw_text(global.text_offset, gui_height - 140, "Hyperion: This could result in major altercation what is your instruction Captain.")
draw_text(global.text_offset, gui_height - 100, "[1]: Try to keep calm, we want this to go as smooth as possible")
draw_text(global.text_offset, gui_height - 80, "[2]: We open fire as soon as the door opens.")
		
if(keyboard_check_pressed(ord("1"))) {
	calm = true	
	instance_create_layer(0,0, "Instances", obj_start_convo_calm)
}
		
if(keyboard_check_pressed(ord("2"))) {
	kos = true	
	instance_create_layer(0,0, "Instances", obj_start_convo_kos)
}