/// @description scr_add_food(item_ID, name, description, health_gain);
/// @function scr_add_food
/// @param item_ID
/// @param name
/// @param description
/// @param health_gain
//function scr_add_food(argument0, argument1, argument2, argument3) {

//	var iid = argument0;
//	global.item_index[# iid, item_stat.name] = argument1;
//	global.item_index[# iid, item_stat.description] = argument2;
//	global.item_index[# iid, item_stat.health_gain] = argument3;

//	global.item_index[# iid, item_stat.type] = item_type.food;


//}
function scr_add_rune_info(argument0, argument1, argument2, argument3, argument4, argument5) {

	var iid = argument0;
	global.item_index[# iid, item_stat.name] = argument1;

	global.item_index[# iid, item_stat.basicAttackName] = argument2;
	
	global.item_index[# iid, item_stat.basicAttackDescription] = argument3;
	
	global.item_index[# iid, item_stat.specialAttackName] = argument4;
	
	global.item_index[# iid, item_stat.specialAttackDescription] = argument5;
}