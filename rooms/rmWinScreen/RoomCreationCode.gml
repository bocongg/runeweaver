global.moveSpd = 8;

if (!audio_is_playing(sndGameWin)){
	audio_stop_all();
	audio_play_sound(sndGameWin, 0, 1);
}

instance_destroy(objEquipBasic);
instance_destroy(objEquipSpecial);
instance_destroy(objHUD);

if (!instance_exists(objPauseButton)){
	instance_create_layer(1824, 96, "Buttons", objPauseButton)	
}