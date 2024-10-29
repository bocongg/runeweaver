event_inherited(); // --> damage = 1; hitconfirm = false;

get_damaged_create();

spd = 0;
chaseSpd = 1;
dir = 0;
xspd = 0;
yspd = 0; 
face = 1;

enum DebuffInfo {
   DMG,
   TICK_RATE,
   DURATION,
   SPEED_REDUCTION,
   DAMAGE_COLOUR
}
debuffs = [];
tick = 0;
baseSpd = 1; 
chaseSpd = baseSpd;


freezeEnemy = false; //new
freezeEnemyID = noone;