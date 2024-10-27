if (!global.eventB1clicked && !global.eventB2clicked && !global.eventB3clicked){
	if (distance_to_object(objPlayer) < 20 && keyboard_check_pressed(ord("E"))){
		instance_create_layer(0, 0, "EventBase", objEventBCard);	
	}
} else {
	sprite_index = sprEventCoinInactive;
	instance_destroy(objInteractableTooltip);
}