//create damage objects
if createdDamageObjects == false {
	var colliding_enemy = instance_place(x, y, objEnemyParent);  
		if (colliding_enemy != noone) {
	//create an object to damage enemies
	enemyDamageInst = instance_create_depth(x, y, 0, objDamageEnemy);
	with(enemyDamageInst) {	
		
		// Check for collision with multiple enemies
		with (objAreaDamage) {

			var damageOverTimeinfo = [];
			damageOverTimeinfo [DebuffInfo.DMG] = 1; // damage is however much damage the poison should apply each tick
			damageOverTimeinfo [DebuffInfo.TICK_RATE] = game_get_speed(gamespeed_fps) * 0.5; 
			damageOverTimeinfo [DebuffInfo.DURATION] = game_get_speed(gamespeed_fps) * 5; 
			damageOverTimeinfo [DebuffInfo.SPEED_REDUCTION] = 0; 

			array_push(colliding_enemy.debuffs, damageOverTimeinfo); 
			show_debug_message("sprite_index: " + string(other.sprite_index) + "image_xscale: " + string(other.image_xscale) + "image_yscale: " + string(other.image_yscale));
			mask_index = other.sprite_index;
			image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		}
	}	
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
