if (instance_exists(objChest)){
	instance_destroy(objSpikeLarge);
	effect_create_above(ef_explosion, x, y, 2, c_red);
}