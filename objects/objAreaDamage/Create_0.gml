event_inherited();

//vars for creating damage objects
createdDamageObjects = false;
enemyDamageInst = noone;

////damage over time
//damage = 0.5;
//damageInterval = 1; //DO NOT SET TO ZERO //apply the damage every half a second
//damageLast = 5; //damage effect will last for 5 seconds 

//damage = other.damage;
//dir = 5;
//spd = 5;
//xspd = 0; 
//yspd = 0;

//// cleanup
//maxDist = 500;
//destroy = false;
//enemyDestroy = false;

//damage over time
dotDmg = other.dotDmg;
damageInterval = other.dmgInterval; 
damageLast = other.dmgLast; 
spdReduct = other.spdReduct;
