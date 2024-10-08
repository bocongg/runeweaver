//chase the player
	if instance_exists(objPlayer) 
	{
		dir = point_direction(x, y, objPlayer.x, objPlayer.y);
	}
	
	//getting the speed
	xspd = lengthdir_x(spd, dir);
	yspd = lengthdir_y(spd, dir);
	
	//get correct face
	if xspd > 0 {face = 1;};
	if xspd < 0 {face = -1;};

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


// Inherit the parent event
	//getting damage and dying
	event_inherited();



