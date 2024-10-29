if (!audio_is_playing(sndGameWin)){
	audio_stop_all();
	audio_play_sound(sndGameWin, 0, 1);
}

instance_destroy(objEquipBasic);
instance_destroy(objEquipSpecial);

if (!instance_exists(objPauseButton)){
	instance_create_layer(1824, 96, "Buttons", objPauseButton)	
}