//fade in 
alpha += alphaSpd;
alpha = clamp(alpha, 0, 1);


if (image_speed > 0)
{
    if (image_index >= image_number - 1){
		instance_create_layer(room_width/2, room_height/2, "Instances", objFinalBossEnraged);
		instance_create_layer(room_width/2, room_height/2, "Instances", objLava);
		instance_create_layer(500, 1261, "Instances", objLavaSmall);
		instance_create_layer(2406, 436, "Instances", objLavaSmall);
		instance_destroy(objFinalBossCutscene);
		instance_activate_all();
		
		if (audio_is_playing(sndFinalBossCutscene)){
			audio_stop_all();
			audio_play_sound(sndFinalBossEnragedBGM, 0, 1, 0.7);
		}
	}
}