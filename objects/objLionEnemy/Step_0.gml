//state machine
switch(state) {
	case 0: //chase state
	#region
		
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
	#endregion		
	break;
	
	case 1: //pause and shoot state
	#region
		
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
				bulletInst = instance_create_depth(x + bulletXoff*face, y + bulletYoff, depth, objEnemyBullet);
			} 
			//keep the bullet in the enemy's hands
			if shootTimer <= windupTime && instance_exists(bulletInst) {
				bulletInst.x = x + bulletXoff * face;
				bulletInst.y = y + bulletYoff;
			}
			
			//shoot the bullet after the windup time is over
			if shootTimer == windupTime && instance_exists(bulletInst) {
				audio_play_sound(sndEnemyAttack, 0, 0, 1.0, undefined, 1.0);
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
	#endregion
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
	if place_meeting(x + xspd, y, objWall) || place_meeting(x + xspd, y, objEnemyParent)
	{
		xspd = 0;
	}
	if place_meeting(x, y + yspd, objWall) || place_meeting(x, y + yspd, objEnemyParent)
	{
		yspd = 0;
	}
	
	//moving
	x += xspd;
	y += yspd;
	
	//set the depth
	depth = -y;

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
	event_inherited();



