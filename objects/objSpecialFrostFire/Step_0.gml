//rotate 
image_angle = dir;

//move
	xspd = lengthdir_x(spd, dir);
	yspd = lengthdir_y(spd, dir);
	
	x += xspd;
	y += yspd;
	
//cleanup	
	//hit confirm destroy
	if hitconfirm == true && enemyDestroy == true {destroy = true;};
	
	//destroy
	if destroy == true {instance_destroy();}
	
	//colliion on enemyParent and Wall
	if (place_meeting(x, y, objSolidWall) && !place_meeting(x, y, objPlayer)) {
		destroy = true;
	}
	
	//bullet out of range
	if point_distance(xstart, ystart, x, y) > maxDist {
		destroy = true;
	}