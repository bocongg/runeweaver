audio_sound_gain(sndStartBGM, 0, 1000);

if (!audio_is_playing(sndRestBGM)){
	audio_play_sound(sndRestBGM, 0, 1, 1.0, undefined, 1.0);
}