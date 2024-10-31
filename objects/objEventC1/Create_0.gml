// Variables for moused state.
mouse_over = false;
is_clicked = false;

checkLevel2Rune = false;
inventorySpRunes = ds_list_create();
weaveSpRunes = ds_list_create();
attackSpRunes = ds_list_create();


// Check through all inventory slots for level 2 special runes
var slot = 0; //A temporary variable to loop through the slots
var inventory_width = ds_grid_width(global.inventory);

while (slot < inventory_width) {
	if (global.inventory[# slot, 0] == item.frostfirerune2 ||
		global.inventory[# slot, 0] == item.blizzardrune2 ||
		global.inventory[# slot, 0] == item.infernorune2){
		checkLevel2Rune = true;
		ds_list_add(inventorySpRunes, global.inventory[# slot, 0]);
	}
	slot ++;
}

// Check through all weave slots for level 2 special runes
var slotWeave = 0; //A temporary variable to loop through the slots
var weave_width = ds_grid_width(global.weave_slot);

while (slotWeave < weave_width) {
	if (global.weave_slot[# slotWeave, 0] == item.frostfirerune2 ||
		global.weave_slot[# slotWeave, 0] == item.blizzardrune2 ||
		global.weave_slot[# slotWeave, 0] == item.infernorune2){
		checkLevel2Rune = true;
		ds_list_add(weaveSpRunes, global.weave_slot[# slotWeave, 0]);
	}
	slotWeave ++;
}

// Check through all attack slots for level 2 special runes
var slotAttack = 0; //A temporary variable to loop through the slots
var attack_width = ds_grid_width(global.attack_slot);

while (slotAttack < attack_width) {
	if (global.attack_slot[# slotAttack, 0] == item.frostfirerune2 ||
		global.attack_slot[# slotAttack, 0] == item.blizzardrune2 ||
		global.attack_slot[# slotAttack, 0] == item.infernorune2){
		checkLevel2Rune = true;
		ds_list_add(attackSpRunes, global.attack_slot[# slotAttack, 0]);
	}
	slotAttack ++;
}