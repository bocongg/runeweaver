global.hello = "";
//damage 
	//damage create event
	function get_damaged_create(_hp = 10, _iframes = false) {
		//health points
		maxHp = _hp;
		hp = _hp;
		
		dotTimer = 0;
		dotInterval = 90;
		
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
	function get_damaged (_damageObj, _iframes = false) {
		//special exit for iframe timer
		if _iframes == true && iframeTimer > 0 {
			iframeTimer--;
		
			if iframeTimer mod 5 == 0 {
				if image_alpha == 1 {image_alpha = 0;} else { image_alpha = 1;}
			}
		
			//clamp hp
			hp = clamp(hp, 0, maxHp);
	
			exit;
		}
	
		//make sure the iframe blinking stops
		if _iframes == true {image_alpha = 1;}
	
		
		
		// receive damage
		if place_meeting(x, y, _damageObj) {
		
			//getting a list of the damage instances
			var _instList = ds_list_create();
			instance_place_list(x, y, _damageObj, _instList, false); //store all the bullets into a list
	
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
					
					//take damage from specific instance
					/*if global.hello == "test1" {
						show_debug_message("BasicFire");
						for (i = 5; i <= 0; i--) {
							hp -= _inst.damage;
						}
					} else {
						show_debug_message("otherPower")
						hp -= _inst.damage;
					}*/
					hp -= _inst.damage;
					_hitConfirm = true;
					//tell the damage instance to destroy itself 
					_inst.destroy = true;
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
	hp = clamp(hp, 0, maxHp);
}
	
	
//AttackList	
	//constructor template for AttackList	
	function create_attack(_wand = sprWand, _bulletObj = objBasicShoot, _cooldown = 1, _bulletNum = 1, _spread = 0, _specialAttack = false) constructor {
		sprite = _wand;
		bulletObj = _bulletObj;		//types of bullet
		cooldown = _cooldown;		//higher number means longer cooldown
		bulletNum = _bulletNum;		//no. of bullet shooting
		spread = _spread;
	}
	
	//the different basic attack
	global.attackList = {
		basicAttack : new create_attack(
			sprWand,
			objBasicBullet,
			15,
			1, 
			0,
			false
		),
		
		fireBasicAttack : new create_attack(
			sprWand,
			objBasicFire,
			15,
			1, 
			0,
			false
		),
		
		iceBasicAttack : new create_attack(
			sprWand,
			objBasicIce,
			30, 
			1,
			0,
			false
		),
		
		windBasicAttack : new create_attack(
			sprWand,
			objBasicWind,
			30,
			1, 
			0,
			false
		),
		
		fireSpecialAttack : new create_attack(
			sprWand,
			objSpecialFire,
			60,
			1, 
			0,
			true
		),
		
		iceSpecialAttack : new create_attack(
			sprWand,
			objSpecialIce,
			30, 
			1,
			0,
			true
		),
		
		windSpecialAttack : new create_attack(
			sprWand,
			objSpecialWind,
			30,
			3, 
			20,
			true
		)
	}