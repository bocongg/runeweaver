////fade in
alpha = 0;
alphaSpd = 1/75;
alphaMax = 1;

depth = -10000;

instance_deactivate_object(objPlayer);
audio_stop_all();
audio_play_sound(sndFinalBossCutscene, 0, 0, 1.0);
audio_play_sound(sndFinalBossGrowl, 0, 1.0, 1.0);