event_inherited();

if (beamLast > 0) {
    objPlayer.canMove = false;
} else {
    objPlayer.canMove = true;
}
// Increment the animation counter
animation_counter += 1;

// Calculate the normalized progress of the animation (from 0 to 1)
var animation_progress = animation_counter / animation_steps;

// Update the image_index based on the progress
image_index = animation_progress * (sprite_get_number(sprite_index) - 1);

// Loop the animation if it reaches the end
if (animation_counter >= animation_steps) {
    animation_counter = 0; // Reset the counter to loop the animation
}



//create damage objects
if createdDamageObjects == false {
	//var colliding_enemy = instance_place(x, y, objEnemyParent); 
	var _instList = ds_list_create();
	instance_place_list(x, y, objEnemyParent, _instList, false);
	
	var _listSize = ds_list_size(_instList);
	
	for (var i = 0; i < _listSize; i++) {
		
		var colliding_enemy = ds_list_find_value(_instList, i);
		
		if (colliding_enemy != noone) {
		
				// Check for collision with multiple enemies
				var damageOverTimeinfo = [];
				damageOverTimeinfo [DebuffInfo.DMG] = dotDmg; // damage is however much damage the poison should apply each tick
				damageOverTimeinfo [DebuffInfo.TICK_RATE] = game_get_speed(gamespeed_fps) * dmgInterval; 
				damageOverTimeinfo [DebuffInfo.DURATION] = game_get_speed(gamespeed_fps) * dmgLast; 
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

	//destroy
	beamLast--;
	if beamLast == 0 {instance_destroy();}