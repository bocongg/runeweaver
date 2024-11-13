if (instance_exists(objChest)){
	with (objSpikeLarge){
		effect_create_above(ef_explosion, x, y, 1, c_red);
	}
	instance_destroy(objSpikeLarge);
}