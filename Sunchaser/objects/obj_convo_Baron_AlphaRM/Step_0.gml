//Only start the conversation if the player is close and clicked on the character
if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_convo_Baron_AlphaRM)) {
	close = CheckIfClose(AmosAlphaRoom,obj_convo_Baron_AlphaRM)
}