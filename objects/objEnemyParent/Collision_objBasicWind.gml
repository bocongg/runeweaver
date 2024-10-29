zNear = instance_nearest(x,y,objBasicWind);	


//Enemy Collision & Knock-Back
if place_meeting(x + xspd, y, objWall) {xspd = 0;}
else {
	if(zNear.x > self.x) {
		x -= 16;   
	} else {
		x += 16;
	}
}	

if place_meeting(x, y + yspd, objWall) {yspd = 0;}
else {
	if(zNear.y > self.y){
		y -= 16;
	}
    else {
		y += 16;   
    }
}