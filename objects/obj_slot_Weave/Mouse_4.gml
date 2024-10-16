/// @description Move single rune

var mouse_iid = global.mouse_slot[# 0, 0];
var mouse_amount = global.mouse_slot[# 0, 1];
var iidWeave = global.weave_slot[# var_slotWeave, 0];
var amountWeave = global.weave_slot[# var_slotWeave, 1];

if (mouse_iid != 0 && iidWeave == 0) //If rune is in mouse slot and weave slot is empty
{
	global.weave_slot[# var_slotWeave, 0] = mouse_iid;
	global.weave_slot[# var_slotWeave, 1] += 1;
	global.mouse_slot[# 0, 1] -= 1;
	if (global.mouse_slot[# 0, 1] <= 0)
	{
		global.mouse_slot[# 0, 0] = item.none;
		global.mouse_slot[# 0, 1] = 0;
		exit;
	}
}

if (mouse_iid == 0 && iidWeave != 0) //If mouse slot is empty and rune is in weave slot
 {
	//Put 1 rune into mouse slot
	global.mouse_slot[# 0, 0] = iidWeave;
	global.mouse_slot[# 0, 1] = amountWeave;
	
	global.weave_slot[# var_slotWeave, 1] -= 1;
	if (global.weave_slot[# var_slotWeave, 1] <= 0)
	{
		global.weave_slot[# var_slotWeave, 0] = item.none;
		global.weave_slot[# var_slotWeave, 1] = 0;
		exit;
	}
	
}

if (iidWeave != mouse_iid) //If the two slots don't match
{
	//Switch the slots
	global.weave_slot[# var_slotWeave, 0] = mouse_iid;
	global.weave_slot[# var_slotWeave, 1] = mouse_amount;
	global.mouse_slot[# 0, 0] = iidWeave;
	global.mouse_slot[# 0, 1] = amountWeave;
}