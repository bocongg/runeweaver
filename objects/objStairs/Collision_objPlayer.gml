global.stage += 1;

//room_goto(rmMapOverview)

//For Transition
if !instance_exists(objTransition) {
		var _inst = instance_create_layer(x, y, "Instances", objTransition);
		if room == Room1 _inst.targetRoom = rmMapOverview else _inst.targetRoom = rmStartScreen;
}