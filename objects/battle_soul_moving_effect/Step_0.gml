if (instance_exists(battle_turn)) {
	image_alpha -= 0.025
	if (image_alpha <= 0)
		instance_destroy()
}else if (!instance_exists(battle_turn)) {
	instance_destroy()
}