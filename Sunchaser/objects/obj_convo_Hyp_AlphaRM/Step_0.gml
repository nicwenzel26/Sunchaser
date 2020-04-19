//Only start conversation if the user is close and clicks on the character
if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_convo_Hyp_AlphaRM)) {
	close = CheckIfClose(AmosAlphaRoom,obj_convo_Hyp_AlphaRM)
}