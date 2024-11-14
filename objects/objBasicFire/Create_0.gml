event_inherited();

dir = 5;
spd = 10;
xspd = 0; 
yspd = 0;

dotDmg = other.dotDmg;
dmgInterval = other.dmgInterval; 
dmgLast = other.dmgLast; 
spdReduct = other.spdReduct;
show_debug_message("===START objFireBasic Create Event ===");
show_debug_message("dotDmg:" + string(dotDmg));
show_debug_message("damageInterval:" + string(dmgInterval));
show_debug_message("dmgLast:" + string(dmgLast));
show_debug_message("spdReduct:" + string(spdReduct));
show_debug_message("===END objFireBasic Create Event ===");

// cleanup
maxDist = 700;
destroy = false;
enemyDestroy = false;

audio_play_sound(sndFireBasic, 0, 0, 0.5);