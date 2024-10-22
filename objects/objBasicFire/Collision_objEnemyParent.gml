var damageOverTimeinfo = [];
damageOverTimeinfo [DebuffInfo.DMG] = damage; // damage is however much damage the poison should apply each tick
damageOverTimeinfo [DebuffInfo.TICK_RATE] = game_get_speed(gamespeed_fps) * damageInterval; 
damageOverTimeinfo [DebuffInfo.DURATION] = game_get_speed(gamespeed_fps) * damageLast; 
damageOverTimeinfo [DebuffInfo.SPEED_REDUCTION] = 0; 

array_push(other.debuffs, damageOverTimeinfo); 