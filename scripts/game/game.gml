//damage 
//damage create event
function get_damaged_create(_hp = 10, _iframes = false) {
	//health points
	maxHp = _hp;
	hp = _hp;
		
	//get the iframes
	if _iframes == true {
		iframeTimer = 0;
		iframeNumber = 90;
	}
	//create the damage list
	if _iframes == false {
		damageList = ds_list_create();
	}
}
	
//damage clean up event
function get_damage_cleanup() {
	//DO NOT NEED if we're using iframes
		
	//delete our damage list data structure to free memory
	ds_list_destroy(damageList);
}

//damage step function
function get_damaged (_damageObj, _iframes = false, _isEnemy = true) {
	//special exit for iframe timer
	if _iframes == true && iframeTimer > 0 {
		iframeTimer--;
		
		if iframeTimer mod 5 == 0 {
			if image_alpha == 1 {image_alpha = 0;} else { image_alpha = 1;}
		}
		
		//clamp hp
		hp = clamp(hp, 0, maxHp);

		if (_isEnemy) {
			hp = clamp(hp, 0, maxHp);
		} else {
			global.playerHp = clamp(global.playerHp, 0, global.playerMaxHp);
		}
	
		exit;
	}
	//make sure the iframe blinking stops
	if _iframes == true {
		image_alpha = 1;
	}
	// receive damage
	if place_meeting(x, y, _damageObj) {
		//getting a list of the damage instances
		var _instList = ds_list_create();
		instance_place_list(x, y, _damageObj, _instList, false);
	
			//get the size of our list
			var _listSize = ds_list_size(_instList);
		
			//loop through the list
			var _hitConfirm = false; 
			for (var i = 0; i < _listSize; i++) {
				//get a damage object instance from the list
				var _inst = ds_list_find_value(_instList, i);
				
				//check if this instance is already in the damage list
				if _iframes == true || ds_list_find_index(damageList, _inst) == -1 {
					//add the new damage instance to the damage list
					if _iframes == false {
						ds_list_add(damageList, _inst);
					}
					
					if (_isEnemy) {
						//take damage from specific instance
						hp -= _inst.damage;
						_hitConfirm = true;
						//tell the damage instance to destroy itself 
						_inst.destroy = true;
					} else {
						global.playerHp -= _inst.damage;
						_hitConfirm = true;
						_inst.destroy = true;
					}
				}
			}
			
			//set iframes if we were hit
			if _iframes == true && _hitConfirm == true {
				iframeTimer = iframeNumber;
			}
	
		//free memory by destroying the ds list
		ds_list_destroy(_instList);
	}
	
	//clear the damage list of objects that don't exist anymore or arent touching anymore
	if _iframes == false {
		// without this code, objects will continously take damage
		var _damageListSize = ds_list_size(damageList);
		for (var i = 0; i < _damageListSize; i++) {
			
			//if not touching the damage instance anymore, remove it form the list AND set the loop back 1 position
			var _inst = ds_list_find_value(damageList, i);
			if !instance_exists(_inst) || !place_meeting(x, y, _inst) {
				ds_list_delete(damageList, i);
				i--;
				_damageListSize--;
			}
		}
	}
	
	//clamp hp
	if (_isEnemy) {
		hp = clamp(hp, 0, maxHp);
	} else {
		global.playerHp = clamp(global.playerHp, 0, global.playerMaxHp);
	}
}
	
//basicAttackList	
	//constructor template for basicAttackList	
	function create_basic_attack(_wand = sprWand, _bulletObj = objBasicShoot, _cooldown = 1, _bulletNum = 1, _spread = 0) constructor {
		sprite = _wand;
		bulletObj = _bulletObj;		//types of bullet
		cooldown = _cooldown;		//higher number means longer cooldown
		bulletNum = _bulletNum;		//no. of bullet shooting
		spread = _spread;
	}
	
	//the different basic attack
	global.attackList = {
		basicAttack : new create_basic_attack(
			sprWand,
			objBasicBullet,
			15,
			1, 
			0
		),
		
		fireBasicAttack : new create_basic_attack(
			sprWand,
			objBasicFire,
			15,
			1, 
			0
		),
		
		iceBasicAttack : new create_basic_attack(
			sprWand,
			objBasicIce,
			30, 
			1,
			0
		),
		
		windBasicAttack : new create_basic_attack(
			sprWand,
			objBasicWind,
			30,
			3, 
			0
		),
		
		fireSpecialAttack : new create_basic_attack(
			sprWand,
			objSpecialFire,
			60,
			1, 
			0
		),
		
		iceSpecialAttack : new create_basic_attack(
			sprWand,
			objSpecialIce,
			30, 
			1,
			0
		),
		
		windSpecialAttack : new create_basic_attack(
			sprWand,
			objSpecialWind,
			30,
			3, 
			30
		)
	}