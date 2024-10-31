//rotate
image_angle = dir;

//cleanup	
	//hit confirm destroy
	if hitconfirm == true && enemyDestroy == true {destroy = true;};
	
	//destroy
	beamLast--;
	if beamLast == 0 {instance_destroy();}
