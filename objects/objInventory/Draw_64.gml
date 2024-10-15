draw_self();

with (obj_slot)
{
	//Get values
	var iid = global.inventory[# var_slot, 0];
	var amount = global.inventory[# var_slot, 1];

	//Draw stuff
	if (iid != item.none)
	 {
		draw_sprite(spr_item, iid, x, y); //Draw item sprite
		draw_set_font(fntMedium);
		draw_text(x+40, y+50, string(amount)); //Draw item quantity
		}
}


with (obj_slot_Attack)
{
	var iidAttack = global.attack_slot[# var_slotAttack, 0];
	var amountAttack = global.attack_slot[# var_slotAttack, 1];
	
	if (iidAttack != item.none)
	{
		draw_sprite(spr_item, iidAttack, x, y)
	}
}

with (obj_slot_Weave)
{
	var iidWeave = global.weave_slot[# var_slotWeave, 0];
	var amountWeave = global.weave_slot[# var_slotWeave, 1];
	
	if (iidWeave != item.none)
	{
		draw_sprite(spr_item, iidWeave, x, y)
	}
}
	
//Get values
var iid = global.mouse_slot[# 0, 0];
var amount = global.mouse_slot[# 0, 1];

//Draw stuff
if (iid != item.none)
{
	draw_sprite(spr_item, iid, mouse_x-10, mouse_y-10); //Draw item sprite
	draw_text(mouse_x+40-10, mouse_y+50-10, string(amount)); //Draw item quantity
}

////var _xx = bbox_left + 236;
////var _yy = bbox_top + 480;

////instance_create_layer(_xx, _yy, "RunesInventory", objFireRune1)
////instance_create_layer(_xx + 135, _yy, "RunesInventory", objIceRune1)
//draw_set_font(fntMedium);

//for (var i = 0; i < inventorySlots; i += 1){
//	var xx = bbox_left + 236 + (i mod rowLength) * 135;
//	var yy = bbox_top + 480 + (i div rowLength) * 176;
//	if (inventory[i] != -1){
//		instance_create_layer(xx, yy, "RunesInventory", inventory[i]);
//		//draw_text(xx + 40, yy + 50,  + string(inventory[i][runeAmount]));
//	}
//}
//draw_set_font(fntMedium);