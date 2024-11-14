event_inherited(); // --> damage = 1; hitconfirm = false;

damage = other.damage;
dir = 5;
spd = 10;
xspd = 0; 
yspd = 0;

// cleanup
maxDist = 700;
destroy = false;
enemyDestroy = false;

//damage over time
//dotDmg = other.dotDmg;
//dmgInterval = other.dmgInterval; 
//dmgLast = other.dmgLast; 
//spdReduct = other.spdReduct;

show_debug_message("===START objBasicBullet Create Event ===");
show_debug_message("dotDmg:" + string(dotDmg));
show_debug_message("damageInterval:" + string(dmgInterval));
show_debug_message("damageLast:" + string(dmgLast));
show_debug_message("spdReduct:" + string(spdReduct));
show_debug_message("===END objBasicBullet Create Event ===");