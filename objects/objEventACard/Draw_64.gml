// Draws the upgrade background.
draw_sprite(sprEventACard, 0, 1920/2, 1080/2);

if (!instance_exists(objEventA1)){
	instance_create_layer(1523, 223, "Event", objCloseEvent);
	instance_create_layer(1156, 504, "Event", objEventA1);
	instance_create_layer(1156, 700, "Event", objEventA2);
}