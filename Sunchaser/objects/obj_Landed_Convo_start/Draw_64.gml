draw_set_halign(fa_left)
draw_set_font(fnt_text)

draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)
draw_text(global.text_offset, gui_height - 180, "Dock Manager: Stop right there. An inspection of your ship must be conducted before you enter Apollon.")
draw_text(global.text_offset, gui_height - 140, "Paratheana: They aint got a right to do that Cap'!")

draw_text(global.text_offset, gui_height - 100, "[1] No, they don't have a right. This is my ship and we havn't broken any laws.")
draw_text(global.text_offset, gui_height - 80, "[2] I don't see that we have much of a choice")

if(keyboard_check_pressed(ord("1"))) {
	instance_create_layer(0,0,"Instances", obj_Landed_Convo_resist)
}

if(keyboard_check_pressed(ord("2"))) {
	instance_create_layer(0,0,"Instances", obj_Landed_Convo_comply);
}