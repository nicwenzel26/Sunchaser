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

//APPLY MOVEMENT

if(canMove) {
	x += moveX
	y += moveY
}

//Setting animation based on movement
if(moveX < 0) {
	sprite_index = spr_Amos_Left	
}

else if(moveX > 0) {
	sprite_index = spr_Amos_Right
}

else if(moveY > 0) {
	sprite_index = spr_Amos_Down	
}

else if(moveY < 0) {
	sprite_index = spr_Amos_Up
}

else image_index = 0

