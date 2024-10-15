/// @description Move single rune

var mouse_iid = global.mouse_slot[# 0, 0];
var mouse_amount = global.mouse_slot[# 0, 1];
var iidAttack = global.attack_slot[# var_slotAttack, 0];
var amountAttack = global.attack_slot[# var_slotAttack, 1];

if (mouse_iid != 0 && iidAttack == 0) //If rune is in mouse slot and attack slot is empty
{
	global.attack_slot[# var_slotAttack, 0] = mouse_iid;
	global.attack_slot[# var_slotAttack, 1] += 1;
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
	
	global.attack_slot[# var_slotAttack, 1] -= 1;
	if (global.attack_slot[# var_slotAttack, 1] <= 0)
	{
		global.attack_slot[# var_slotAttack, 0] = item.none;
		global.attack_slot[# var_slotAttack, 1] = 0;
		exit;
	}
	
}

if (iidAttack != mouse_iid) //If the two slots don't match
{
	//Switch the slots
	global.attack_slot[# var_slotAttack, 0] = mouse_iid;
	global.attack_slot[# var_slotAttack, 1] = mouse_amount;
	global.mouse_slot[# 0, 0] = iidAttack;
	global.mouse_slot[# 0, 1] = amountAttack;
}