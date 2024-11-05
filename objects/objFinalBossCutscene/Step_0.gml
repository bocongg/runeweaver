//fade in 
alpha += alphaSpd;
alpha = clamp(alpha, 0, 1);


if (image_speed > 0)
{
    if (image_index >= image_number - 1){
		instance_create_layer(1920/2, 1080/2, "Instances", objFinalBossEnraged);
		instance_destroy(objFinalBossCutscene);
		instance_activate_object(objPlayer);
		
		if (audio_is_playing(sndFinalBossCutscene)){
			audio_stop_all();
			audio_play_sound(sndFinalBossEnragedBGM, 0, 1, 1.0, undefined, 0.7);
		}
	}
}