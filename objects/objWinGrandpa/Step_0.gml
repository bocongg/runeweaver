if (distance_to_object(objPlayer) < 20 && keyboard_check_pressed(ord("E"))){
	instance_destroy(objInteractableTooltip);
	instance_create_layer(3080, 452, "Instances", objWinTextWelcome)
	alarm_set(0, 180);
}

if (instance_exists(objWinTextEndGame)){
	if (distance_to_object(objPlayer) < 20 && keyboard_check_pressed(ord("X"))){
		game_end();
	}
}