//IF the room is a combat room draw their health above their head
if(room == CombatRoom || room ==CombatRoom_Landed) {
	draw_set_halign(fa_center)
	draw_set_valign(fa_bottom)
	draw_set_font(fnt_hp)
	draw_text_color(x, bbox_top , string(current_hp) + "/" + string(total_hp), c_red, c_red, c_red, c_red, 1)
	
	//If the user has them selected as the target enemy draw the selected sprite behind them
	if(selected) {
		draw_sprite(spr_selected_enemy, 0, x, y)
	}
	draw_self()
}

//Always draw sprite assigned to object
else {
	draw_self()
}