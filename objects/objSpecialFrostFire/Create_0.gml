event_inherited();

dir = 5;
spd = 5;
xspd = 0; 
yspd = 0;

// cleanup
maxDist = 500;
destroy = false;
enemyDestroy = false;

//damage over time
damage = 0.5;
damageInterval = 0.5; //DO NOT SET TO ZERO //apply the damage every half a second
damageLast = 5; //damage effect will last for 5 seconds 

audio_play_sound(sndSpecialAttack, 0, 0, 0.5);