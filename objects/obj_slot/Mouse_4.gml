/// @description Move single rune

var iid = global.inventory[# var_slot, 0];
var amount = global.inventory[# var_slot, 1];
var mouse_iid = global.mouse_slot[# 0, 0];
var mouse_amount = global.mouse_slot[# 0, 1];

if (mouse_iid == 0) //If mouse slot is empty
 {
	//Put 1 rune into mouse slot
	global.mouse_slot[# 0, 0] = iid;
	global.mouse_slot[# 0, 1] = 1;
	
	global.inventory[# var_slot, 1] -= 1;
	if (global.inventory[# var_slot, 1] <= 0)
	{
		global.inventory[# var_slot, 0] = item.none;
		global.inventory[# var_slot, 1] = 0;
	}
	
}

if (mouse_iid != 0 && iid == 0) // If inventory is empty and mouse slot not empty, transfer rune from mouse to inventory
{
	global.inventory[# var_slot, 0] = mouse_iid;
	global.inventory[# var_slot, 1] += 1;
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
	global.inventory[# var_slot, 1] += 1;
	global.mouse_slot[# 0, 1] -= 1;
	if (global.mouse_slot[# 0, 1] <= 0)
	{
		global.mouse_slot[# 0, 0] = item.none;
		global.mouse_slot[# 0, 1] = 0;
		exit;
	}
}