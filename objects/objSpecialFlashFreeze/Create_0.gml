event_inherited();

//vars for creating damage objects
createdDamageObjects = false;
enemyDamageInst = noone; 

dotDmg = other.dotDmg;
dmgInterval = other.dmgInterval; 
dmgLast = other.dmgLast; 
spdReduct = other.spdReduct;

//beamLast
beamLast = 60; //1 sec is 60fps

// The duration you want for the animation cycle, in seconds
animation_duration = 0.3; // 1 second

// Calculate the total number of steps for the duration
animation_steps = animation_duration * room_speed;

// Initialize a counter to track the animation progress
animation_counter = 0;

