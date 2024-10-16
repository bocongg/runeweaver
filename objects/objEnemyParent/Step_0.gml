get_damaged(objDamageEnemy);

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


	