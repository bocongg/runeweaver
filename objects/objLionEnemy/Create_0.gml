damage = 4;
hitconfirm = false;

get_damaged_create(20);

debuffs = [];
tick = 0;
baseSpd = 1; 
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
cooldownTime = 6*60; //4 seconds 
shootTimer = irandom(cooldownTime);
windupTime = 60;	//stand and freeze
recoverTime = 45;	//time before start chasing player
bulletInst = noone;
	
bulletXoff = 5;
bulletYoff = -20;