
if( room == CombatRoom || room == CombatRoom_Landed) {
	draw_set_halign(fa_center)
	draw_set_valign(fa_bottom)
	draw_set_font(fnt_hp)
	draw_text_color(x, y-45, string(current_hp) + "/" + string(total_hp), c_red, c_red, c_red, c_red, 1)
	
	if(your_turn && current_hp > 0) {
		draw_sprite(spr_current_player, 0, x, y)
	}
}
	
draw_self()
	