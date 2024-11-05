//rotate
image_angle = dir;

if (beamLast > 0) {
    objPlayer.canMove = false;
} else {
    objPlayer.canMove = true;
}


//cleanup	
	//hit confirm destroy
	if hitconfirm == true && enemyDestroy == true {destroy = true;};
	
	//destroy
	beamLast--;
	if beamLast == 0 {instance_destroy();}