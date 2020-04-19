//INTRO CUTSCENE TEXT

draw_set_halign(fa_left)
draw_set_font(fnt_text)
draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)

draw_text(global.text_offset, gui_height - 180, "The SSV Sunchaser and its crew have been sent to the Helios V system on a mission to elminate a local baron.")
draw_text(global.text_offset, gui_height - 160, "Her crew comprise Captain Amos Rey a human from the outer planets.")
draw_text(global.text_offset, gui_height - 140, "Hyperion a liberated sentient artifical intellegence from the prision planet HP-467")
draw_text(global.text_offset, gui_height - 120, "And Paratheana an Elysian mechanic from the inner planets.")

draw_text(global.text_offset, gui_height - 20, "Press Enter to Continue")

if(keyboard_check_pressed(vk_enter) and !step_one) {
	step_one = true;
	exit;
}

if(step_one) {
	draw_rectangle_color(0, gui_height - 200, gui_width, gui_height, c_black, c_black, c_black, c_black, false)
	draw_text(global.text_offset, gui_height - 180, "Helios is a conflicted system with two rival factions vying for power in the vacuum left by the collapse of the Galactic Alliance")
	draw_text(global.text_offset, gui_height - 160, "The Baron is the last vestige of this old power and his removal will change things greatly in Helios and the rest of the system. " )
	draw_text(global.text_offset, gui_height - 140, "The decisions made by Amos and his crew will be the turning point for this star system.  ")
	
	draw_text(global.text_offset, gui_height - 20, "Press Enter to Continue")
	if(keyboard_check_pressed(vk_enter)) {
		step_two = true
	}
	
	
}

if(step_two) {
		room_goto(InsideShip)
	}