//rotate
image_angle = dir;
		
		
if instance_exists(objPlayer) {
    // Calculate the new direction towards the player
    var targetDir = point_direction(x, y, objPlayer.x, objPlayer.y);
    
    // Smoothly adjust the current direction towards the target direction
    // Adjust the "homingSpeed" value to control how fast the bullet turns (e.g., 5 for faster turning)
    dir = lerp(dir, targetDir, 0.05); // 0.05 is a smoothing factor; increase for faster tracking
}
		
//movement
xspd = lengthdir_x(spd, dir);
yspd = lengthdir_y(spd, dir);
x += xspd;
y += yspd;
		
//update depth
depth = -y;
	
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