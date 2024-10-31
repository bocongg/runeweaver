// Draws the upgrade background.
draw_sprite(sprEventCCard, 0, 1920/2, 1080/2);

if (!instance_exists(objEventC1)){
	instance_create_layer(1523, 223, "Event", objCloseEvent);
	instance_create_layer(1164, 429, "Event", objEventC1);
	instance_create_layer(1164, 604, "Event", objEventC2);
	instance_create_layer(1164, 781, "Event", objEventC3);
}