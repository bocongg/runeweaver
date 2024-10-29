event_inherited();


if (room == rmLore1) {
	//For Transition
	if !instance_exists(objTransition) {
		var _inst = instance_create_layer(x, y, "Instances", objTransition);
		_inst.targetRoom = rmLore2;
	}
} else if (room == rmLore2) {
	//For Transition
	if !instance_exists(objTransition) {
		var _inst = instance_create_layer(x, y, "Instances", objTransition);
		_inst.targetRoom = rmMapOverview;
	}
	if (!audio_is_playing(sndStartBGM)) {
		audio_play_sound(sndStartBGM, 0, 1, 1.0, undefined, 1.0);
	}
}