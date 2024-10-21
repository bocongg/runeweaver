//// Create map to store the ice rune data.
//global.ice = ds_map_create();

//// Call the function to reset the ice rune. First time, this essentially sets it up.
//iceRuneReset();

//// Define the function to reset the ice rune state.
//function iceRuneReset() //weapon_swipe_reset
//{
//	// Reset ice rune values.
//	ds_map_replace(global.ice, "damage", 1);
//	ds_map_replace(global.ice, "attack_speed", 60);
//	ds_map_replace(global.ice, "unlocked", false);
//}

//// Decalre a function to get the ice rune upgrades.
//function getIceRune(_upgrade_list) //weapon_swipe_upgrades
//{
//	// Get whether the ice rune weapon is unlocked.
//	var _unlocked = ds_map_find_value(global.ice, "unlocked");

//	// If it is NOT unlocked...
//	if (!_unlocked)
//	{
//		// Create a map to hold the upgrade.
//		var _map = ds_map_create();
	
//		// Unlock ice rune.
//		ds_map_replace(_map, "object", global.ice);
//		ds_map_replace(_map, "key", "unlocked");
//		ds_map_replace(_map, "amount", 1);
//		ds_map_replace(_map, "icon", sprRuneIce1);
	
//		// Add upgrade to the list.
//		ds_list_add(_upgrade_list, _map);
	
//		// Exit here, because there can't possibly be any other upgrades
//		// if the weapon is not unlocked.
//		exit;
//	}

//	// Get current attack speed of swipe weapon.
//	var _attack_speed = ds_map_find_value(global.ice, "attack_speed");

//	// If attack speed is over 10...
//	if (_attack_speed > 10)
//	{
//		// Create a map to hold the upgrade.
//		var _map = ds_map_create();
	
//		// Increase attack speed.
//		// Note that this would actually decreasing a cooldown.
//		ds_map_replace(_map, "object", global.ice);
//		ds_map_replace(_map, "key", "attack_speed");
//		ds_map_replace(_map, "amount", -10);
//		ds_map_replace(_map, "icon", sprRuneIce2);
	
//		// Add upgrade to the list.
//		ds_list_add(_upgrade_list, _map);
//	}

//	// Finds the damage value.
////	var _damage = ds_map_find_value(global.ice, "damage");
////
////	// Checks if the value is below 5.
////	if (_damage < 5)
////	{
////		// Create a map to hold the upgrade.
////		var _map = ds_map_create();
////	
////		// Increment damage by 1.
////		ds_map_replace(_map, "description", "Small but fast\narea of effect\nattack around\nthe player"");
////		ds_map_replace(_map, "title", "DAMAGE");
////		ds_map_replace(_map, "object", global.ice);
////		ds_map_replace(_map, "key", "damage");
////		ds_map_replace(_map, "amount", 1);
////		ds_map_replace(_map, "icon", spr_arcing_attack_big);
////		ds_map_replace(_map, "rune_name", "SWIPE");
////	
////		// Add upgrade to the list.
////		ds_list_add(_upgrade_list, _map);
////	}
//}
