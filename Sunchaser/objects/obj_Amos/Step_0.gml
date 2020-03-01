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

x += moveX
y += moveY