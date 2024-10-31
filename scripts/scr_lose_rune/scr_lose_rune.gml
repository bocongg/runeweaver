/// @description Adds an item and a quantity into the inventory in a valid slot.
/// @function scr_gain_item(item_ID, amount);
/// @param item_ID
/// @param amount
function scr_lose_L2_rune() {
	randomize();
	with(objEventC1){
		// Check inventory and remove runes
		if (!ds_list_empty(other.inventorySpRunes)){
			listShuffle(other.inventorySpRunes);
			var _index = irandom_range(0, ds_list_size(other.inventorySpRunes)-1);
			var randomLevel2SpRune = ds_list_find_value(other.inventorySpRunes, _index);
			global.eventCRuneID = randomLevel2SpRune;
			show_debug_message("(Inventory) L2 rune list size: " + string(ds_list_size(other.inventorySpRunes)) + "; randomLevel2SpRune: " + string(randomLevel2SpRune));
		
			var slot = 0; //A temporary variable to loop through the slots
			var inventory_width = ds_grid_width(global.inventory);

			while (slot < inventory_width) {
				//If the tested slot in the inventory is either empty, or contains a matching item id
				if (global.inventory[# slot, 0] == randomLevel2SpRune) {
					global.inventory[# slot, 1] -= 1;
					if (global.inventory[# slot, 1] == 0){global.inventory[# slot, 0] = item.none;};
					exit; //Exit function, because it has set the slot
				}
			slot ++; //Incriment slot to test next position
			}
		} else
		// Check weave slots and remove runes
		if (!ds_list_empty(other.weaveSpRunes)){
			listShuffle(other.weaveSpRunes);
			var _index = irandom_range(0, ds_list_size(other.weaveSpRunes)-1);
			var randomLevel2SpRune = ds_list_find_value(other.weaveSpRunes, 0);
			global.eventCRuneID = randomLevel2SpRune;
			show_debug_message("(Weave) L2 rune list size: " + string(ds_list_size(other.weaveSpRunes)) + "; randomLevel2SpRune: " + string(randomLevel2SpRune));
			
			var slotWeave = 0; //A temporary variable to loop through the slots
			var weave_width = ds_grid_width(global.weave_slot);

			while (slotWeave < weave_width) {
				//If the tested slot in the inventory is either empty, or contains a matching item id
				if (global.weave_slot[# slotWeave, 0] == randomLevel2SpRune) {
					global.weave_slot[# slotWeave, 0] = item.none;
					exit; //Exit function, because it has set the slot
				}
			slotWeave ++; //Incriment slot to test next position
			}
		} else
		// Check attack slots and remove runes
		if (!ds_list_empty(other.attackSpRunes)){
			listShuffle(other.attackSpRunes);
			var _index = irandom_range(0, ds_list_size(other.weaveSpRunes)-1);
			var randomLevel2SpRune = ds_list_find_value(other.attackSpRunes, 0);
			global.eventCRuneID = randomLevel2SpRune;
			show_debug_message("(Attack) L2 rune list size: " + string(ds_list_size(other.weaveSpRunes)) + "; randomLevel2SpRune: " + string(randomLevel2SpRune));
			
			var slotAttack = 0; //A temporary variable to loop through the slots
			var attack_width = ds_grid_width(global.attack_slot);

			while (slotAttack < attack_width) {
				//If the tested slot in the inventory is either empty, or contains a matching item id
				if (global.attack_slot[# slotAttack, 0] == randomLevel2SpRune) {
					global.attack_slot[# slotAttack, 0] = item.none;
					exit; //Exit function, because it has set the slot
				}
			slotAttack ++; //Incriment slot to test next position
			}
		} 
	}
}

function scr_lose_L3_rune() {
	randomize();
	with(objEventC2){
		// Check inventory and remove runes
		if (!ds_list_empty(other.inventorySpRunes)){
			listShuffle(other.inventorySpRunes);
			var _index = irandom_range(0, ds_list_size(other.inventorySpRunes)-1);
			var randomLevel3SpRune = ds_list_find_value(other.inventorySpRunes, _index);
			global.eventCRuneID = randomLevel3SpRune;
			show_debug_message("(Inventory) L3 rune list size: " + string(ds_list_size(other.inventorySpRunes)) + "; randomLevel3SpRune: " + string(randomLevel3SpRune));
		
			var slot = 0; //A temporary variable to loop through the slots
			var inventory_width = ds_grid_width(global.inventory);

			while (slot < inventory_width) {
				//If the tested slot in the inventory is either empty, or contains a matching item id
				if (global.inventory[# slot, 0] == randomLevel3SpRune) {
					global.inventory[# slot, 1] -= 1;
					if (global.inventory[# slot, 1] == 0){global.inventory[# slot, 0] = item.none;};
					exit; //Exit function, because it has set the slot
				}
			slot ++; //Incriment slot to test next position
			}
		} else
		// Check weave slots and remove runes
		if (!ds_list_empty(other.weaveSpRunes)){
			listShuffle(other.weaveSpRunes);
			var _index = irandom_range(0, ds_list_size(other.weaveSpRunes)-1);
			var randomLevel3SpRune = ds_list_find_value(other.weaveSpRunes, 0);
			global.eventCRuneID = randomLevel3SpRune;
			show_debug_message("(Weave) L3 rune list size: " + string(ds_list_size(other.weaveSpRunes)) + "; randomLevel3SpRune: " + string(randomLevel3SpRune));
			
			var slotWeave = 0; //A temporary variable to loop through the slots
			var weave_width = ds_grid_width(global.weave_slot);

			while (slotWeave < weave_width) {
				//If the tested slot in the inventory is either empty, or contains a matching item id
				if (global.weave_slot[# slotWeave, 0] == randomLevel3SpRune) {
					global.weave_slot[# slotWeave, 0] = item.none;
					exit; //Exit function, because it has set the slot
				}
			slotWeave ++; //Incriment slot to test next position
			}
		} else
		// Check attack slots and remove runes
		if (!ds_list_empty(other.attackSpRunes)){
			listShuffle(other.attackSpRunes);
			var _index = irandom_range(0, ds_list_size(other.weaveSpRunes)-1);
			var randomLevel3SpRune = ds_list_find_value(other.attackSpRunes, 0);
			global.eventCRuneID = randomLevel3SpRune;
			show_debug_message("(Attack) L3 rune list size: " + string(ds_list_size(other.weaveSpRunes)) + "; randomLevel3SpRune: " + string(randomLevel3SpRune));
			
			var slotAttack = 0; //A temporary variable to loop through the slots
			var attack_width = ds_grid_width(global.attack_slot);

			while (slotAttack < attack_width) {
				//If the tested slot in the inventory is either empty, or contains a matching item id
				if (global.attack_slot[# slotAttack, 0] == randomLevel3SpRune) {
					global.attack_slot[# slotAttack, 0] = item.none;
					exit; //Exit function, because it has set the slot
				}
			slotAttack ++; //Incriment slot to test next position
			}
		} 
	}
}

