//IF the room is a type of combat room then don't allow the player to move 
if(room == CombatRoom || room == CombatRoom_Landed) {
	//Set the sprite to the right facing srpit
	sprite_index = spr_Amos_Right_Still
	facing = dir.right
	
	//COMBAT
	if(your_turn && current_hp > 0) {
		if(keyboard_check_pressed(vk_space)) {
			Attack(attack_power,chance_mod, combat.en[combat.current_en])
			your_turn = false
		}
	}
	
	else {
		your_turn = false
	}
	
	exit
}

//If the player is in the ship cutscne don't allow the player to move and set the correct sprite
if(room == InsideShip) {
	sprite_index = spr_Amos_Right_Still
	exit
}

//If the menu is open don't allow the player to move 
if(menu.show_menu) {
	image_index = 0
	exit
}

//If the player is in this cutscene then move them to the correct position and dont let them move 
if(room == LandedOnHelios) {
	sprite_index = spr_Amos_Right
	if(x < 150) {
		x+= playerSpeed
	}
	//Once the player is done moving stop the movement 
	else {
		image_index = 0 
	}
	exit
}

//End cut scence information
if(room == EndRoom) {
	sprite_index = spr_Amos_Down
	image_index = 0
	exit
}
	


//UPDATE INPUT
inputLeft = keyboard_check(ord("A"))
inputRight = keyboard_check(ord("D"))
inputUp = keyboard_check(ord("W"))
inputDown = keyboard_check(ord("S"))
inputWalk = keyboard_check(vk_control)
inputRun = keyboard_check(vk_shift)


//ALTER SPEED
if(inputWalk) {
	playerSpeed = walkingSpeed
}

//If the player is pressing shift modify movement speed up
else if(inputRun) {
	playerSpeed = runningSpeed
}

//If the player is holding control slow the movement speed to a walk
else {
	playerSpeed = normalSpeed
}

//RESET MOVE VARS
moveX = 0
moveY = 0

//INTENDED MOVEMENT
moveY = (inputDown - inputUp) * playerSpeed
if(moveY == 0) {
	moveX = (inputRight - inputLeft) * playerSpeed
}

//Change the direction variable based on the player movement 
if(moveX != 0) {
	switch(sign(moveX)) {
		case 1: facing = dir.right; break
		case -1: facing = dir.left; break
	}
}

else if(moveY != 0) {
	switch(sign(moveY)) {
		case 1: facing = dir.down; break
		case -1: facing = dir.up; break
	}
}
else {
	facing = -1
}

//SPRITE MANAGMENT ****************************************************
switch(facing) {
	case dir.up: sprite_index = spr_Amos_Up; break
	case dir.down: sprite_index = spr_Amos_Down; break
	case dir.left: sprite_index = spr_Amos_Left; break
	case dir.right: sprite_index = spr_Amos_Right; break
	case -1: image_index = 0; break;
}


//APPLY MOVEMENT

if(canMove) {
	x += moveX
	y += moveY
}



