draw_set_halign(fa_left)
draw_set_font(fnt_text)

if(close) {
	draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)
	draw_text(global.text_offset, gui_height - 180, "Guard: You can't go this way sir.")
}

