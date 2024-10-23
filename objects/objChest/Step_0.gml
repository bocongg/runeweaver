// If mouse is over this instance, adjusting for the GUI layer...
if (!chestOpened) {
	if (distance_to_object(objPlayer) < 20 && keyboard_check_pressed(ord("E"))){
		sprite_index = sprChestOpened;
		chestOpened = true;
		if (chestOpened){
			if (!obtainedRunes){
				alarm_set(0,10);
			}
		}
	}
}
