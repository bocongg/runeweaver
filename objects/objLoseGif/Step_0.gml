if (!audio_is_playing(sndGameLose)){
	audio_play_sound(sndGameLose, 0, 0, 0.7);
}

if (image_speed > 0)
{
    if (image_index >= image_number - 1){
		if (!instance_exists(objLoseScreen)){
			instance_create_layer(1920/2, 1080/2, "PauseScreen", objLoseScreen);
		}
	}	
}