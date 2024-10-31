//state machine
switch(state) {
	//wait for the enemy  to  shoot state
	case 0:
	
		//wait for enemy to shoot state
		if instance_exists(objPlayer) {
			dir = point_direction(x, y, objPlayer.x, objPlayer.y);
		}
		
		image_angle = point_direction(x, y, objPlayer.x, objPlayer.y);
		
		//set depth to make myself more visible
		depth = -y - 50;
	
	break;
	
	//shoot or travel
	case 1:
		if instance_exists(objPlayer) {
			dir = point_direction(x, y, objPlayer.x, objPlayer.y);
		}
		//movement
		xspd = lengthdir_x(spd, dir);
		yspd = lengthdir_y(spd, dir);
		x += xspd;
		y += yspd;
		
		//update depth
		depth = -y;
	
	break;
}
	
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