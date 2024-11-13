// Declare a function that retrieves all possible shop items and creates shop item objects for 3 of them.
function getEnergyDrink(_item_list)
{
	// Create map to store the item.
	var _map = ds_map_create();
	
	// Add Energy Drink details to map.
	ds_map_replace(_map, "icon", sprEnergyDrink);
	ds_map_replace(_map, "stock", 1);
	ds_map_replace(_map, "cost", 60);
	
	// Add Energy Drink to item list.
	ds_list_add(_item_list, _map);
}

function getFishTreat(_item_list)
{
	// Create map to store the item.
	var _map = ds_map_create();
	
	// Add Fish Treat details to map.
	ds_map_replace(_map, "icon", sprFishTreat);
	ds_map_replace(_map, "stock", 1);
	ds_map_replace(_map, "cost", 60);
	
	// Add Fish Treat to item list.
	ds_list_add(_item_list, _map);
}

function getLuckyBell(_item_list)
{
	// Create map to store the item.
	var _map = ds_map_create();
	
	// Add Lucky Bell details to map.
	ds_map_replace(_map, "icon", sprLuckyBell);
	if (global.stage != 8) {
		ds_map_replace(_map, "stock", 1);
	} else {
		ds_map_replace(_map, "stock", 0);
	}
	ds_map_replace(_map, "cost", 20);
	
	// Add Lucky Bell to item list.
	ds_list_add(_item_list, _map);
}


function getShopItems() 
{	
	switch(global.vendingTimes){
		case 0:
			// Destroy any existing item cards.
			with(objGetItems)
			{
				// Destroy object.
				instance_destroy();
			}

			// Create a new list to hold possible shop items.
			global.item_list = ds_list_create();

			// Get upgrades for the Energy Drink and place them in the list.
			getEnergyDrink(global.item_list);

			// Get upgrades for the Fish Treat and place them in the list.
			getFishTreat(global.item_list);

			// Get upgrades for the Lucky Bell and place them in the list.
			getLuckyBell(global.item_list);

			// Shuffle the list containing all the retrieved upgrades.
			//listShuffle(_item_list);

			// Get the size of the list, this is how many upgrades are in it.
			var _size = ds_list_size(global.item_list);

			// Define the x position where the first item card will be created.
			var _x = -400;

			// For each upgrade in the list, up to a max of 3...
			for (var _index = 0; _index < min(_size, 3); _index += 1)
			{
				// Get the upgrade at the current index.
				_upgrade_data = ds_list_find_value(global.item_list, _index);
	
				// Create a new upgrade card object.
				var _upgrade = instance_create_layer(1920 / 2 + _x, 1080/2, "UpgradeScreen", objGetItems);
		
				// Set the reveal covering life.
				_upgrade.roll_life = 0.5 + 0.25 * _index;
	
				// Set the upgrade data to the item card object.
				_upgrade.upgrade_data = _upgrade_data;
	
				// Increment the x position for the next card.
				_x += 400;
			}
			break;
		case 1:
			// Get the size of the list, this is how many upgrades are in it.
			var _size = ds_list_size(global.item_list);

			// Define the x position where the first item card will be created.
			var _x = -400;
			
			// For each upgrade in the list, up to a max of 3...
			for (var _index = 0; _index < min(_size, 3); _index += 1)
			{
				// Get the upgrade at the current index.
				_upgrade_data = ds_list_find_value(global.item_list, _index);
	
				// Create a new upgrade card object.
				var _upgrade = instance_create_layer(1920 / 2 + _x, 1080/2, "UpgradeScreen", objGetItems);
		
				// Set the reveal covering life.
				_upgrade.roll_life = 0.5 + 0.25 * _index;
	
				// Set the upgrade data to the item card object.
				_upgrade.upgrade_data = _upgrade_data;
	
				// Increment the x position for the next card.
				_x += 400;
			}
			break;
		case 2:
			// Get the size of the list, this is how many upgrades are in it.
			var _size = ds_list_size(global.item_list);

			// Define the x position where the first item card will be created.
			var _x = -400;
			
			// For each upgrade in the list, up to a max of 3...
			for (var _index = 0; _index < min(_size, 3); _index += 1)
			{
				// Get the upgrade at the current index.
				_upgrade_data = ds_list_find_value(global.item_list, _index);
	
				// Create a new upgrade card object.
				var _upgrade = instance_create_layer(1920 / 2 + _x, 1080/2, "UpgradeScreen", objGetItems);
		
				// Set the reveal covering life.
				_upgrade.roll_life = 0.5 + 0.25 * _index;
	
				// Set the upgrade data to the item card object.
				_upgrade.upgrade_data = _upgrade_data;
	
				// Increment the x position for the next card.
				_x += 400;
			}
			break;
		case 3:
			// Get the size of the list, this is how many upgrades are in it.
			var _size = ds_list_size(global.item_list);

			// Define the x position where the first item card will be created.
			var _x = -400;
			
			// For each upgrade in the list, up to a max of 3...
			for (var _index = 0; _index < min(_size, 3); _index += 1)
			{
				// Get the upgrade at the current index.
				_upgrade_data = ds_list_find_value(global.item_list, _index);
	
				// Create a new upgrade card object.
				var _upgrade = instance_create_layer(1920 / 2 + _x, 1080/2, "UpgradeScreen", objGetItems);
		
				// Set the reveal covering life.
				_upgrade.roll_life = 0.5 + 0.25 * _index;
	
				// Set the upgrade data to the item card object.
				_upgrade.upgrade_data = _upgrade_data;
	
				// Increment the x position for the next card.
				_x += 400;
			}
			ds_list_destroy(global.item_list);
			break;
	}	
}