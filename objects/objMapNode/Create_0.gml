// Variables for moused state.
mouse_over = false;
is_clicked = false;

////Check for L2 or L3 special runes in Inventory
//specialRune = false;

//var slot = 0;
//var inventory_width = ds_grid_width(global.inventory);

//while (slot < inventory_width)
//	{
//	//If the tested slot in the inventory contains a matching special rune
//	if (global.inventory[# slot, 0] == item.frostfirerune2 ||
//		global.inventory[# slot, 0] == item.frostfirerune3 ||
//		global.inventory[# slot, 0] == item.snowstormrune2 ||
//		global.inventory[# slot, 0] == item.snowstormrune3 ||
//		global.inventory[# slot, 0] == item.infernorune2 ||
//		global.inventory[# slot, 0] == item.infernorune3 ||
//		global.inventory[# slot, 0] == item.prismrune3)
//		{
//			specialRune = true;
//			exit; //Exit function, because it has found the special rune
//		}
//	slot ++; //Incriment slot to test next position
//}

//var slotAttack = 0;
//var attack_width = ds_grid_width(global.attack_slot);

//while (slot < attack_width)
//	{
//	//If the tested slot in the inventory contains a matching special rune
//	if (global.attack_slot[# slotAttack, 0] == item.frostfirerune2 || item.frostfirerune3 ||
//									   item.snowstormrune2 || item.snowstormrune3 ||
//									   item.infernorune2 || item.infernorune3 ||
//									   item.prismrune3)
//		{
//			specialRune = true;
//			exit; //Exit function, because it has found the special rune
//		}
//	slotAttack ++; //Incriment slot to test next position
//}

//var slotWeave = 0;
//var weave_width = ds_grid_width(global.weave_slot);

//while (slot < weave_width)
//	{
//	//If the tested slot in the inventory contains a matching special rune
//	if (global.weave_slot[# slotWeave, 0] == item.frostfirerune2 || item.frostfirerune3 ||
//									   item.snowstormrune2 || item.snowstormrune3 ||
//									   item.infernorune2 || item.infernorune3 ||
//									   item.prismrune3)
//		{
//			specialRune = true;
//			exit; //Exit function, because it has found the special rune
//		}
//	slotWeave ++; //Incriment slot to test next position
//}