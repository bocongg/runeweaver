get_damaged(objDamageEnemy);


//turn off red damage flash
if(image_blend == c_red) {
	image_alpha -= 0.025
	if(image_alpha <= 0.70) {
		image_blend = c_white;
		image_alpha = 1;
	}
}


//death
if hp <= 0 {
	//determine if we should drop an item
	var _chance = irandom(100);
	
	if _chance < 100 {
		//create Gold
		instance_create_depth(x, y, depth, objGold);
	}
	
	//destroy self
	instance_destroy();
}


	