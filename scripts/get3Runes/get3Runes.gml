// Declare a function that retrieves all possible rune cards and creates rune card objects for 3 of them.
function get3Runes() 
{
	// Destroy any existing rune cards.
	with(objGetRunes)
	{
		// Destroy object.
		instance_destroy();
	}

	// Create a new list to hold possible rune cards.
	var _rune_list = ds_list_create();

	// Get upgrades for the fire rune and place them in the list.
	getFireRuneL1(_rune_list);

	// Get upgrades for the ice rune and place them in the list.
	getIceRuneL1(_rune_list);

	// Get upgrades for the wind rune and place them in the list.
	getWindRuneL1(_rune_list);

	// Shuffle the list containing all the retrieved upgrades.
	listShuffle(_rune_list);

	// Get the size of the list, this is how many upgrades are in it.
	var _size = ds_list_size(_rune_list);

	// Define the x position where the first rune card will be created.
	var _x = -400;

	// For each upgrade in the list, up to a max of 3...
	for (var _index = 0; _index < min(_size, 3); _index += 1)
	{
		// Get the upgrade at the current index.
		_upgrade_data = ds_list_find_value(_rune_list, _index);
	
		// Create a new upgrade card object.
		var _upgrade = instance_create_layer(1920 / 2 + _x, 1080/2, "UpgradeScreen", objGetRunes);
		
		// Set the reveal covering life.
		_upgrade.roll_life = 0.5 + 0.25 * _index;
	
		// Set the upgrade data to the rune card object.
		_upgrade.upgrade_data = _upgrade_data;
	
		// Increment the x position for the next card.
		_x += 400;
	}
	
	ds_list_destroy(_rune_list);
}
