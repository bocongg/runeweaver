with (obj_slot)
{
	//Get values
	var iid = global.inventory[# var_slot, 0];
	var amount = global.inventory[# var_slot, 1];

	//Draw stuff
	if (iid != item.none){
		if (position_meeting(mouse_x, mouse_y, id)) {
			runeHoverTooltip(iid);
		}
	}
}