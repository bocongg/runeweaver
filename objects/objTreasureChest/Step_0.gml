if (distance_to_object(objPlayer) < 20 && keyboard_check_pressed(ord("E"))){
	sprite_index = sprTreasureChestOpened;
	instance_destroy(objInteractableTooltip);
	
	audio_play_sound(sndChestOpen, 0, 0, 1.0, undefined, 1.0);
	if (!obtainedTreasure){
		instance_create_layer(1920/2, 1080/2, "UpgradeScreenBase", objGetTreasureScreen);
		obtainedTreasure = true;
	}
}