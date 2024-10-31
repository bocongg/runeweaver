if (keyboard_check_pressed(ord("Z"))) {
	if !instance_exists(objTransition) {
		if (room == rmMapOverview) {
			var _inst = instance_create_layer(x, y, "Instances", objTransition);
			_inst.targetRoom = rmShop;	
		}
	}
}

if (keyboard_check_pressed(ord("X"))) {
	if !instance_exists(objTransition) {
		if (room == rmMapOverview) {
			var _inst = instance_create_layer(x, y, "Instances", objTransition);
			_inst.targetRoom = rmTreasure;	
		}
	}
}

if (keyboard_check_pressed(ord("V"))) {
	if !instance_exists(objTransition) {
		if (room == rmMapOverview) {
			var _inst = instance_create_layer(x, y, "Instances", objTransition);
			_inst.targetRoom = rmEventA;	
		}
	}
}

if (keyboard_check_pressed(ord("B"))) {
	if !instance_exists(objTransition) {
		if (room == rmMapOverview) {
			var _inst = instance_create_layer(x, y, "Instances", objTransition);
			_inst.targetRoom = rmEventB;	
		}
	}
}

if (keyboard_check_pressed(ord("C"))) {
	if !instance_exists(objTransition) {
		if (room == rmMapOverview) {
			var _inst = instance_create_layer(x, y, "Instances", objTransition);
			_inst.targetRoom = rmEventC;	
		}
	}
}

if (keyboard_check_pressed(ord("N"))) {
	if !instance_exists(objTransition) {
		if (room == rmMapOverview) {
			var _inst = instance_create_layer(x, y, "Instances", objTransition);
			_inst.targetRoom = rmRest;	
		}
	}
}

/////////////////////////////////////////////////////////////////////////////////////////////////
if (keyboard_check_pressed(ord("T"))) {
	if !instance_exists(objTransition) {
		if (room == rmMapOverview) {
			var _inst = instance_create_layer(x, y, "Instances", objTransition);
			_inst.targetRoom = rmTraining;	
		} else if (room == rmTraining) {
			game_restart();
		}
	}
}

if (room == rmTraining && instance_exists(objPlayer)) {
	if (keyboard_check_pressed(ord("1"))){
		randomise();
		var ref_point_x, ref_point_y, random_dir;
		ref_point_x = room_width / 2;
		ref_point_y = room_height / 2;
		random_dir = irandom(360);
		
		instance_create_layer(ref_point_x + lengthdir_x(200, random_dir), ref_point_y + lengthdir_y(200, random_dir), "Instances", objLionEnemy);
	}
	
	if (keyboard_check_pressed(ord("2"))){
		randomise();
		var ref_point_x, ref_point_y, random_dir;
		ref_point_x = room_width / 2;
		ref_point_y = room_height / 2;
		random_dir = irandom(360);
		
		instance_create_layer(ref_point_x + lengthdir_x(200, random_dir), ref_point_y + lengthdir_y(200, random_dir), "Instances", objLizardEnemy);
	}
	
	if (keyboard_check_pressed(ord("3"))){
		randomise();
		var ref_point_x, ref_point_y, random_dir;
		ref_point_x = room_width / 2;
		ref_point_y = room_height / 2;
		random_dir = irandom(360);
		
		instance_create_layer(ref_point_x + lengthdir_x(200, random_dir), ref_point_y + lengthdir_y(200, random_dir), "Instances", objSpiderEnemy);
	}
	
	if (keyboard_check_pressed(ord("4"))){
		randomise();
		var ref_point_x, ref_point_y, random_dir;
		ref_point_x = room_width / 2;
		ref_point_y = room_height / 2;
		random_dir = irandom(360);
		
		instance_create_layer(ref_point_x + lengthdir_x(200, random_dir), ref_point_y + lengthdir_y(200, random_dir), "Instances", objWolfEnemy);
	}
	
	if (keyboard_check_pressed(ord("5"))){
		randomise();
		var ref_point_x, ref_point_y, random_dir;
		ref_point_x = room_width / 2;
		ref_point_y = room_height / 2;
		random_dir = irandom(360);
		
		instance_create_layer(ref_point_x + lengthdir_x(200, random_dir), ref_point_y + lengthdir_y(200, random_dir), "Instances", objWormEnemy);
	}
	
	if (keyboard_check_pressed(ord("6"))){
		randomise();
		var ref_point_x, ref_point_y, random_dir;
		ref_point_x = room_width / 2;
		ref_point_y = room_height / 2;
		random_dir = irandom(360);
		
		instance_create_layer(ref_point_x + lengthdir_x(200, random_dir), ref_point_y + lengthdir_y(200, random_dir), "Instances", objFinalBossInitial);
	}
	
	if (keyboard_check_pressed(ord("7"))){
		randomise();
		var ref_point_x, ref_point_y, random_dir;
		ref_point_x = room_width / 2;
		ref_point_y = room_height / 2;
		random_dir = irandom(360);
		
		instance_create_layer(ref_point_x + lengthdir_x(200, random_dir), ref_point_y + lengthdir_y(200, random_dir), "Instances", objFinalBossEnraged);
	}
	
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	if (keyboard_check_pressed(ord("Q"))){
		global.playerHp = global.playerMaxHp;
	}
	
	if (keyboard_check_pressed(ord("R"))){
		global.energyDrink += 1;
		global.moveSpd += global.moveSpd + (global.energyDrink*0.25*global.moveSpd);
		instance_destroy(objPlayer);
		instance_create_layer(1920/2, 1080/2, "Instances", objPlayer);
	}
	
	if (keyboard_check_pressed(ord("F"))){
		global.energyDrink = 0;
		global.moveSpd = 8;
		instance_destroy(objPlayer);
		instance_create_layer(1920/2, 1080/2, "Instances", objPlayer);
	}
}