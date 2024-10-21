//// Create map to store the fire rune data.
//global.fire = ds_map_create();

//// Call the function to reset the fire rune. First time, this essentially sets it up.
//fireRuneReset();

//// Define the function to reset the fire rune state.
//function fireRuneReset()  //weapon_shooting_reset
//{
//	// fire rune bases stats. fire rune starts unlocked as it's the first rune.
//	ds_map_replace(global.fire, "damage", 0.75);
//	ds_map_replace(global.fire, "attack_speed", 30);
//	ds_map_replace(global.fire, "number_of_shots", 1);
//	ds_map_replace(global.fire, "unlocked", false);
//}

//// Define function to retrieve list of available fire rune upgrades.
//function getFireRune(_upgrade_list) 
//{
//	// Get whether the fire rune is unlocked.
//	var _unlocked = ds_map_find_value(global.fire, "unlocked");

//	// If the fire rune is NOT unlocked...
//	if (!_unlocked)
//	{
//		// Create map to store the upgrade.
//		var _map = ds_map_create();
	
//		// Upgrade to unlock fire rune.
//		ds_map_replace(_map, "object", global.fire);
//		ds_map_replace(_map, "key", "unlocked");
//		ds_map_replace(_map, "amount", 1);
//		ds_map_replace(_map, "icon", sprRuneFire1);
	
//		// Add upgrade to list.
//		ds_list_add(_upgrade_list, _map);
	
//		// Exits the event.
//		exit;
//	}

//	// Get current shooting weapon attack speed.
//	var _attack_speed = ds_map_find_value(global.fire, "attack_speed");

//	// If attack speed is over 5...
//	if (_attack_speed > 5)
//	{
//		// Create map to strore the upgrade.
//		var _map = ds_map_create();
	
//		// Upgrade to increase attack speed of shooting weapon.
//		ds_map_replace(_map, "object", global.fire);
//		ds_map_replace(_map, "key", "attack_speed");
//		ds_map_replace(_map, "amount", -5);
//		ds_map_replace(_map, "icon", sprRuneFire2);
	
//		// Add upgrade to list.
//		ds_list_add(_upgrade_list, _map);
//	}

//	// Get the current number of shots...
////	var _number_of_shots = ds_map_find_value(global.fire, "number_of_shots");
////
////	// If the number of shots is under 7...
////	if (_number_of_shots < 7)
////	{
////		// Create map to strore the upgrade.
////		var _map = ds_map_create();
////	
////		// Upgrade to increase the number of shots
////		// from the shooting weapon.
////		ds_map_replace(_map, "description", "Number of shots +2");
////		ds_map_replace(_map, "title", "BARRAGE");
////		ds_map_replace(_map, "object", global.fire);
////		ds_map_replace(_map, "key", "number_of_shots");
////		ds_map_replace(_map, "amount", 2);
////		ds_map_replace(_map, "icon", spr_shooting_attack_big);
////		ds_map_replace(_map, "rune_name", "PROJECTILE");
////	
////		// Add upgrade to list.
////		ds_list_add(_upgrade_list, _map);
////	}

//	// Get current shooting weapon damage.
////	var _damage = ds_map_find_value(global.fire, "damage");
////
////	// If damage is under 4...
////	if (_damage < 4)
////	{
////		// Create map to strore the upgrade.
////		var _map = ds_map_create();
////	
////		// Upgrade to increase damage.
////		ds_map_replace(_map, "description", "Increase Damage");
////		ds_map_replace(_map, "title", "DAMAGE");
////		ds_map_replace(_map, "object", global.fire);
////		ds_map_replace(_map, "key", "damage");
////		ds_map_replace(_map, "amount", 0.4);
////		ds_map_replace(_map, "icon", spr_shooting_attack_big);
////		ds_map_replace(_map, "rune_name", "PROJECTILE");
////	
////		// Add upgrade to list.
////		ds_list_add(_upgrade_list, _map);
////	}
//}
