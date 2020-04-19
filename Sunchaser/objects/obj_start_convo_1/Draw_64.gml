//INSIDE SHIP CUTSCENE 

draw_set_halign(fa_left)
draw_set_font(fnt_text)

if(!comply and !do_not_comply ){
	draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)

	draw_text(global.text_offset, gui_height - 180, "*Communication Link Opens")
	draw_text(global.text_offset, gui_height - 160, "Unidentified vessel, please transmit your vessal ID code and wait for landing instructions")

	draw_text(global.text_offset, gui_height - 100, "[1]: This is SSV Icarus coe 357-Alpha requesting permission to land on Helios V, township Apollon.")
	draw_text(global.text_offset, gui_height - 80, "[2]: I don't need anyones permission to land my own ship, Hyperion land the ship.")

	if(keyboard_check_pressed(ord("1"))) {
		comply = true
		instance_create_layer(0,0,"Instances", obj_start_convo_comply)
	}

	if(keyboard_check_pressed(ord("2"))) {
		do_not_comply = true	
		instance_create_layer(0,0, "Instances", obj_start_convo_do_not_comply)
	}
}

	
		
