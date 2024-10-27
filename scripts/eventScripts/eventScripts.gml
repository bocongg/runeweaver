//Obtain 2-3 Level 1 runes of the same element.

function eventAOption1(){
	randomise();
	var _quantity = choose(2,3);
	var _rune_type = choose("fire","ice", "wind");
	
	if _quantity == 2 {
		with(objAddRunes)
		{
			instance_destroy();
		}

		var _rune_list = ds_list_create();
		
		if (_rune_type == "fire"){
			getFireRuneL1(_rune_list);
			getFireRuneL1(_rune_list);
		} else if (_rune_type == "ice"){
			getIceRuneL1(_rune_list);
			getIceRuneL1(_rune_list);
		} else if (_rune_type == "wind"){
			getWindRuneL1(_rune_list);
			getWindRuneL1(_rune_list);
		} 
		
		var _size = ds_list_size(_rune_list);

		var _x = -200;

		for (var _index = 0; _index < min(_size, 2); _index += 1)
		{
			_upgrade_data = ds_list_find_value(_rune_list, _index);
			var _upgrade = instance_create_layer(1920 / 2 + _x, 1080/2, "UpgradeScreen", objAddRunes);
			_upgrade.roll_life = 0.5 + 0.25 * _index;
			_upgrade.upgrade_data = _upgrade_data;
			_x += 400;
		}
		
		instance_create_layer(960, 864, "UpgradeScreen", objAddToInv);
	};
	
	if _quantity == 3 {
		with(objAddRunes)
		{
			instance_destroy();
		}

		var _rune_list = ds_list_create();

		if (_rune_type == "fire"){
			getFireRuneL1(_rune_list);
			getFireRuneL1(_rune_list);
			getFireRuneL1(_rune_list);
		} else if (_rune_type == "ice"){
			getIceRuneL1(_rune_list);
			getIceRuneL1(_rune_list);
			getIceRuneL1(_rune_list);
		} else if (_rune_type == "wind"){
			getWindRuneL1(_rune_list);
			getWindRuneL1(_rune_list);
			getWindRuneL1(_rune_list);
		} 

		var _size = ds_list_size(_rune_list);

		var _x = -400;

		for (var _index = 0; _index < min(_size, 3); _index += 1)
		{
			_upgrade_data = ds_list_find_value(_rune_list, _index);
			var _upgrade = instance_create_layer(1920 / 2 + _x, 1080/2, "UpgradeScreen", objAddRunes);
			_upgrade.roll_life = 0.5 + 0.25 * _index;
			_upgrade.upgrade_data = _upgrade_data;
			_x += 400;
		}
		
		instance_create_layer(960, 864, "UpgradeScreen", objAddToInv);
	}
}

//50% chance to obtain 3 Level 1 runes of the same element, and 50% chance to get nothing.

function eventAOption2(){
	randomise();
	var _chance = choose("get","noget");
	var _rune_type = choose("fire","ice", "wind");
	
	if _chance == "noget" {
		instance_create_layer(1920/2, 1080/2, "UpgradeScreen", objNoRuneScreen);
		with(objEventOutcomeScreen) instance_destroy();
		instance_create_layer(1917, 831, "Instances", objStairs);
	};
	
	if _chance == "get" {
		with(objAddRunes)
		{
			instance_destroy();
		}

		var _rune_list = ds_list_create();

		if (_rune_type == "fire"){
			getFireRuneL1(_rune_list);
			getFireRuneL1(_rune_list);
			getFireRuneL1(_rune_list);
		} else if (_rune_type == "ice"){
			getIceRuneL1(_rune_list);
			getIceRuneL1(_rune_list);
			getIceRuneL1(_rune_list);
		} else if (_rune_type == "wind"){
			getWindRuneL1(_rune_list);
			getWindRuneL1(_rune_list);
			getWindRuneL1(_rune_list);
		} 

		var _size = ds_list_size(_rune_list);

		var _x = -400;

		for (var _index = 0; _index < min(_size, 3); _index += 1)
		{
			_upgrade_data = ds_list_find_value(_rune_list, _index);
			var _upgrade = instance_create_layer(1920 / 2 + _x, 1080/2, "UpgradeScreen", objAddRunes);
			_upgrade.roll_life = 0.5 + 0.25 * _index;
			_upgrade.upgrade_data = _upgrade_data;
			_x += 400;
		}
		
		instance_create_layer(960, 864, "UpgradeScreen", objAddToInv);
	}
}

//Lose 30% of current HP and obtain 3 Level 1 runes.

function eventBOption1(){
	randomise();
	var _rune_type = choose("fire","ice", "wind");
	
	with(objAddRunes)
	{
		instance_destroy();
	}

	var _rune_list = ds_list_create();
		
	if (_rune_type == "fire"){
		getFireRuneL1(_rune_list);
		getFireRuneL1(_rune_list);
		getFireRuneL1(_rune_list);
	} else if (_rune_type == "ice"){
		getIceRuneL1(_rune_list);
		getIceRuneL1(_rune_list);
		getIceRuneL1(_rune_list);
	} else if (_rune_type == "wind"){
		getWindRuneL1(_rune_list);
		getWindRuneL1(_rune_list);
		getWindRuneL1(_rune_list);
	} 
		
	var _size = ds_list_size(_rune_list);

	var _x = -400;

	for (var _index = 0; _index < min(_size, 3); _index += 1)
	{
		_upgrade_data = ds_list_find_value(_rune_list, _index);
		var _upgrade = instance_create_layer(1920 / 2 + _x, 1080/2, "UpgradeScreen", objAddRunes);
		_upgrade.roll_life = 0.5 + 0.25 * _index;
		_upgrade.upgrade_data = _upgrade_data;
		_x += 400;
	}
		
	instance_create_layer(960, 864, "UpgradeScreen", objAddToInv);
}

//Lose 70% of current HP and obtain 2 Level 2 runes.

function eventBOption2(){
	randomise();
	var _rune_type = choose("fire","ice", "wind");
	
	with(objAddRunes)
	{
		instance_destroy();
	}

	var _rune_list = ds_list_create();
		
	if (_rune_type == "fire"){
		getFireRuneL2(_rune_list);
		getFireRuneL2(_rune_list);
	} else if (_rune_type == "ice"){
		getIceRuneL2(_rune_list);
		getIceRuneL2(_rune_list);
	} else if (_rune_type == "wind"){
		getWindRuneL2(_rune_list);
		getWindRuneL2(_rune_list);
	} 
		
	var _size = ds_list_size(_rune_list);

	var _x = -200;

	for (var _index = 0; _index < min(_size, 2); _index += 1)
	{
		_upgrade_data = ds_list_find_value(_rune_list, _index);
		var _upgrade = instance_create_layer(1920 / 2 + _x, 1080/2, "UpgradeScreen", objAddRunes);
		_upgrade.roll_life = 0.5 + 0.25 * _index;
		_upgrade.upgrade_data = _upgrade_data;
		_x += 400;
	}
		
	instance_create_layer(960, 864, "UpgradeScreen", objAddToInv);
}
	
//Nothing happens.
function eventBOption3(){
	instance_create_layer(1920/2, 1080/2, "UpgradeScreen", objOKByeScreen);
	with(objEventOutcomeScreen) instance_destroy();
	instance_create_layer(1917, 831, "Instances", objStairs);
}

//Offer a Level 2 special rune and in return obtain 4 random level 1 runes.

function eventCOption1(){
	with(objAddRunes)
	{
		instance_destroy();
	}

	var _rune_list = ds_list_create();
	
	for (var i = 0; i < 4; i += 1)
	{	
		randomise();
		var _rune_type = choose("fire","ice", "wind");
		
		if (_rune_type == "fire"){
			getFireRuneL1(_rune_list);
		} else if (_rune_type == "ice"){
			getIceRuneL1(_rune_list);
		} else if (_rune_type == "wind"){
			getWindRuneL1(_rune_list);
		} 
	}
		
	var _size = ds_list_size(_rune_list);

	var _x = -600;

	for (var _index = 0; _index < min(_size, 4); _index += 1)
	{
		_upgrade_data = ds_list_find_value(_rune_list, _index);
		var _upgrade = instance_create_layer(1920 / 2 + _x, 1080/2, "UpgradeScreen", objAddRunes);
		_upgrade.roll_life = 0.5 + 0.25 * _index;
		_upgrade.upgrade_data = _upgrade_data;
		_x += 400;
	}
		
	instance_create_layer(960, 864, "UpgradeScreen", objAddToInv);
}

//Offer a Level 3 special rune and in return obtain 4 random level 2 runes.

function eventCOption2(){
	with(objAddRunes)
	{
		instance_destroy();
	}

	var _rune_list = ds_list_create();
	
	for (var i = 0; i < 4; i += 1)
	{	
		randomise();
		var _rune_type = choose("fire","ice", "wind");
		
		if (_rune_type == "fire"){
			getFireRuneL2(_rune_list);
		} else if (_rune_type == "ice"){
			getIceRuneL2(_rune_list);
		} else if (_rune_type == "wind"){
			getWindRuneL2(_rune_list);
		} 
	}
		
	var _size = ds_list_size(_rune_list);

	var _x = -600;

	for (var _index = 0; _index < min(_size, 4); _index += 1)
	{
		_upgrade_data = ds_list_find_value(_rune_list, _index);
		var _upgrade = instance_create_layer(1920 / 2 + _x, 1080/2, "UpgradeScreen", objAddRunes);
		_upgrade.roll_life = 0.5 + 0.25 * _index;
		_upgrade.upgrade_data = _upgrade_data;
		_x += 400;
	}
		
	instance_create_layer(960, 864, "UpgradeScreen", objAddToInv);
}