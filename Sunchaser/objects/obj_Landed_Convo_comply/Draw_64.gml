draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)
draw_text(global.text_offset, gui_height - 180, "Dock Manager: Thank you, we will be right back.")


do_transition += 1

if(do_transition > 120 and do_transition< 300) {
	draw_rectangle_color(0,0, gui_width, gui_height, c_black, c_black, c_black, c_black, false)
	
}

if(do_transition > 300) {
	instance_create_layer(0,0,"Instances", obj_Landed_Convo_endComply)	
}