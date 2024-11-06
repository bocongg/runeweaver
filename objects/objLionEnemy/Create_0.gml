event_inherited();
bulletType = objEnemyBullet3Fan;
cooldownTime = 6 * 60;
windupTime = 60;
recoverTime = 45;
chaseSpd = baseSpd; // Set specific speed if different from default

//damage = 10;
//hitconfirm = false;

get_damaged_create(30);

//debuffs = [];
//tick = 0;
//baseSpd = 1; 
//chaseSpd = baseSpd;

//freezeEnemy = false;
//freezeEnemyID = noone;

//spd = 0;
//dir = 0;
//xspd = 0;
//yspd = 0; 

//face = 1;

////state machine
//state = 0; 

////shooting state
//cooldownTime = 6*60; //4 seconds 
//shootTimer = irandom(cooldownTime);
//windupTime = 60;	//stand and freeze
//recoverTime = 45;	//time before start chasing player
//bulletInst = noone;
	
//bulletXoff = 5;
//bulletYoff = -20;

//create path to follow player
path = path_add();