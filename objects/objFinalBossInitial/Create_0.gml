event_inherited();
damage = 20;

get_damaged_create(50);

baseSpd = 0.5;

//shooting state
cooldownTime = 4*60; //4 seconds 
shootTimer = irandom(cooldownTime);
windupTime = 60;	//stand and freeze
recoverTime = 45;	//time before start chasing player
bulletInst = noone;

//create path to follow player
path = path_add();

bulletType = objFinalBossBulletInitial;