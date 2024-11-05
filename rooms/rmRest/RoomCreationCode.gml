audio_sound_gain(sndMenuBGM, 0, 1000);

if (!audio_is_playing(sndRestBGM)){
	audio_play_sound(sndRestBGM, 0, 1, 0.7);
}

if (!audio_is_playing(sndRestFountain)){
	audio_play_sound(sndRestFountain, 0, 1, 0.5);
}

if (!instance_exists(objPauseButton)){
	instance_create_layer(1824, 96, "Buttons", objPauseButton)	
}