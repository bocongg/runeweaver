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
	if place_meeting(x, y, objSolidWall) {
		destroy = true;
	}
	if place_meeting(x, y, objEnemyParent) {
		with(objEnemyParent) image_blend = c_red;
		instance_create_layer(x, y, "Instances", objDamageOverTime);
		global.hello = "test1";
		show_debug_message("global.hello = test1");
	}
	
	//bullet out of range
	if point_distance(xstart, ystart, x, y) > maxDist {
		destroy = true;
	}
	