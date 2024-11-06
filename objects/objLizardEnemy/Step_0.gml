//check if player exist, if so then pathfinding
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
		{face = -1;} else 
		{face = 1;}

	//collisions
	if place_meeting(x + xspd, y, objWall) || 
	place_meeting(x + xspd, y, objEnemyParent) {xspd = 0;}
	
	if place_meeting(x, y + yspd, objWall) ||
	place_meeting(x, y + yspd, objEnemyParent){yspd = 0;}

// Inherit the parent event
	//getting damage and dying
	event_inherited();