draw_self();

if (global.stage == 0) {
	with(objEquipBasic) {draw_sprite(sprInvTooltip2, 0, x+61.5, y-122);}
}

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