event_inherited();

dir = 5;
spd = 5;
xspd = 0; 
yspd = 0;

// cleanup
maxDist = 500;
destroy = false;
enemyDestroy = false;

audio_play_sound(sndIceBasic, 0, 0, 0.5);

////slowdown over time
//damage = 0.5;
//slowdownInterval = 0.5; //DO NOT SET TO ZERO //apply the slowdown every half a second
//slowdownLast = 5; //slowdown effect will last for 5 seconds 
//slowdown = 0.7; //freeze is 1, 0.5 means slowdown by 50%