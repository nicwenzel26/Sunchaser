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
		switch(hyperion_realationship) {
			case -3: hyperion_stat = "Hated"; break
			case -2: hyperion_stat = "Disliked"; break;
			case -1: hyperion_stat = "Nerutral"; break;
			case 0: hyperion_stat = "Neutral"; break
			case 1: hyperion_stat = "Neutral"; break
			case 2: hyperion_stat = "Freindly"; break
			case 3: hyperion_stat = "Freindly"; break
			case 4: hyperion_stat = "Loyal" ; break
			case 5: hyperion_stat = "Steadfast"; break
		}
		
		if(hyperion_realationship <= -3) hyperion_stat = "Hated"
		if(hyperion_realationship >= 5) hyperion_stat = "Steadfast"
		if(para_realationship <= -2) para_stat = "Hated"
		if(para_realationship >= 5) para_stat = "Steadfast"
		
		switch(para_realationship) {
			case -1: para_stat = "Neutral"; break
			case 0: para_stat = "Neutral"; break
			case 1: para_stat = "Neutral"; break
			case 2:	para_stat = "Freindly"; break
			case 3: para_stat = "Freindly"; break
			case 4: para_stat = "Loyal" ; break
			case 5: para_stat = "Steadfast"; break
		}
		
		switch(blue_sun_realationship) {
			case 0: blue_stat = "Neutral"; break
			case 1: blue_stat = "Neutral"; break
			case 2:	blue_stat = "Freindly"; break
			case 3: blue_stat = "Freindly"; break
			case 4: blue_stat = "Loyal" ; break
			case 5: blue_stat = "Steadfast"; break
		}
		
		switch(red_moons_realationship) {
			case 0: red_stat = "Neutral"; break
			case 1: red_stat = "Neutral"; break
			case 2:	red_stat = "Freindly"; break
			case 3: red_stat = "Freindly"; break
			case 4: red_stat = "Loyal" ; break
			case 5: red_stat = "Steadfast"; break
		}
		
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
