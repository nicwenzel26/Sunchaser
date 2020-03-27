if(room == CombatRoom) {
	draw_self()
	draw_set_halign(fa_center)
	draw_set_valign(fa_bottom)
	draw_set_font(fnt_hp)
	draw_text_color(x, bbox_top , string(current_hp) + "/" + string(total_hp), c_red, c_red, c_red, c_red, 1)
}