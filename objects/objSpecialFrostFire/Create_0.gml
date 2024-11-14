event_inherited();

dir = 5;
spd = 5;
xspd = 0; 
yspd = 0;

show_debug_message("===START objSpecialFrostFire Create Event ===");
show_debug_message("dotDmg:" + string(dotDmg));
show_debug_message("damageInterval:" + string(dmgInterval));
show_debug_message("dmgLast:" + string(dmgLast));
show_debug_message("spdReduct:" + string(spdReduct));
show_debug_message("=== END objSpecialFrostFire Create Event ===");

// cleanup
maxDist = 700;
destroy = false;
enemyDestroy = false;

audio_play_sound(sndSpecialAttack, 0, 0, 0.5);