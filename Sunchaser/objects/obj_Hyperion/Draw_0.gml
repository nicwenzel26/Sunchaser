//If the room is a combat room draw the current health above their head 
if( room == CombatRoom || room == CombatRoom_Landed) {
	draw_set_halign(fa_center)
	draw_set_valign(fa_bottom)
	draw_set_font(fnt_hp)
	draw_text_color(x, y-45, string(current_hp) + "/" + string(total_hp), c_red, c_red, c_red, c_red, 1)
	
	//If it is this characters turn then draw the selected sprite behindthem
	if(your_turn && current_hp > 0) {
		draw_sprite(spr_current_player, 0, x, y)
	}
}

//Always draw the assinged sprite 	
draw_self()
	