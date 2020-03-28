randomize()
room_goto_next()

global.text_offset = 20

//Getting the gui height and width to cover the whole screen
gui_width = display_get_gui_width()
gui_height = display_get_gui_height()

//var to handle the opqueness of the screen when doing a transition
black_alpha = 0

//Transition room initally set to nothing
spawn_room = -1

//Initally set that the game is not doing a room transition
do_transition = false

//var to handle the direction the player is facing
spawn_player_facing = -1

//Vars for players start location
spawn_x = 0
spawn_y = 0


//Enum to handle the players direction

enum dir {
	right = 0,
	up = 90,
	left = 180,
	down = 270
}