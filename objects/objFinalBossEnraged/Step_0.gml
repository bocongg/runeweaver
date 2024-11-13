switch (state) {
    case 0: // Chase state
        #region
        if instance_exists(objPlayer) {
            dir = point_direction(x, y, objPlayer.x, objPlayer.y);
        }

        spd = chaseSpd;

        shootTimer++;
        if (shootTimer > cooldownTime) {
            state = 1;
            shootTimer = 0;
        }
        break;
        #endregion

    case 1: // Pause and shoot state
        if instance_exists(objPlayer) {
            dir = point_direction(x, y, objPlayer.x, objPlayer.y);
        }

        chaseSpd = 0;

        shootTimer++;

        if (shootTimer == 1) {
			switch (bulletIndex){
				case 0:
					bulletCount = 1; //number of bullets in a blast
					spread = 0; //spread angle (in degrees)
				break;
				case 1:
					bulletCount = 5; //number of bullets in a blast
					spread = 30; //spread angle (in degrees)
				break;
				case 2:
					bulletCount = 5; //number of bullets in a blast
					spread = 30; //spread angle (in degrees)
				break;
			}
		    
		    // Direction towards the player
		    if instance_exists(objPlayer) {
				var baseDir = point_direction(x, y, objPlayer.x, objPlayer.y);
			}
		    
			// Calculate the angle step between each bullet
		    var _spreadDiv = max(spread/1 - 1, 1);

		    // Loop to create multiple bullets
		    for (var i = 0; i < bulletCount; i++) {
		        // Calculate the angle for each bullet
		        var bulletAngle = baseDir - spread / 2 + i * _spreadDiv;
				// Alternate bullet types
		            bulletType = bulletTypes[bulletIndex];
					show_debug_message("Count: " + string(i));
		            bulletInst = instance_create_depth(x + bulletXoff * face, y + bulletYoff, depth, bulletType);
					
		        // Set the direction of the bullet
		        with (bulletInst) {
					dir = bulletAngle;
				}	
		    }
			// Switch to the next bullet type
			bulletIndex = (bulletIndex + 1) mod array_length(bulletTypes);
}
		
        if (shootTimer <= windupTime && instance_exists(bulletInst)) {
            bulletInst.x = x + bulletXoff * face;
            bulletInst.y = y + bulletYoff;
        }

        if (shootTimer == windupTime && instance_exists(bulletInst)) {
            audio_play_sound(sndEnemyAttack, 0, 0, 1.0, undefined, 1.0);
            if (freezeEnemy) {
                bulletInst.destroy = true;
            } else {
                bulletInst.state = 1;
            }
        }

        if (shootTimer > windupTime + recoverTime) {
            state = 0;
            shootTimer = 0;
        }
        break;
}

if instance_exists(objPlayer) {
	//create path and move to player
	var px = (objPlayer.x div 32) * 32 + 16;
	var py = (objPlayer.y div 32) * 32 + 16;	

	if(mp_grid_path(global.grid,path, x, y, px, py, 1)){
		path_start(path,chaseSpd, path_action_stop, false);  
	}
}

//chase the player
	//getting the speed
	xspd = lengthdir_x(spd, dir);
	yspd = lengthdir_y(spd, dir);
	
	//get the correct face
	if dir > 90 && dir < 270 
	{face = -1;} 
	else {face = 1;}

	//collisions
	if place_meeting(x + xspd, y, objSolidWall) || 
	place_meeting(x + xspd, y, objEnemyParent) 
	{xspd = 0;}
	
	if place_meeting(x, y + yspd, objSolidWall) || 
	place_meeting(x, y + yspd, objEnemyParent) 
	{yspd = 0;}

event_inherited();

//death
if hp <= 0 {
	//destroy self
	instance_destroy();
	
	if !instance_exists(objTransition) {
		var _inst = instance_create_layer(x, y, "Instances", objTransition);
		_inst.targetRoom = rmWinScreen;
	}
}
