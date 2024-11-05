audio_sound_gain(sndMenuBGM, 0, 1000);
audio_resume_sound(sndCombatBGM)
audio_sound_gain(sndCombatBGM, 1, 1000);

if (!instance_exists(objPauseButton)){
	instance_create_layer(1824, 96, "Buttons", objPauseButton)	
}