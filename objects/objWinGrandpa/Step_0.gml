if (!instance_exists(objWinTextWelcome) && !instance_exists(objWinTextEndGame)){
	if (distance_to_object(objPlayer) < 40 && keyboard_check_pressed(ord("E"))){
		instance_destroy(objInteractableTooltip);
		instance_create_layer(3080, 452, "Instances", objWinTextWelcome)
		alarm_set(0, 60);
	}
}

if (instance_exists(objWinTextEndGame)){
	if (distance_to_object(objPlayer) < 40 && keyboard_check_pressed(ord("X"))){
		instance_create_layer(1920/2, 1080/2, "Instances", objWinRestart)
	}
}