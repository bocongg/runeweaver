//state machine
switch(state) {

	case 0: //chase state
		//get player's direction
		if instance_exists(objPlayer) {
			dir = point_direction(x, y, objPlayer.x, objPlayer.y);
		}
		//set the correct speed
		spd = chaseSpd;
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


// Inherit the parent event
	//getting damage and dying
	event_inherited();



