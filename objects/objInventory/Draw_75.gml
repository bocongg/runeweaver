var mouse_x_gui = device_mouse_x_to_gui(0);
var mouse_y_gui = device_mouse_y_to_gui(0);

var slot_count = ds_list_size(global.inventory_slots);
for (var i = 0; i < slot_count; i++) {
    var slot_data = global.inventory_slots[| i];
    var slot_x = slot_data.x;
    var slot_y = slot_data.y;
    var slot_index = slot_data.index;
	
	//Get values
	var iid = global.inventory[# slot_index, 0];

    if (point_in_rectangle(mouse_x_gui, mouse_y_gui, slot_x - 48, slot_y - 48, slot_x + 48, slot_y + 48)) {
		//Draw stuff				
		switch(iid){
			case item.none:
				draw_sprite(sprRuneTooltip, iid, slot_x, slot_y - 231);
				break;
			case item.firerune1:
				draw_sprite(sprRuneTooltip, iid, slot_x, slot_y - 231);
				break;
			case item.firerune2:
				draw_sprite(sprRuneTooltip, iid, slot_x, slot_y - 231);
				break;
			case item.firerune3:
				draw_sprite(sprRuneTooltip, iid, slot_x, slot_y - 231);
				break;
			case item.icerune1:
				draw_sprite(sprRuneTooltip, iid, slot_x, slot_y - 231);
				break;
			case item.icerune2:
				draw_sprite(sprRuneTooltip, iid, slot_x, slot_y - 231);
				break;
			case item.icerune3:
				draw_sprite(sprRuneTooltip, iid, slot_x, slot_y - 231);
				break;
			case item.windrune1:
				draw_sprite(sprRuneTooltip, iid, slot_x, slot_y - 231);
				break;
			case item.windrune2:
				draw_sprite(sprRuneTooltip, iid, slot_x, slot_y - 231);
				break;
			case item.windrune3:
				draw_sprite(sprRuneTooltip, iid, slot_x, slot_y - 231);
				break;
			case item.frostfirerune2:
				draw_sprite(sprRuneTooltip, iid, slot_x, slot_y - 231);
				break;
			case item.frostfirerune3:
				draw_sprite(sprRuneTooltip, iid, slot_x, slot_y - 231);
				break;
			case item.blizzardrune2:
				draw_sprite(sprRuneTooltip, iid, slot_x, slot_y - 231);
				break;
			case item.blizzardrune3:
				draw_sprite(sprRuneTooltip, iid, slot_x, slot_y - 231);
				break;
			case item.infernorune2:
				draw_sprite(sprRuneTooltip, iid, slot_x, slot_y - 231);
				break;
			case item.infernorune3:
				draw_sprite(sprRuneTooltip, iid, slot_x, slot_y - 231);
				break;
			case item.prismrune3:
				draw_sprite(sprRuneTooltip, iid, slot_x, slot_y - 231);
				break;
		}
	}
}

var slotAttack_count = ds_list_size(global.attack_slots);
for (var i = 0; i < slotAttack_count; i++) {
    var slot_data = global.attack_slots[| i];
    var slot_x = slot_data.x;
    var slot_y = slot_data.y;
    var slot_index = slot_data.index;
	
	//Get values
	var iidAttack = global.attack_slot[# slot_index, 0];

	if (point_in_rectangle(mouse_x_gui, mouse_y_gui, slot_x - 48, slot_y - 48, slot_x + 48, slot_y + 48)) {
		//Draw stuff		
		switch(iidAttack){
			case item.none:
				draw_sprite(sprRuneTooltip, iidAttack, slot_x + 162, slot_y - 231);
				break;
			case item.firerune1:
				draw_sprite(sprRuneTooltip, iidAttack, slot_x + 162, slot_y - 231);
				break;
			case item.firerune2:
				draw_sprite(sprRuneTooltip, iidAttack, slot_x + 162, slot_y - 231);
				break;
			case item.firerune3:
				draw_sprite(sprRuneTooltip, iidAttack, slot_x + 162, slot_y - 231);
				break;
			case item.icerune1:
				draw_sprite(sprRuneTooltip, iidAttack, slot_x + 162, slot_y - 231);
				break;
			case item.icerune2:
				draw_sprite(sprRuneTooltip, iidAttack, slot_x + 162, slot_y - 231);
				break;
			case item.icerune3:
				draw_sprite(sprRuneTooltip, iidAttack, slot_x + 162, slot_y - 231);
				break;
			case item.windrune1:
				draw_sprite(sprRuneTooltip, iidAttack, slot_x + 162, slot_y - 231);
				break;
			case item.windrune2:
				draw_sprite(sprRuneTooltip, iidAttack, slot_x + 162, slot_y - 231);
				break;
			case item.windrune3:
				draw_sprite(sprRuneTooltip, iidAttack, slot_x + 162, slot_y - 231);
				break;
			case item.frostfirerune2:
				draw_sprite(sprRuneTooltip, iidAttack, slot_x + 162, slot_y - 231);
				break;
			case item.frostfirerune3:
				draw_sprite(sprRuneTooltip, iidAttack, slot_x + 162, slot_y - 231);
				break;
			case item.blizzardrune2:
				draw_sprite(sprRuneTooltip, iidAttack, slot_x + 162, slot_y - 231);
				break;
			case item.blizzardrune3:
				draw_sprite(sprRuneTooltip, iidAttack, slot_x + 162, slot_y - 231);
				break;
			case item.infernorune2:
				draw_sprite(sprRuneTooltip, iidAttack, slot_x + 162, slot_y - 231);
				break;
			case item.infernorune3:
				draw_sprite(sprRuneTooltip, iidAttack, slot_x + 162, slot_y - 231);
				break;
			case item.prismrune3:
				draw_sprite(sprRuneTooltip, iidAttack, slot_x + 162, slot_y - 231);
				break;
		}
	}
}

var slotWeave_count = ds_list_size(global.weave_slots);
for (var i = 0; i < slotWeave_count; i++) {
    var slot_data = global.weave_slots[| i];
    var slot_x = slot_data.x;
    var slot_y = slot_data.y;
    var slot_index = slot_data.index;
	
	//Get values
	var iidWeave = global.weave_slot[# slot_index, 0];

	if (point_in_rectangle(mouse_x_gui, mouse_y_gui, slot_x - 48, slot_y - 48, slot_x + 48, slot_y + 48)) {
		//Draw stuff
		switch(iid){
			case item.none:
				draw_sprite(sprRuneTooltip, iidWeave, slot_x, slot_y + 231);
				break;
			case item.firerune1:
				draw_sprite(sprRuneTooltip, iidWeave, slot_x, slot_y + 231);
				break;
			case item.firerune2:
				draw_sprite(sprRuneTooltip, iidWeave, slot_x, slot_y + 231);
				break;
			case item.firerune3:
				draw_sprite(sprRuneTooltip, iidWeave, slot_x, slot_y + 231);
				break;
			case item.icerune1:
				draw_sprite(sprRuneTooltip, iidWeave, slot_x, slot_y + 231);
				break;
			case item.icerune2:
				draw_sprite(sprRuneTooltip, iidWeave, slot_x, slot_y + 231);
				break;
			case item.icerune3:
				draw_sprite(sprRuneTooltip, iidWeave, slot_x, slot_y + 231);
				break;
			case item.windrune1:
				draw_sprite(sprRuneTooltip, iidWeave, slot_x, slot_y + 231);
				break;
			case item.windrune2:
				draw_sprite(sprRuneTooltip, iidWeave, slot_x, slot_y + 231);
				break;
			case item.windrune3:
				draw_sprite(sprRuneTooltip, iidWeave, slot_x, slot_y + 231);
				break;
			case item.frostfirerune2:
				draw_sprite(sprRuneTooltip, iidWeave, slot_x, slot_y + 231);
				break;
			case item.frostfirerune3:
				draw_sprite(sprRuneTooltip, iidWeave, slot_x, slot_y + 231);
				break;
			case item.blizzardrune2:
				draw_sprite(sprRuneTooltip, iidWeave, slot_x, slot_y + 231);
				break;
			case item.blizzardrune3:
				draw_sprite(sprRuneTooltip, iidWeave, slot_x, slot_y + 231);
				break;
			case item.infernorune2:
				draw_sprite(sprRuneTooltip, iidWeave, slot_x, slot_y + 231);
				break;
			case item.infernorune3:
				draw_sprite(sprRuneTooltip, iidWeave, slot_x, slot_y + 231);
				break;
			case item.prismrune3:
				draw_sprite(sprRuneTooltip, iidWeave, slot_x, slot_y + 231);
				break;
		}
	}
}