attack_power = argument0
chance_mod = argument1
target = argument2

chance_hit = random_range(1, 100)

if(chance_hit >= chance_mod) {
	target.current_hp -= attack_power
}
	