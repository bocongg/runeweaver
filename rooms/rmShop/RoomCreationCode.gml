audio_sound_gain(sndMenuBGM, 0, 1000);

if (!audio_is_playing(sndShopBGM)){
	audio_play_sound(sndShopBGM, 0, 1, 0.7);
}

if (!instance_exists(objPauseButton)){
	instance_create_layer(1824, 96, "Buttons", objPauseButton)	
}