////fade in
alpha = 0;
alphaSpd = 1/75;
alphaMax = 1;

depth = -10000;

//if (!audio_is_playing(sndGameWin)){
//	audio_sound_gain(sndMusicGame, 0, 1000);
//	audio_play_sound(sndGameWin, 0, 1);
//}


audio_stop_all();
audio_play_sound(sndFinalBossBGM, 0, 0, 1.0, undefined, 1.0);
audio_play_sound(sndFinalBossGrowl, 0, 1.0, 1.0, undefined, 1.0);