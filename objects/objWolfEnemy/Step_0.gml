//state machine
switch(state) {
	case 0: //chase state
	#region
		
		//get player's direction
		if instance_exists(objPlayer) {
			dir = point_direction(x, y, objPlayer.x, objPlayer.y);
		}
		
		mask_index = sprEnemyWolfWalking;
		
		//set the correct speed
		spd = chaseSpd;
		
		if (distance_to_object(objPlayer) < 10) {
			
			//go to attack state
			state = 1;
		}
	#endregion		
	break;
	
	case 1: //pause and attack state
	#region
		
		//get player's direction
		if instance_exists(objPlayer) {
			dir = point_direction(x, y, objPlayer.x, objPlayer.y);
		}
		
		//set the correct speed
		spd = 0;
		
		if dir > 90 && dir < 270 
		{mask_index = sprEnemyWolfAttackHitboxLeft;} 
		else {mask_index = sprEnemyWolfAttackHitboxRight;}
		
		if (distance_to_object(objPlayer) > 10) {
			
			//go to chase state
			state = 0;
		}
	#endregion
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
	else {face = 1;	}

	//collisions
	if place_meeting(x + xspd, y, objSolidWall) || 
	place_meeting(x + xspd, y, objEnemyParent)
	{xspd = 0;}
	
	if place_meeting(x, y + yspd, objSolidWall) || 
	place_meeting(x, y + yspd, objEnemyParent)
	{yspd = 0;}

// Inherit the parent event
	//getting damage and dying
	event_inherited();