tick++;

//reset speed to normal at the start of each step
chaseSpd = baseSpd; 
freezeEnemy = false;

for (var i = array_length(debuffs) - 1; i >= 0; --i) {
   var _debuff = debuffs[i];
   var _tick_rate = round(_debuff[DebuffInfo.TICK_RATE]);
   
   //apply speed reduction if the debuff has SPEED_REDUCTION
   if(_debuff[DebuffInfo.SPEED_REDUCTION] != undefined) {
		chaseSpd = baseSpd * (1 - _debuff[DebuffInfo.SPEED_REDUCTION]);
		if (_debuff[DebuffInfo.SPEED_REDUCTION] == 1) {
			freezeEnemy = true;
			freezeEnemyID = instance_id_get(i);
		}
   }
   
   //apply damage if it's time to do so
   if (tick mod _tick_rate == 0) {
      var _dmg = _debuff[DebuffInfo.DMG]; 
      hp -= _dmg; 
	  //create DOT text
	  with instance_create_layer(x, y, "Instances", objDOTDamageText) {
		damageText = _dmg;
		size = 2;
		speedR = _debuff[DebuffInfo.SPEED_REDUCTION];
		tickR = _debuff[DebuffInfo.TICK_RATE];
		damageColour = _debuff[DebuffInfo.DAMAGE_COLOUR];
		damageLast = _debuff[DebuffInfo.DURATION];
		
		show_debug_message("DOT: " + string(damageText));
		show_debug_message("speedR: " + string(speedR));
		show_debug_message("tickR: " + string(tickR));
		show_debug_message("damageColour: " + string(damageColour));
		show_debug_message("damageLast: " + string(damageLast));
		show_debug_message("--------------------------------------");
	  }
	  image_blend = _debuff[DebuffInfo.DAMAGE_COLOUR];
   }

   //decrease debuff duration 
   _debuff[DebuffInfo.DURATION]--;
   
   //remove debuff when it expires
   if (_debuff[DebuffInfo.DURATION] <= 0) {
      array_delete(debuffs, i, 1);
	  if (_debuff[DebuffInfo.SPEED_REDUCTION] == 1) {
			freezeEnemy = true;
			freezeEnemyID = instance_id_get(i);
		}
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
//turn off red damage flash
if(image_blend == c_purple) {
	image_alpha -= 0.025
	if(image_alpha <= 0.70) {
		image_blend = c_white;
		image_alpha = 1;
	}
}

if instance_exists(objPlayer) {
		dir = point_direction(x, y, objPlayer.x, objPlayer.y);
	}
	
//chase the player
	//getting the speed
	xspd = lengthdir_x(spd, dir);
	yspd = lengthdir_y(spd, dir);
	
	//get the correct face
	if dir > 90 && dir < 270 {face = -1;} else {face = 1;}

	//collisions
	if place_meeting(x + xspd, y, objSolidWall) || place_meeting(x + xspd, y, objEnemyParent){xspd = 0;}
	if place_meeting(x, y + yspd, objSolidWall) || place_meeting(x, y + yspd, objEnemyParent) {yspd = 0;}
	
	//moving
	x += xspd;
	y += yspd;
	
	//set the depth
	depth = -y;

//death
if hp <= 0 {
	//determine if we should drop an item
	audio_play_sound(sndEnemyDeath, 0, 0, 1.0, undefined, 1.0);
	
	var _chance = irandom(100);
	
	if global.stage != 8 && _chance < 100 {
		//create Gold
		instance_create_depth(x, y, depth, objGold);
	}
	
	//destroy self
	instance_destroy();
}