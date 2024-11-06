if ((global.attack_slot[# 0, 0] == item.none) && (global.attack_slot[# 1, 0] == item.none)) {
	if (!instance_exists(objInvTooltip2)){
		with(objEquipBasic) {instance_create_layer(x+61.5, y-122, "RunesInventory", objInvTooltip2)}	
	}
} else {instance_destroy(objInvTooltip2)}

weaveRunesCheck();

// Inventory slot
if (mouse_check_button_pressed(mb_left)) {
    var mouse_x_gui = device_mouse_x_to_gui(0);
    var mouse_y_gui = device_mouse_y_to_gui(0);

    var slot_count = ds_list_size(global.inventory_slots);
    for (var i = 0; i < slot_count; i++) {
        var slot_data = global.inventory_slots[| i];
        var slot_x = slot_data.x;
        var slot_y = slot_data.y;
        var slot_index = slot_data.index;

        if (point_in_rectangle(mouse_x_gui, mouse_y_gui, slot_x - 48, slot_y - 48, slot_x + 48, slot_y + 48)) {
            // Handle slot interaction
            // Similar to your obj_slot Left Pressed event
			var iid = global.inventory[# slot_index, 0];
			var amount = global.inventory[# slot_index, 1];
			var mouse_iid = global.mouse_slot[# 0, 0];
			var mouse_amount = global.mouse_slot[# 0, 1];

			if (mouse_iid == 0) //If mouse slot is empty
			 {
				//Put 1 rune into mouse slot
				global.mouse_slot[# 0, 0] = iid;
				global.mouse_slot[# 0, 1] = 1;
	
				global.inventory[# slot_index, 1] -= 1;
				if (global.inventory[# slot_index, 1] <= 0)
				{
					global.inventory[# slot_index, 0] = item.none;
					global.inventory[# slot_index, 1] = 0;
				}
	
			}

			if (mouse_iid != 0 && iid == 0) // If inventory is empty and mouse slot not empty, transfer rune from mouse to inventory
			{
				global.inventory[# slot_index, 0] = mouse_iid;
				global.inventory[# slot_index, 1] += 1;
				global.mouse_slot[# 0, 1] -= 1;
				if (global.mouse_slot[# 0, 1] <= 0)
				{
					global.mouse_slot[# 0, 0] = item.none;
					global.mouse_slot[# 0, 1] = 0;
					exit;
				}
			}

			if (iid == mouse_iid) //If both slots are the same
			{
				global.inventory[# slot_index, 1] += 1;
				global.mouse_slot[# 0, 1] -= 1;
				if (global.mouse_slot[# 0, 1] <= 0)
				{
					global.mouse_slot[# 0, 0] = item.none;
					global.mouse_slot[# 0, 1] = 0;
					exit;
				}
			}
            break; // Exit loop after handling click
        }
    }
}

// Attack slot
if (mouse_check_button_pressed(mb_left)) {
    var mouse_x_gui = device_mouse_x_to_gui(0);
    var mouse_y_gui = device_mouse_y_to_gui(0);

    var slotAttack_count = ds_list_size(global.attack_slots);
    for (var i = 0; i < slotAttack_count; i++) {
        var slot_data = global.attack_slots[| i];
        var slot_x = slot_data.x;
        var slot_y = slot_data.y;
        var slot_index = slot_data.index;

        if (point_in_rectangle(mouse_x_gui, mouse_y_gui, slot_x - 48, slot_y - 48, slot_x + 48, slot_y + 48)) {
            // Handle slot interaction
            // Similar to your obj_slot_Attack Left Pressed event
			var mouse_iid = global.mouse_slot[# 0, 0];
			var mouse_amount = global.mouse_slot[# 0, 1];
			var iidAttack = global.attack_slot[# slot_index, 0];
			var amountAttack = global.attack_slot[# slot_index, 1];

			if (mouse_iid != 0 && iidAttack == 0) //If rune is in mouse slot and attack slot is empty
			{
				global.attack_slot[# slot_index, 0] = mouse_iid;
				global.attack_slot[# slot_index, 1] += 1;
				global.mouse_slot[# 0, 1] -= 1;
				if (global.mouse_slot[# 0, 1] <= 0)
				{
					global.mouse_slot[# 0, 0] = item.none;
					global.mouse_slot[# 0, 1] = 0;
					exit;
				}
			}

			if (mouse_iid == 0 && iidAttack != 0) //If mouse slot is empty and rune is in attack slot
			{
				//Put 1 rune into mouse slot
				global.mouse_slot[# 0, 0] = iidAttack;
				global.mouse_slot[# 0, 1] = amountAttack;
	
				global.attack_slot[# slot_index, 1] -= 1;
				if (global.attack_slot[# slot_index, 1] <= 0)
				{
					global.attack_slot[# slot_index, 0] = item.none;
					global.attack_slot[# slot_index, 1] = 0;
					exit;
				}
	
			}

			if (iidAttack != mouse_iid) //If the two slots don't match
			{
				//Switch the slots
				global.attack_slot[# slot_index, 0] = mouse_iid;
				global.attack_slot[# slot_index, 1] = mouse_amount;
				global.mouse_slot[# 0, 0] = iidAttack;
				global.mouse_slot[# 0, 1] = amountAttack;
			}
            break; // Exit loop after handling click
        }
    }
}

// Weave slot
if (mouse_check_button_pressed(mb_left)) {
    var mouse_x_gui = device_mouse_x_to_gui(0);
    var mouse_y_gui = device_mouse_y_to_gui(0);

    var slotWeave_count = ds_list_size(global.weave_slots);
    for (var i = 0; i < slotWeave_count; i++) {
        var slot_data = global.weave_slots[| i];
        var slot_x = slot_data.x;
        var slot_y = slot_data.y;
        var slot_index = slot_data.index;

        if (point_in_rectangle(mouse_x_gui, mouse_y_gui, slot_x - 48, slot_y - 48, slot_x + 48, slot_y + 48)) {
            // Handle slot interaction
            // Similar to your obj_slot_Weave Left Pressed event
			var mouse_iid = global.mouse_slot[# 0, 0];
			var mouse_amount = global.mouse_slot[# 0, 1];
			var iidWeave = global.weave_slot[# slot_index, 0];
			var amountWeave = global.weave_slot[# slot_index, 1];

			if (mouse_iid != 0 && iidWeave == 0) //If rune is in mouse slot and weave slot is empty, place rune into weave slot.
			{
				global.weave_slot[# slot_index, 0] = mouse_iid;
				global.weave_slot[# slot_index, 1] += 1;
				global.mouse_slot[# 0, 1] -= 1;
				if (global.mouse_slot[# 0, 1] <= 0)
				{
					global.mouse_slot[# 0, 0] = item.none;
					global.mouse_slot[# 0, 1] = 0;
					exit;
				}
			}

			if (mouse_iid == 0 && iidWeave != 0) //If mouse slot is empty and rune is in weave slot, remove rune from weave slot.
			{
				if (iidWeave == item.mysteryrune){
					exit
				} else {
					//Put 1 rune into mouse slot
					global.mouse_slot[# 0, 0] = iidWeave;
					global.mouse_slot[# 0, 1] = amountWeave;
	
					global.weave_slot[# slot_index, 1] -= 1;
					if (global.weave_slot[# slot_index, 1] <= 0)
					{
						global.weave_slot[# slot_index, 0] = item.none;
						global.weave_slot[# slot_index, 1] = 0;
						exit;
					}
				}
			}

			if (iidWeave != mouse_iid) //If the two slots don't match
			{
				if (iidWeave == item.mysteryrune){
					exit
				} else {
					//Switch the slots
					global.weave_slot[# slot_index, 0] = mouse_iid;
					global.weave_slot[# slot_index, 1] = mouse_amount;
					global.mouse_slot[# 0, 0] = iidWeave;
					global.mouse_slot[# 0, 1] = amountWeave;
				}
			}
            break; // Exit loop after handling click
        }
    }
}