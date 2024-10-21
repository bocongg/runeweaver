if (sprite_index != sprEventCoinInactive){
	if (distance_to_object(objPlayer) < 20 && keyboard_check_pressed(ord("E"))){
		instance_create_layer(0, 0, "UpgradeScreenBase", objEventACard);	
		sprite_index = sprEventCoinInactive;
	}
}