audio_sound_gain(sndMenuBGM, 0, 1000);

audio_play_sound(sndCombatBGM, 0, 1, 1.0);

if (!instance_exists(objPauseButton)){
	instance_create_layer(1824, 96, "Buttons", objPauseButton)	
}