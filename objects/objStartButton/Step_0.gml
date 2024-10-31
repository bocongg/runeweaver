if (keyboard_check_pressed(ord("S"))){
	if !instance_exists(objTransition) {
		var _inst = instance_create_layer(x, y, "Instances", objTransition);
		_inst.targetRoom = rmMapOverview;
	}
}