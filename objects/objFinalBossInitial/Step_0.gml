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


//switch(enraged){
//	case 1: //enraged
//		spd = 0;
//		chaseSpd = 3;
//		dir = 0;
//		xspd = 0;
//		yspd = 0; 

//		face = 1;

//		//shooting state
//		cooldownTime = 4*60; //4 seconds 
//		shootTimer = irandom(cooldownTime);
//		windupTime = 60;	//stand and freeze
//		recoverTime = 45;	//time before start chasing player
//		bulletInst = noone;





//}


//state machine
switch(state) {

	case 0: //chase state
		//get player's direction
		if instance_exists(objPlayer) {
			dir = point_direction(x, y, objPlayer.x, objPlayer.y);
		}
		//set the correct speed
		spd = chaseSpd;
		
		//transition to shooting state
		shootTimer++;
		
		if shootTimer > cooldownTime {
			
			//go to shoot state
			state = 1;
			
			//reset timer so the shooting
			shootTimer = 0;
		}
		break;
		
	case 1: //pause and shoot state
		
		//get player's direction
		if instance_exists(objPlayer) {
			dir = point_direction(x, y, objPlayer.x, objPlayer.y);
		}
		
		//set the correct speed
		spd = 0;
		
		//stop animating or manually set the image index
		//image_index = 0;
		
		//shoot a bullet
		shootTimer++;
		
			//create the bullet
			if shootTimer == 1 {
				bulletInst = instance_create_depth(x + bulletXoff*face, y + bulletYoff, depth, objFinalBossBullet);
			} 
			//keep the bullet in the enemy's hands
			if shootTimer <= windupTime && instance_exists(bulletInst) {
				bulletInst.x = x + bulletXoff * face;
				bulletInst.y = y + bulletYoff;
			}
			
			//shoot the bullet after the windup time is over
			if shootTimer == windupTime && instance_exists(bulletInst) {
				
				//set our bullet's state to the movement state
				//bulletInst.state = 1;
				show_debug_message("before freezeEnemy");
				if freezeEnemy == true {
					//bulletInst.state = 0;
					show_debug_message("in the destroy");
					bulletInst.destroy = true;
				} 
				else {
					show_debug_message("else");
					bulletInst.state = 1;
				}
				show_debug_message("after freezeEnemy");
			}
			
			//recover and return to chasing the player
			if shootTimer > windupTime + recoverTime {
				
				//go back to chasing the player
				state = 0;
				
				//reset the timer so we can use it again
				shootTimer = 0;
			}
	break;
}


//chase the player
	//getting the speed
	xspd = lengthdir_x(spd, dir);
	yspd = lengthdir_y(spd, dir);
	
	//get the correct face
	if dir > 90 && dir < 270 {
		face = -1;
	} else {
		face = 1;	
	}

	//collisions
	if place_meeting(x + xspd, y, objWall) || place_meeting(x + xspd, y, objEnemyParent) {
		xspd = 0;
	}
	if place_meeting(x, y + yspd, objWall) || place_meeting(x, y + yspd, objEnemyParent) {
		yspd = 0;
	}
	
	//moving
	x += xspd;
	y += yspd;
	
	//set the depth
	depth = -y;


//death
if hp <= 0 {
	if (!enraged){
		enraged += 1;
		hp = maxHp*5;
		
		spd = 0;
		chaseSpd = 3;
		dir = 0;
		xspd = 0;
		yspd = 0; 

		face = 1;

		//shooting state
		cooldownTime = 4*60; //4 seconds 
		shootTimer = irandom(cooldownTime);
		windupTime = 60;	//stand and freeze
		recoverTime = 45;	//time before start chasing player
		bulletInst = noone;
		

	} else {
		//destroy self
		instance_destroy();
	}
}

// Inherit the parent event
	//getting damage and dying
	//event_inherited();



