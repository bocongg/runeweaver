event_inherited();
bulletType = objEnemyBullet1Fast;
cooldownTime = 5 * 60;
windupTime = 5 * 60;
recoverTime = 60;
chaseSpd = 0.2;

//damage = 10;

get_damaged_create(10);

//create path to follow player
path = path_add();