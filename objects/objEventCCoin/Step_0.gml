if (!global.eventC1clicked && !global.eventC2clicked){
	if (distance_to_object(objPlayer) < 20 && keyboard_check_pressed(ord("E"))){
		instance_create_layer(0, 0, "EventBase", objEventCCard);	
	}
} else {
	sprite_index = sprEventCoinInactive;
	instance_destroy(objInteractableTooltip);
}