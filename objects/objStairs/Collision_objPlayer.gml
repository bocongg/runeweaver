//global.stage += 1;

audio_stop_sound(sndMusicGame);
audio_stop_sound(sndRmRestBGM);
audio_stop_sound(sndRmRestFountain);
audio_sound_gain(sndMusicMenu, 1, 1000);


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
