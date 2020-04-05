if(room == CombatRoom) {
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

if(room == InsideShip) {
	sprite_index = spr_Amos_Right_Still
	exit
}


if(menu.show_menu) {
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

else if(inputRun) {
	playerSpeed = runningSpeed
}

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



