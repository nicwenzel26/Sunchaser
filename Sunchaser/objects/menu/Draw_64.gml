switch(room) {
	case startRoom: in_convo = true; break;
	case introCutRoom: in_convo = true; break;
	case InsideShip: in_convo = true; break;
	case LandedOnHelios: in_convo = true; break;
	default: in_convo = false; break;
}



if(keyboard_check_pressed(vk_escape) && !in_convo) {
	show_menu = !show_menu	
}

if(show_menu) {
	
	draw_set_font(fnt_menu)
	draw_set_halign(fa_center)
	draw_set_valign(fa_bottom)
	draw_rectangle_color(20, 20, gui_width - 20, gui_height - 20, c_black, c_black, c_black, c_black, false)
	draw_text(gui_width/2, gui_height/ 4, "[1] CONTROLS")
	draw_text(gui_width/2, gui_height / 2, "[2] REALATIONSHIP STATUS")
	
	draw_text(gui_width/2, gui_height - 20, "Press ESC to go back")
	
	if(keyboard_check_pressed(ord("1"))) {
		show_controls = !show_controls
	}
	
	if(keyboard_check_pressed(ord("2"))) {
		show_status = !show_status
	}
	
	if(show_controls) {
		draw_rectangle_color(20, 20, gui_width - 20, gui_height - 20, c_black, c_black, c_black, c_black, false)
		draw_text(gui_width / 2, gui_height/ 8, "Walk - WASD" )
		draw_text(gui_width/2, gui_height/4, "Talk - Click when close")
		draw_text(gui_width/2, 3*gui_height / 8, "Attack - SPACEBAR")
		draw_text(gui_width/2, gui_height/2, "Select Enemy - UP/DOWN")
		draw_text(gui_width/2, gui_height - 20, "Press TAB to go back")
		
		if(keyboard_check_pressed(vk_tab)) {
			show_controls = false	
		}
	}
	
	if(show_status) {
		
		if(hyperion_realationship >= 0 && hyperion_realationship < 2) hyperion_stat = "Neutral"
		if(hyperion_realationship >=2 && hyperion_realationship <= 4) hyperion_stat = "Friendly"
		if(hyperion_realationship >= 5 && hyperion_realationship < 6) hyperion_stat = "Loyal"
		if(hyperion_realationship < 0 && hyperion_realationship > -3) hyperion_stat = "Disliked"
		if(hyperion_realationship <= -3) hyperion_stat = "Hated"
		if(hyperion_realationship >= 6) hyperion_stat = "Steadfast"
		
		
		if(para_realationship >= 0 && para_realationship < 2) para_stat = "Neutral"
		if(para_realationship >=2 && para_realationship <= 4) para_stat = "Friendly"
		if(para_realationship >= 5 && para_realationship < 6) para_stat = "Loyal"
		if(para_realationship < 0 && para_realationship > -3) para_stat = "Disliked"
		if(para_realationship <= -3) para_stat = "Hated"
		if(para_realationship >= 6) para_stat = "Steadfast"
		
		
		if(blue_realationship >= 0 && blue_realationship < 2) blue_stat = "Neutral"
		if(blue_realationship >=2 && blue_realationship <= 4) blue_stat = "Friendly"
		if(blue_realationship >= 5 && blue_realationship < 6) blue_stat = "Loyal"
		if(blue_realationship < 0 && blue_realationship > -3) blue_stat = "Disliked"
		if(blue_realationship <= -3) blue_stat = "Hated"
		if(blue_realationship >= 6) blue_stat = "Steadfast"
		


		if(red_realationship >= 0 && red_realationship < 2) red_stat = "Neutral"
		if(red_realationship >=2 && red_realationship <= 4) red_stat = "Friendly"
		if(red_realationship >= 5 && red_realationship < 6) red_stat = "Loyal"
		if(red_realationship < 0 && red_realationship > -3) red_stat = "Disliked"
		if(red_realationship <= -3) red_stat = "Hated"
		if(red_realationship >= 6) red_stat = "Steadfast"
		


		
		draw_rectangle_color(20, 20, gui_width - 20, gui_height - 20, c_black, c_black, c_black, c_black, false)
		draw_text(gui_width/2, gui_height/8, "HYPERION: " + hyperion_stat )
		draw_text(gui_width/2, gui_height/4, "PARATHEANA: " + para_stat )
		draw_text(gui_width/2, 3*gui_height/8, "BLUE SUNS: " + blue_stat )
		draw_text(gui_width/2, gui_height/2, "RED MOONS: " + red_stat )
		
		draw_text(gui_width/2, gui_height - 20, "Press TAB to go back")
		
		if(keyboard_check_pressed(vk_tab)) {
			show_status = false	
		}
	}
	
	draw_set_halign(fa_left)
}
