// Declare a function that retrieves all possible rune cards and creates rune card objects for 3 of them.
function getEnergyDrink(_rune_list)
{
	// Create map to store the rune.
	var _map = ds_map_create();
	
	// Add fire rune L1 details to map.
	ds_map_replace(_map, "icon", sprEnergyDrink);
	
	// Add fire rune L1 to rune list.
	ds_list_add(_rune_list, _map);
}

function getFishTreat(_rune_list)
{
	// Create map to store the rune.
	var _map = ds_map_create();
	
	// Add fire rune L1 details to map.
	ds_map_replace(_map, "icon", sprFishTreat);
	
	// Add fire rune L1 to rune list.
	ds_list_add(_rune_list, _map);
}

function getLuckyBell(_rune_list)
{
	// Create map to store the rune.
	var _map = ds_map_create();
	
	// Add fire rune L1 details to map.
	ds_map_replace(_map, "icon", sprLuckyBell);
	
	// Add fire rune L1 to rune list.
	ds_list_add(_rune_list, _map);
}




function getShopItems() 
{
	// Destroy any existing rune cards.
	with(objGetItems)
	{
		// Destroy object.
		instance_destroy();
	}

	// Create a new list to hold possible rune cards.
	var _item_list = ds_list_create();

	// Get upgrades for the fire rune and place them in the list.
	getEnergyDrink(_item_list);

	// Get upgrades for the ice rune and place them in the list.
	getFishTreat(_item_list);

	// Get upgrades for the wind rune and place them in the list.
	getLuckyBell(_item_list);

	// Shuffle the list containing all the retrieved upgrades.
	//listShuffle(_item_list);

	// Get the size of the list, this is how many upgrades are in it.
	var _size = ds_list_size(_item_list);

	// Define the x position where the first rune card will be created.
	var _x = -400;

	// For each upgrade in the list, up to a max of 3...
	for (var _index = 0; _index < min(_size, 3); _index += 1)
	{
		// Get the upgrade at the current index.
		_upgrade_data = ds_list_find_value(_item_list, _index);
	
		// Create a new upgrade card object.
		var _upgrade = instance_create_layer(1920 / 2 + _x, 1080/2, "UpgradeScreen", objGetItems);
		
		// Set the reveal covering life.
		_upgrade.roll_life = 0.5 + 0.25 * _index;
	
		// Set the upgrade data to the rune card object.
		_upgrade.upgrade_data = _upgrade_data;
	
		// Increment the x position for the next card.
		_x += 400;
	}
}