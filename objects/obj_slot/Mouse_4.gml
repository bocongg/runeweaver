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

if (mouse_iid != 0 && iid == 0)
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

//else if (iid == mouse_iid) //If both slots are the same
// {
//	//Take all mouse items and put them in inventory
//	while (global.inventory[# var_slot, 1] < 21)
//	 {
//		global.inventory[# var_slot, 1] += 1;
//		global.mouse_slot[# 0, 1] -= 1;
//		if (global.mouse_slot[# 0, 1] <= 0)
//		 {
//			global.mouse_slot[# 0, 0] = item.none;
//			global.mouse_slot[# 0, 1] = 0;
//			exit;
//			}
//		}
//	}

//with(objEquipBasic){
//	var iid = global.mouse_slot[# var_slot, 0];
//	var amount = global.mouse_slot[# var_slot, 1];
	
	
//}

//if (instance_number(objFireRune1) > 1) {
//	instance_destroy(objFireRune1);
//}

//instance_create_layer(x, y, "InventoryScreen", objFireRune1)