if (!instance_exists(objPauseButton)){
	instance_create_layer(1824, 96, "Buttons", objPauseButton)	
}

if (audio_is_playing(sndMenuBGM)) {audio_stop_sound(sndMenuBGM);}

audio_play_sound(sndLore1, 0, 1, 0.5);