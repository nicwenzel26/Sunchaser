draw_set_halign(fa_left)
draw_set_font(fnt_text)

if(close) {
	draw_rectangle_color(0, 0, gui_width, 200, c_black, c_black, c_black, c_black, false)

	draw_text(global.text_offset,  40, "To Coal Mines...")
	draw_text(global.text_offset,180, "I have no reason to go this way...")
}

