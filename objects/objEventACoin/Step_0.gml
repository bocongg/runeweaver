if (!global.eventA1clicked && !global.eventA2clicked){
	if (distance_to_object(objPlayer) < 20 && keyboard_check_pressed(ord("E"))){
		instance_create_layer(0, 0, "EventBase", objEventACard);
	}
}  else {
	sprite_index = sprEventCoinInactive;
}