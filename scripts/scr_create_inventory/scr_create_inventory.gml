/// @description Creates the inventory slots.
function scr_create_inventory() {

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
			
		var inst = instance_create_layer(itemX, itemY, "InventoryScreen", obj_slot);
		inst.var_slot = slot;
		slot ++;
		}


}


//function scr_create_inventory() {

//	var slot = 0;
//	while (slot < ds_grid_width(global.inventory))
//	 {
//		var inst = instance_create_layer(x+8+(64*slot), y+8, "Instances", obj_slot);
//		inst.var_slot = slot;
//		slot ++;
//		}


//}
