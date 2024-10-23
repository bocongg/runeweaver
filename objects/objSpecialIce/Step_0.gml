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
	if place_meeting(x, y, objEnemyParent) || place_meeting(x, y, objSolidWall) {
		var _areaFreezeInst = instance_create_depth(x+8, y+8, -3000, objAreaFreeze);
		with(_areaFreezeInst) {
			image_xscale = 5; //how large the xscale
			image_yscale = 5; //how large the yscale
		}
		destroy = true;
	}
	
	//bullet out of range
	if point_distance(xstart,ystart,x,y) > maxDist 
	{
		destroy = true;
	}