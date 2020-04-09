draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)

draw_text(global.text_offset, gui_height - 180, "Dock Manager: If you don't comply you will be taken into custody and your ship will be impounded.")

draw_text(global.text_offset, gui_height - 100, "[1] This is obviously a shakedown, but I don't have time for it, so how about I give you each 20 credits and we forget this happened. (60% Chance)")
draw_text(global.text_offset, gui_height - 80, "[2] Fine, just don't break anything.")
draw_text(global.text_offset, gui_height - 60, "[3] No, there is no way you are getting on my ship! (Attack)")

if(keyboard_check_pressed(ord("1"))) {
	if(random_range(0, 100) <= 60) {
		instance_create_layer(0,0, "Instances", obj_Landed_Convo_Per_Win)
	}
	
	else {
		instance_create_layer(0,0, "Instances", obj_Landed_Convo_Per_Lose)
	}
	
}

if(keyboard_check_pressed(ord("2"))) {
	instance_create_layer(0,0,"Instances", obj_Landed_Convo_comply)
}

if(keyboard_check_pressed(ord("3"))) {
	room_goto(CombatRoom_Landed)	
}