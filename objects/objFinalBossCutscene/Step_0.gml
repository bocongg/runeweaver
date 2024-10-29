////get the shoot key input
//basicShootKey = global.basicShootKey;

//fade in 
alpha += alphaSpd;
alpha = clamp(alpha, 0, 1);


////restart
//if basicShootKey && alpha >= 1
//{
//	audio_stop_all();
//	global.stage = 0;
	
//	game_restart();
//}

if (image_speed > 0)
{
    if (image_index >= image_number - 1){
		instance_create_layer(1920/2, 1080/2, "Instances", objFinalBossEnraged);
		instance_destroy(objFinalBossCutscene);
	}
}