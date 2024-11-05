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
	audio_play_sound(sndMenuBGM, 0, 1, 1.0);
}