// If mouse is over this instance, adjusting for the GUI layer...
if (!rockMined) {
	if (distance_to_object(objPlayer) < 20 && keyboard_check_pressed(ord("E"))){
		audio_play_sound(sndRockMining, 0, 0, 1.0, undefined, 1.0);
		
		rockMined = true;
		if (rockMined){
			if (!obtainedTreasure){
				alarm_set(0,10);
			}
		}
	}
}
