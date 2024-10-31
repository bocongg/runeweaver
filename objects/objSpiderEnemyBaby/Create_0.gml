damage = 10;
hitconfirm = false;

get_damaged_create(5);

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

//create path to follow player
path = path_add();