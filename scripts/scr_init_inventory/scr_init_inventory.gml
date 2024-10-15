/// @description Setup item variables
function scr_init_inventory() {

	//Item ids
	//enum item
	// {
	//	none,
	//	apple,
	//	sword,
	//	health_potion,
	//	staff,
	//	total
	//	}
	
	enum item
		{
		none,
		firerune1,
		firerune2,
		icerune1,
		icerune2,
		windrune1,
		windrune2,
		total
		}

	//enum item_stat
	// {
	// name,
	// description,
	// type,
	// damage,
	// health_gain,
	//	total
	// }

	enum item_stat
	 {
	 name,
	 //description,
	 type,
	 //damage,
	 //health_gain,
	 total
	 }

	//enum item_type
	// {
	// none,
	// weapon,
	// food
	// }

	enum item_type
	 {
	 none,
	 fire,
	 ice,
	 wind
	 }


	global.inventory = ds_grid_create(21, 2);
	ds_grid_clear(global.inventory, 0);
	//Create a ds grid item.total wide, and item_stat.total tall
	global.item_index = ds_grid_create(item.total, item_stat.total);
	ds_grid_clear(global.item_index, 0); //Set every position to 0
	global.mouse_slot = ds_grid_create(1, 2);

	scr_add_rune(item.firerune1, "Fire Rune Level 1");
	scr_add_rune(item.firerune2, "Fire Rune Level 2");
	scr_add_rune(item.icerune1, "Ice Rune Level 1");


}
