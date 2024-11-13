event_inherited();
damage = 20;

get_damaged_create(50);

baseSpd = 0.5;

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


bulletTypes = [objFinalBossBulletInitial, objFinalBossBulletInitial3Fan]; 
bulletIndex = 0; // Start with the first bullet type

bulletCount = 1;
spread = 0;
angleStep = 1;