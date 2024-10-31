// Draws the upgrade background.
draw_sprite(sprEventBCard, 0, 1920/2, 1080/2);


if (!instance_exists(objEventB1)){
	instance_create_layer(1523, 223, "Event", objCloseEvent);
	instance_create_layer(1164, 429, "Event", objEventB1);
	instance_create_layer(1164, 604, "Event", objEventB2);
	instance_create_layer(1164, 781, "Event", objEventB3);
}