if (!audio_is_playing(sndGameLose)){
	audio_play_sound(sndGameLose, 0, 0, 1.0, undefined, 1.0);
}

if (image_speed > 0)
{
    if (image_index >= image_number - 1){
		instance_create_layer(1920/2, 1080/2, "PauseScreen", objLoseScreen);
	}	
}