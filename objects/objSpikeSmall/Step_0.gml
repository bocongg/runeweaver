if (instance_exists(objChest)){
	with (objSpikeSmall){
		effect_create_above(ef_explosion, x, y, 1, c_red);
	}
	instance_destroy(objSpikeSmall);
}