//rotate 
image_angle = dir;

//move
	xspd = lengthdir_x(spd, dir);
	yspd = lengthdir_y(spd, dir);
	
	x += xspd;
	y += yspd;
	
//cleanup	

	//player destroy
	if place_meeting(x, y, objPlayer) == true && playerDestroy == true {destroy = true;};
	
	//actually destroy self
	if destroy == true {instance_destroy();}
	
	//collision
	if place_meeting(x, y, objSolidWall) {destroy = true;}
	
	//out of room bounds
	var _pad = 16;
	if bbox_right < - _pad || bbox_left > room_width + _pad || bbox_bottom < - _pad || bbox_top > room_height + _pad
	{
		destroy = true;
	}