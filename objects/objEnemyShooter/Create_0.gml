damage = 10;
hitconfirm = false;

get_damaged_create(10); //default HP

debuffs = [];
tick = 0;
baseSpd = 1;
chaseSpd = baseSpd;

freezeEnemy = false;
freezeEnemyID = noone;

spd = 0;
dir = 0;
xspd = 0;
yspd = 0;

face = 1;

state = 0;

cooldownTime = 4 * 60; // Default cooldown
shootTimer = irandom(cooldownTime);
windupTime = 60;
recoverTime = 45;
bulletInst = noone;

bulletXoff = 5;
bulletYoff = -20;

path = path_add();

// Default bullet type (can be overridden by children)
bulletType = objEnemyBullet1Big;
