if (!instance_exists(objPauseButton)){
	instance_create_layer(1824, 96, "Buttons", objPauseButton)	
}

if (audio_is_playing(sndLore2)) {audio_stop_sound(sndLore2);}

if (!audio_is_playing(sndMenuBGM)){audio_play_sound(sndMenuBGM, 0, 1, 1.0);}