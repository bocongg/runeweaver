damage = 1;
hitconfirm = false;

get_damaged_create();

debuffs = [];
tick = 0;
baseSpd = 6; 
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
cooldownTime = 2*60; //4 seconds 
shootTimer = irandom(cooldownTime);
windupTime = 40;	//stand and freeze
recoverTime = 25;	//time before start chasing player
bulletInst = noone;
	
bulletXoff = 5;
bulletYoff = -20;

//create path to follow player
path = path_add();