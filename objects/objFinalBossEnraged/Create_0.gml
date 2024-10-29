// Inherit the parent event
//hp
event_inherited();

get_damaged_create(50);

spd = 0;
chaseSpd = 6;
dir = 0;
xspd = 0;
yspd = 0; 

face = 1;

//state machine
state = 0; 

//shooting state
cooldownTime = 2*60; //4 seconds 
shootTimer = irandom(cooldownTime);
windupTime = 30;	//stand and freeze
recoverTime = 25;	//time before start chasing player
bulletInst = noone;
	
bulletXoff = 5;
bulletYoff = -20;