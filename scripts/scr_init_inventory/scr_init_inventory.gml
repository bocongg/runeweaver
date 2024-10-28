/// @description Setup item variables
function scr_init_inventory() {

	//Item id
	enum item
		{
		none,
		firerune1,
		firerune2,
		firerune3,
		icerune1,
		icerune2,
		icerune3,
		windrune1,
		windrune2,
		windrune3,
		frostfirerune2,
		frostfirerune3,
		blizzardrune2,
		blizzardrune3,
		infernorune2,
		infernorune3,
		prismrune3,
		mysteryrune,
		total
		}

	enum item_stat
	 {
	 name,
	 basicAttackName,
	 basicAttackDescription,
	 specialAttackName,
	 specialAttackDescription,
	 total
	 }

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
	global.attack_slot = ds_grid_create(2,2);
	global.weave_slot = ds_grid_create(4,2);
}
