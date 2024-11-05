event_inherited();

dir = 5;
spd = 5;
xspd = 0; 
yspd = 0;

//beamLast
beamLast = 60; //1 sec is 60fps

// cleanup
maxDist = 500;
destroy = false;
enemyDestroy = false;

//damage over time
damage = 0.5;
damageInterval = 0.5; //DO NOT SET TO ZERO //apply the damage every half a second
damageLast = 5; //damage effect will last for 5 seconds 

audio_play_sound(sndFireBasic, 0, 0, 1.0, undefined, 1.0);