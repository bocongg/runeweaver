draw_self();

if (global.stage == 0) {
	with(objEquipBasic) {draw_sprite(sprInvTooltip2, 0, x+61.5, y-122);}
}

// Draw slots and items
var slot_count = ds_list_size(global.inventory_slots);
for (var i = 0; i < slot_count; i++) {
    var slot_data = global.inventory_slots[| i];
    var slot_x = slot_data.x;
    var slot_y = slot_data.y;
    var slot_index = slot_data.index;
	
	//Get values
	var iid = global.inventory[# slot_index, 0];
    var amount = global.inventory[# slot_index, 1];

	//Draw stuff
	if (iid != item.none){
		draw_sprite(spr_item, iid, slot_x, slot_y) //Draw item sprite
		draw_set_font(fntMedium);
		draw_text(slot_x+40, slot_y+50, string(amount)); //Draw item quantity
	}
}

// Draw slots and items
var slotAttack_count = ds_list_size(global.attack_slots);
for (var i = 0; i < slotAttack_count; i++) {
    var slot_data = global.attack_slots[| i];
    var slot_x = slot_data.x;
    var slot_y = slot_data.y;
    var slot_index = slot_data.index;

	var iidAttack = global.attack_slot[# slot_index, 0];
	var amountAttack = global.attack_slot[# slot_index, 1];

    if (iidAttack != item.none)
    {
        draw_sprite(spr_item, iidAttack, slot_x, slot_y);
    }
}

// Draw slots and items
var slotWeave_count = ds_list_size(global.weave_slots);
for (var i = 0; i < slotWeave_count; i++) {
    var slot_data = global.weave_slots[| i];
    var slot_x = slot_data.x;
    var slot_y = slot_data.y;
    var slot_index = slot_data.index;
	
	var iidWeave = global.weave_slot[# slot_index, 0];
	var amountWeave = global.weave_slot[# slot_index, 1];

    if (iidWeave != item.none)
    {
        draw_sprite(spr_item, iidWeave, slot_x, slot_y);
    }
}
	
//Get values
var iid = global.mouse_slot[# 0, 0];
var amount = global.mouse_slot[# 0, 1];

//Draw stuff
if (iid != item.none)
{
	draw_sprite(spr_item, iid, device_mouse_x_to_gui(0)-10, device_mouse_y_to_gui(0)-10); //Draw item sprite
	draw_text(device_mouse_x_to_gui(0)+40-10, device_mouse_y_to_gui(0)+50-10, string(amount)); //Draw item quantity
}