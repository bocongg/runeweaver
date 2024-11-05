/// @description Creates the inventory slots.
function scr_create_inventory() {
	global.inventory_slots = ds_list_create();
	
	var slot = 0;
	
	while (slot < ds_grid_width(global.inventory))
	 {
		var itemX = bbox_left + 236 + (135*slot);
		var itemY = bbox_top + 480;
		
		if (slot >= 7 && slot < 7 * 2) {
			itemX = bbox_left + 236 + ((slot-7)*135);
			itemY = bbox_top + 480 + 176;
		}
		if (slot >= 7 * 2 && slot < 7 * 3) {
			itemX = bbox_left + 236 + ((slot-7*2)*135);
			itemY = bbox_top + 480 + 176 + 176;
		}	
			
		var slot_data = {
            x: itemX,
            y: itemY,
            index: slot
        };
        ds_list_add(global.inventory_slots, slot_data);
		slot ++;
	}
	
	global.attack_slots = ds_list_create();
	
	var slotAttack = 0;
	
	while (slotAttack < ds_grid_width(global.attack_slot))
	{
		var itemX = 107;
		var itemY = 888;
		
		if (slotAttack == 1) {
			itemX = 223;
			itemY = 888;
		}

		var slotAttack_data = {
            x: itemX,
            y: itemY,
            index: slotAttack
        };
        ds_list_add(global.attack_slots, slotAttack_data);
		slotAttack ++;
	}
	
	global.weave_slots = ds_list_create();
	
	var slotWeave = 0;
	
	while (slotWeave < ds_grid_width(global.weave_slot))
	{
		var itemX = 653;
		var itemY = 215;
		
		if (slotWeave == 1) {
			itemX = 859;
			itemY = 215;
		}
		if (slotWeave == 2) {
			itemX = 1067;
			itemY = 215;
		}
		if (slotWeave == 3) {
			itemX = 1292;
			itemY = 215;
		}

		var slotWeave_data = {
            x: itemX,
            y: itemY,
            index: slotWeave
        };
        ds_list_add(global.weave_slots, slotWeave_data);
		slotWeave ++;
	}

}

