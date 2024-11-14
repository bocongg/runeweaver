// Create the debuff information
var damageOverTimeInfo = [];
damageOverTimeInfo[DebuffInfo.DMG] = dotDmg; // Damage per tick
damageOverTimeInfo[DebuffInfo.TICK_RATE] = game_get_speed(gamespeed_fps) * dmgInterval;
damageOverTimeInfo[DebuffInfo.DURATION] = game_get_speed(gamespeed_fps) * dmgLast;
damageOverTimeInfo[DebuffInfo.SPEED_REDUCTION] = spdReduct;
damageOverTimeInfo[DebuffInfo.DAMAGE_COLOUR] = c_red;


// Flag to check if a similar debuff exists
var debuffExists = false;

// Iterate through the debuffs to check if a similar debuff is already active
for (var i = 0; i < array_length(other.debuffs); i++) {
    var existingDebuff = other.debuffs[i];
    
    // Check if the debuff matches based on its properties (you can add more checks if needed)
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
    array_push(other.debuffs, damageOverTimeInfo);
}
