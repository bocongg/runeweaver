audio_stop_sound(sndRestBGM);
audio_stop_sound(sndRestFountain);
audio_stop_sound(sndEventBGM);
audio_stop_sound(sndShopBGM);
audio_stop_sound(sndTreasureBGM);

audio_sound_gain(sndMenuBGM, 1, 1000);


if !instance_exists(objTransition) {
		var _inst = instance_create_layer(x, y, "Instances", objTransition);
		_inst.targetRoom = rmMapOverview;
}