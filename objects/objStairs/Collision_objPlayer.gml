//global.stage += 1;

audio_stop_sound(sndCombatBGM);
audio_stop_sound(sndRestBGM);
audio_stop_sound(sndRestFountain);
audio_stop_sound(sndEventBGM);
audio_sound_gain(sndStartBGM, 1, 1000);


//room_goto(rmMapOverview);

if !instance_exists(objTransition) {
		var _inst = instance_create_layer(x, y, "Instances", objTransition);
		_inst.targetRoom = rmMapOverview;
}

////For Transition
//if !instance_exists(objTransition) {
//		var _inst = instance_create_layer(x, y, "Instances", objTransition);
//		if room == Room1 _inst.targetRoom = rmMapOverview else _inst.targetRoom = rmStartScreen;
//}
