// Inherit the parent event
//hp
event_inherited();

spd = 0;
chaseSpd = 3;
dir = 0;
xspd = 0;
yspd = 0; 

face = 1;

//state machine
state = 0; 

//create path to follow player
path = path_add();