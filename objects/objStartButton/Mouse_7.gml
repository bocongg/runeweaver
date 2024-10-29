event_inherited();

//For Transition
if !instance_exists(objTransition) {
		var _inst = instance_create_layer(x, y, "Instances", objTransition);
		if room == rmStartScreen _inst.targetRoom = rmLore1 else _inst.targetRoom = rmStartScreen;
	}