audio_sound_gain(sndStartBGM, 0, 1000);

audio_play_sound(sndFinalBossInitialBGM, 0, 1, 1.0, undefined, 1.0);

if (!instance_exists(objPauseButton)){
	instance_create_layer(1824, 96, "Buttons", objPauseButton)	
}