damage = 5;
hitconfirm = false;

dir = 5;
spd = 8;
xspd = 0; 
yspd = 0;

//state control
state = 0;
//0 = not moving, aim for the player and wait for the enemy to shoot
//1 = shoot towards the player

// cleanup
destroy = false;
playerDestroy = false;

//create path to follow player
path = path_add();

