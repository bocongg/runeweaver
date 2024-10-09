// Create a map assigned to global.wind
global.wind = ds_map_create();

// Call the function to reset the wind rune. First time, this essentially setps it up.
windRuneReset();

// Define the reset function for the wind rune.
function windRuneReset() //weapon_trail_reset
{
	// Unlock wind rune.
	ds_map_replace(global.wind, "damage", 1);
	ds_map_replace(global.wind, "attack_speed", 90);
	ds_map_replace(global.wind, "unlocked", false);
}

// Define function to retrieve upgrades for the wind rune.
function getWindRune(_upgrade_list) //weapon_trail_upgrades
{
	// Get whether the wind rune is unlocked.
	var _unlocked = ds_map_find_value(global.wind, "unlocked");

	// If it is NOT unlocked...
	if (!_unlocked)
	{
		// Create map to store upgrade.
		var _map = ds_map_create();
	
		// Upgrade to unlock the wind rune.
		ds_map_replace(_map, "description", "Sharp winds");
		ds_map_replace(_map, "object", global.wind);
		ds_map_replace(_map, "key", "unlocked");
		ds_map_replace(_map, "amount", 1);
		ds_map_replace(_map, "icon", sprRuneWind);
		ds_map_replace(_map, "rune_name", "Air Cutter");
	
		// Add upgrade to the list.
		ds_list_add(_upgrade_list, _map);
		
		// Exits the event.
		exit;
	}

	// Get the current trail weapon attack speed.
	var _attack_speed = ds_map_find_value(global.wind, "attack_speed");

	// If attack speed is over 30...
	// Note this is a cooldown, so higher is slower.
	if (_attack_speed > 30)
	{
		// Create map to store upgrade.
		var _map = ds_map_create();
	
		// Upgrade to increase attack speed.
		ds_map_replace(_map, "description", "Increase Attack Speed");
		ds_map_replace(_map, "title", "SPEED");
		ds_map_replace(_map, "object", global.wind);
		ds_map_replace(_map, "key", "attack_speed");
		ds_map_replace(_map, "amount", -15);
		ds_map_replace(_map, "icon", sprRuneWind);
		ds_map_replace(_map, "rune_name", "Galeforce");
	
		// Add upgrade to the list.
		ds_list_add(_upgrade_list, _map);
	}

	// Get current trail weapon damage.
//	var _damage = ds_map_find_value(global.wind, "damage");

	// If damage is under 5...
//	if (_damage < 5)
//	{
//		// Create map to store upgrade.
//		var _map = ds_map_create();
//	
//		// Upgrade from increasing trail weapon damage.
//		ds_map_replace(_map, "description", "Increase Damage");
//		ds_map_replace(_map, "title", "DAMAGE");
//		ds_map_replace(_map, "object", global.wind);
//		ds_map_replace(_map, "key", "damage");
//		ds_map_replace(_map, "amount", 1);
//		ds_map_replace(_map, "icon", spr_trail_attack_big);
//		ds_map_replace(_map, "rune_name", "TRAIL");
//	
//		// Add upgrade to the list.
//		ds_list_add(_upgrade_list, _map);
//	}
}
