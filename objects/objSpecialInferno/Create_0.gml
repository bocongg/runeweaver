event_inherited();

dir = 5;
spd = 7;
xspd = 0; 
yspd = 0;

// cleanup
maxDist = 700;
destroy = false;
enemyDestroy = false;

dotDmg = other.dotDmg;
dmgInterval = other.dmgInterval; 
dmgLast = other.dmgLast; 
spdReduct = other.spdReduct;

audio_play_sound(sndSpecialAttack, 0, 0, 0.5);