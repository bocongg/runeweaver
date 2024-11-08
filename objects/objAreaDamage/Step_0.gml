// Create damage objects if not already created
if createdDamageObjects == false {
    // Create a list to store all enemy instances within the area
    var _instList = ds_list_create();
    instance_place_list(x, y, objEnemyParent, _instList, false);
    
    var _listSize = ds_list_size(_instList);
    
    // Iterate through the list of colliding enemies
    for (var j = 0; j < _listSize; j++) {
        var colliding_enemy = ds_list_find_value(_instList, j);
        
        if (colliding_enemy != noone) {
            // Create the debuff information
            var damageOverTimeInfo = [];
            damageOverTimeInfo[DebuffInfo.DMG] = dotDmg; // Damage per tick
            damageOverTimeInfo[DebuffInfo.TICK_RATE] = game_get_speed(gamespeed_fps) * damageInterval;
            damageOverTimeInfo[DebuffInfo.DURATION] = game_get_speed(gamespeed_fps) * damageLast;
            damageOverTimeInfo[DebuffInfo.SPEED_REDUCTION] = spdReduct;
            damageOverTimeInfo[DebuffInfo.DAMAGE_COLOUR] = c_red;

            // Flag to check if a similar debuff exists
            var debuffExists = false;

            // Iterate through the debuffs on the enemy to check for a match
            for (var k = 0; k < array_length(colliding_enemy.debuffs); k++) {
                var existingDebuff = colliding_enemy.debuffs[k];
                
                // Check if the debuff matches based on specific properties
                if (existingDebuff[DebuffInfo.DAMAGE_COLOUR] == damageOverTimeInfo[DebuffInfo.DAMAGE_COLOUR] &&
                    existingDebuff[DebuffInfo.DMG] == damageOverTimeInfo[DebuffInfo.DMG]) {
                    
                    // Extend the duration of the existing debuff
                    existingDebuff[DebuffInfo.DURATION] += damageOverTimeInfo[DebuffInfo.DURATION];
                    debuffExists = true;
                    break; // Exit the loop once the debuff is found and updated
                }
            }

            // If no similar debuff was found, add the new debuff
            if (!debuffExists) {
                array_push(colliding_enemy.debuffs, damageOverTimeInfo);
            }
        }
    }
    
    // Free memory by destroying the ds_list
    ds_list_destroy(_instList);
    
    // Set createdDamageObjects to true to avoid creating damage objects repeatedly
    createdDamageObjects = true;
}

// Cleanup logic for damage objects
if floor(image_index) > 1 {
    if instance_exists(enemyDamageInst) {
        instance_destroy(enemyDamageInst);
    }
}
s