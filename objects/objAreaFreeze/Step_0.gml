//create damage objects
if createdDamageObjects == false {
	//var colliding_enemy = instance_place(x, y, objEnemyParent); 
	var _instList = ds_list_create();
	instance_place_list(x, y, objEnemyParent, _instList, false);
	
	var _listSize = ds_list_size(_instList);
	
	for (var i = 0; i < _listSize; i++) {
		show_debug_message("Instance ID in objAreaFreeze: " + string(instance_id_get(i)));
		
		var colliding_enemy = ds_list_find_value(_instList, i);
		
		
		if (colliding_enemy != noone) {
		
				// Check for collision with multiple enemies
				var damageOverTimeinfo = [];
				damageOverTimeinfo [DebuffInfo.DMG] = 0; // damage is however much damage the poison should apply each tick
				damageOverTimeinfo [DebuffInfo.TICK_RATE] = game_get_speed(gamespeed_fps) * 1; 
				damageOverTimeinfo [DebuffInfo.DURATION] = game_get_speed(gamespeed_fps) * 5; 
				damageOverTimeinfo [DebuffInfo.SPEED_REDUCTION] = 1; 
				damageOverTimeinfo [DebuffInfo.DAMAGE_COLOUR] = c_aqua; 

				array_push(colliding_enemy.debuffs, damageOverTimeinfo); 
				mask_index = other.sprite_index;
				image_xscale = other.image_xscale;
				image_yscale = other.image_yscale;
		}
	}
	
	//free memory by destroying the ds list
		ds_list_destroy(_instList);
		
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
