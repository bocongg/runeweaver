if (!instance_exists(objPauseButton)){
	instance_create_layer(1824, 96, "Buttons", objPauseButton)	
}

if (audio_is_playing(sndLore1)) {audio_stop_sound(sndLore1);}
audio_play_sound(sndLore2, 0, 1, 0.5);