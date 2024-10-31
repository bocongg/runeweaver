// Inherit the parent event
//hp
event_inherited();

get_damaged_create(10);

spd = 0;
chaseSpd = 3;
dir = 0;
xspd = 0;
yspd = 0; 

face = 1;

//state machine
state = 0; 

//shooting state
cooldownTime = 4*60; //4 seconds 
shootTimer = irandom(cooldownTime);
windupTime = 60;	//stand and freeze
recoverTime = 45;	//time before start chasing player
bulletInst = noone;
	
bulletXoff = 5;
bulletYoff = -20;

//create path to follow player
path = path_add();