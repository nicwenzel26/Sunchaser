//Only start the conversation if the user is close and the player clicks on the character
if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_convo_Para_AlphaRM)) {
	close = CheckIfClose(AmosAlphaRoom,obj_convo_Para_AlphaRM)
}