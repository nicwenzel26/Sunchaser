draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)
	draw_text(global.text_offset, gui_height - 180, "Operator: Refusal to comply will result in erradication of your ship transmit your ID code.")
	draw_text(global.text_offset, gui_height - 100, "[1]: Calm down, transmitting code now.")
	
	if(keyboard_check_pressed(ord("1"))) {
		relent = true	
		instance_create_layer(0,0,"Instances", obj_start_convo_relent)
	}