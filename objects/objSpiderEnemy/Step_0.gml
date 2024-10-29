tick++;

//reset speed to normal at the start of each step
chaseSpd = baseSpd; 
freezeEnemy = false;

for (var i = array_length(debuffs) - 1; i >= 0; --i) {
   var _debuff = debuffs[i];
   var _tick_rate = round(_debuff[DebuffInfo.TICK_RATE]);
   show_debug_message("Instance ID in objEnemyParent: " + string(instance_id_get(i)));
   //apply speed reduction if the debuff has SPEED_REDUCTION
   if(_debuff[DebuffInfo.SPEED_REDUCTION] != undefined) {
		chaseSpd = baseSpd * (1 - _debuff[DebuffInfo.SPEED_REDUCTION]);
		freezeEnemy = true;
		freezeEnemyID = instance_id_get(i);
		 show_debug_message("freezeEnemy: " + string(freezeEnemy) + " ; freezeEnemyID: " + string(freezeEnemyID));
   }
   
   //apply damage if it's time to do so
   if (tick mod _tick_rate == 0) {
      var _dmg = _debuff[DebuffInfo.DMG];
      hp -= _dmg; // Or however you apply damage in your game
	  image_blend = _debuff[DebuffInfo.DAMAGE_COLOUR];
   }

   //decrease debuff duration 
   _debuff[DebuffInfo.DURATION]--;
   
   //remove debuff when it expires
   if (_debuff[DebuffInfo.DURATION] <= 0) {
      array_delete(debuffs, i, 1);
	  if (image_blend == c_aqua) {
		image_blend = c_white;
		image_alpha = 1;
	  }
   }
}

get_damaged(objDamageEnemy);

//turn off red damage flash
if(image_blend == c_red) {
	image_alpha -= 0.025
	if(image_alpha <= 0.70) {
		image_blend = c_white;
		image_alpha = 1;
	}
}

if instance_exists(objPlayer) {
		dir = point_direction(x, y, objPlayer.x, objPlayer.y);
	}
	//set the correct speed
	spd = chaseSpd;	

//chase the player
	//getting the speed
	xspd = lengthdir_x(spd, dir);
	yspd = lengthdir_y(spd, dir);
	
	//get the correct face
	if dir > 90 && dir < 270 {face = -1;} else {face = 1;}

	//collisions
	if place_meeting(x + xspd, y, objWall) || place_meeting(x + xspd, y, objEnemyParent){xspd = 0;}
	if place_meeting(x, y + yspd, objWall) || place_meeting(x, y + yspd, objEnemyParent) {yspd = 0;}
	
	//moving
	x += xspd;
	y += yspd;
	
	//set the depth
	depth = -y;

//death
if hp <= 0 {
	for (var i = 0; i < irandom_range(3,4); i++){
		randomise();
		instance_create_layer(x + lengthdir_x(200, irandom(360)), y + lengthdir_y(200, irandom(360)), "Instances", objSpiderEnemyBaby);
	}
	instance_destroy();
}

/*//knockback
sprite_index = sprKBBasicEnemyPhantom;
image_speed = 0.5;
image_index = 0;
knowbackSpeed = lerp(knowbackSpeed, 0, 0.10);
if knowbackSpeed < 1 
{
	knowbackSpeed = 0;
}*/
// Inherit the parent event
	//getting damage and dying
	//event_inherited();



