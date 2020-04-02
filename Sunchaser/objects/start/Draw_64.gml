draw_set_halign(fa_center)
draw_set_font(fnt_title)
draw_text_transformed(gui_width/2, 20, "SUNCHASER", 2,2,0)

draw_text(gui_width/2, 2*gui_height/3, "PRESS ENTER TO START")

if(keyboard_check_pressed(vk_enter)) {
	room_goto(TownRoom)	
}