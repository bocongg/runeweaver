damage = 1;
hitconfirm = false;

get_damaged_create();

debuffs = [];
tick = 0;
baseSpd = 0.2; 
chaseSpd = baseSpd;


freezeEnemy = false; //new
freezeEnemyID = noone;

spd = 0;
dir = 0;
xspd = 0;
yspd = 0; 

face = 1;

//state machine
state = 0; 

//shooting state
cooldownTime = 5*60; //4 seconds 
shootTimer = 0;
bulletInst = noone;
	
bulletXoff = 5;
bulletYoff = -20;

//create path to follow player
path = path_add();