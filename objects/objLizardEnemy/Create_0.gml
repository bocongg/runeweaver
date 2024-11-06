event_inherited();
bulletType = objEnemyBulle1Big;
cooldownTime = 2 * 60;
windupTime = 40;
recoverTime = 25;
baseSpd = 3;
chaseSpd = baseSpd;

get_damaged_create(40);

//create path to follow player
path = path_add();