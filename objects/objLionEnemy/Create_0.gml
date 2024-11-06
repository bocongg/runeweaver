event_inherited();
bulletType = objEnemyBullet3Fan;
cooldownTime = 6 * 60;
windupTime = 60;
recoverTime = 45;
baseSpd = 3; 
chaseSpd = baseSpd; // Set specific speed if different from default

get_damaged_create(30);

//create path to follow player
path = path_add();