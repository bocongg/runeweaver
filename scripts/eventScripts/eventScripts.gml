randomise();


//Obtain 2-3 Level 1 runes of the same element.

function eventAOption1(){
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
	}
}

//50% chance to obtain 3 Level 1 runes of the same element, and 50% chance to get nothing.

function eventAOption2(){
	var _chance = choose("get","noget");
	var _rune_type = choose("fire","ice", "wind");
	
	if _chance == "noget" {
		with(objAddRunes)
		{
			instance_destroy();
		}

		var _rune_list = ds_list_create();
		
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
	}
}

//Lose 30% of current HP and obtain 3 Level 1 runes.

function eventBOption1(){
	
}

//Lose 70% of current HP and obtain 2 Level 2 runes.

function eventBOption2(){
	
}

//Offer a Level 2 special rune and in return obtain 4 random level 1 runes.

function eventCOption1(){
	
}

//Offer a Level 3 special rune and in return obtain 4 random level 2 runes.

function eventCOption2(){
	
}