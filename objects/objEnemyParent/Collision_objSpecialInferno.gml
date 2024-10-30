zNear = instance_nearest(x,y,objSpecialInferno);	

//Enemy Collision & Knock-Back
if place_meeting(x + xspd, y, objWall) {xspd = 0;}
else {
	if(zNear.x > self.x) {
		x -= 30;   
	} else {
		x += 30;
	}
}	

if place_meeting(x, y + yspd, objWall) {yspd = 0;}
else {
	if(zNear.y > self.y){
		y -= 30;
	}
    else {
		y += 30;   
    }
}