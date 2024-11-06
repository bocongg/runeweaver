event_inherited();
damage = 20;

get_damaged_create(100);

baseSpd = 0.5; 


//shooting state
cooldownTime = 2*60; //4 seconds 
shootTimer = irandom(cooldownTime);
windupTime = 30;	//stand and freeze
recoverTime = 25;	//time before start chasing player
bulletInst = noone;
	
bulletXoff = 5;
bulletYoff = -20;

//create path to follow player
path = path_add();

bulletType = objFinalBossBulletEnraged3Homing;