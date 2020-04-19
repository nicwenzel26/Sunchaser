//If the room is a combat room have him facing left
if(room == CombatRoom || room == CombatRoom_Landed) {
	sprite_index = spr_Alien_Guard_Left_Still
}
//Else having him facing down 
//Set in instance creation code otherwise
else {
	sprite_index = spr_Alien_Gaurd_Down_Still
}

//Tag for if the player has selected this enemy as a target
selected = false

//Combat stats
total_hp = 10
current_hp = 10
attack_power= 2
chance_mod = 60