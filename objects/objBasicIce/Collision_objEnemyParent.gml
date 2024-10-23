var damageOverTimeinfo = [];
damageOverTimeinfo [DebuffInfo.DMG] = damage; // damage is however much damage the poison should apply each tick
damageOverTimeinfo [DebuffInfo.TICK_RATE] = game_get_speed(gamespeed_fps) * slowdownInterval; 
damageOverTimeinfo [DebuffInfo.DURATION] = game_get_speed(gamespeed_fps) * slowdownLast; 
damageOverTimeinfo [DebuffInfo.SPEED_REDUCTION] = slowdown; 
damageOverTimeinfo [DebuffInfo.DAMAGE_COLOUR] = c_aqua; 

array_push(other.debuffs, damageOverTimeinfo); 