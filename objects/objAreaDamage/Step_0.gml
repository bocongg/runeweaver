//create damage objects
if createdDamageObjects == false {
	
	//create an object to damage enemies
	enemyDamageInst = instance_create_depth(x, y, 0, objDamageEnemy);
	with(enemyDamageInst) {	
		damage = other.damage;
		mask_index = other.sprite_index;
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
	}
	
	//set created var to true so we don't make a million damage objects
	createdDamageObjects = true;
}

//get rid of the damage objects once they're done
if floor(image_index) > 1 {	
	//destroy
	if instance_exists(enemyDamageInst) {
		instance_destroy(enemyDamageInst);
	}
}