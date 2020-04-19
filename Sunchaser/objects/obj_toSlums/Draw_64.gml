//Let the player know they cant go this direction 
draw_set_halign(fa_left)
draw_set_font(fnt_text)

if(close) {
	draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)
	draw_text(global.text_offset, gui_height - 180, "To Slums...")
	draw_text(global.text_offset, gui_height - 20, "I have no reason to go this way...")
}

