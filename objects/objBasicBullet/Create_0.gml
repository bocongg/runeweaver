event_inherited(); // --> damage = 1; hitconfirm = false;

damage = other.damage;
dir = 5;
spd = 10;
xspd = 0; 
yspd = 0;

// cleanup
maxDist = 700;
destroy = false;
enemyDestroy = false;

//damage over time
dotDmg = other.dotDmg;
damageInterval = other.dmgInterval; 
damageLast = other.dmgLast; 
spdReduct = other.spdReduct;
