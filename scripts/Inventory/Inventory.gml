/// @description Add an item to a DS Grid
/// @param Grid The DS Grid
/// @param Attributes An array of the Item enum attributes
function AddItem(grid, attributes) {
	//Check - is this item in the master list?
	var isInMasterList = false;
	for(var i = 0; i < ds_grid_width(global.AllRunes); ++i) {
		if (global.AllRunes[# i, Item.Name] == attributes[Item.Name]) {
			isInMasterList = true;
		}
	}
	if (isInMasterList == false) {
		show_message("Cannot find this item");
		return;
	}
	
	//Check - Is it already in the grid
	for(var i = 0; i < ds_grid_width(grid); ++i) {
		if (attributes[Item.Name] == grid[# i, Item.Name]) {
			//It's in here, so add amount to item in grid
			grid[# i, Item.Amount] += attributes[Item.Amount];
			return;
		}
	}
	
	//Check - Not in the grid, so add it
	ds_grid_resize(grid, ds_grid_width(grid) + 1, ds_grid_height(grid));
	for(var i = 0; i < array_length(attributes); ++i) {
		grid[# ds_grid_width(grid) - 1, i] = attributes[i];
	}
	
}

/// @description Add an item to master list
/// @param Attributes The array of attributes to add
function AddItemToMasterList(attributes){
	
	//Does the global variable exist?
	if (variable_global_exists("AllRunes") == false) {
		show_message("No variable found called allrunes.");
		return;
	}
	//Is the global variable a ds grid?
	if (ds_exists(global.AllRunes, ds_type_grid) == false) {
		show_message("No ds grid found");
		return;
	}
	//Are the attributes proper?
	if (is_array(attributes) == false || array_length(attributes) != Item.Height) {
		show_message("Input for adding items isn't right.");
		return;
	}
	
	//Add the item
	ds_grid_resize(global.AllRunes, ds_grid_width(global.AllRunes) + 1, ds_grid_height(global.AllRunes));
	for (var i = 0; i < array_length(attributes); ++i) {
		global.AllRunes[# ds_grid_width(global.AllRunes) - 1, i] = attributes[i];
	}
}

/// @description Remove an item to a DS Grid
/// @param Grid The DS Grid
/// @param Attributes An array of the Item enum attributes
function RemoveItem(grid, attributes) {
	//Check - is this item in the master list?
	var isInMasterList = false;
	for(var i = 0; i < ds_grid_width(global.AllRunes); ++i) {
		if (global.AllRunes[# i, Item.Name] == attributes[Item.Name]) {
			isInMasterList = true;
		}
	}
	if (isInMasterList == false) {
		show_message("Cannot find this item");
		return;
	}
	
	//Check - Is it already in the grid
	for(var i = 0; i < ds_grid_width(grid); ++i) {
		if (attributes[Item.Name] == grid[# i, Item.Name]) {
			//It's in here, so add amount to item in grid
			grid[# i, Item.Amount] -= attributes[Item.Amount];
			return;
		}
	}
	
	////Check - Not in the grid, so add it
	//ds_grid_resize(grid, ds_grid_width(grid) + 1, ds_grid_height(grid));
	//for(var i = 0; i < array_length(attributes); ++i) {
	//	grid[# ds_grid_width(grid) - 1, i] = attributes[i];
	//}
	
}