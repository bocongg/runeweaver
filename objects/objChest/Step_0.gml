// If mouse is over this instance, adjusting for the GUI layer...
if (!chestOpened) {
	if (distance_to_object(objPlayer) < 20 && keyboard_check_pressed(ord("E"))){
		sprite_index = sprChestOpened;
		
		audio_play_sound(sndChestOpen, 0, 0, 1.0, undefined, 1.0);
		
		chestOpened = true;
		if (chestOpened){
			if (!obtainedRunes){
				alarm_set(0,10);
			}
		}
	}
}
