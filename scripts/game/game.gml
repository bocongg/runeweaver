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
						with instance_create_layer(x, y, "Instances", objDOTDamageText) {
							damageText = _inst.damage;
							damageColour = c_red;
						}
						global.playerHp -= _inst.damage;
						_hitConfirm = true;
						_inst.destroy = true;
						audio_play_sound(sndPlayerTakeDmg, 0, 0, 1.0, undefined, 1.0);
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
	
//attackList	
	//constructor template for attackList	
	function create_attack(_dmg = 1, _wand = sprWand, _bulletObj = objBasicBullet, _cooldown = 1, _bulletNum = 1, _spread = 0) constructor {
		dmg = _dmg;
		sprite = _wand;
		bulletObj = _bulletObj;		//types of bullet
		cooldown = _cooldown;		//higher number means longer cooldown
		bulletNum = _bulletNum;		//no. of bullet shooting
		spread = _spread;
	}
	
	//the different basic attack
	global.attackList = {
		sparkLevel1Attack : new create_attack(
			1, 
			sprWand,
			objBasicBullet,
			15,
			1, 
			0
		),
		sparkLevel3Attack : new create_attack(
			6, 
			sprWand,
			objBasicBullet,
			15,
			1, 
			0
		),
		fireBoltLevel1Attack : new create_attack(
			2,
			sprWand,
			objBasicFire,
			30,
			1, 
			0
		),
		fireBoltLevel2Attack : new create_attack(
			4,
			sprWand,
			objBasicFire,
			30,
			1, 
			0
		),
		fireBoltLevel3Attack : new create_attack(
			6,
			sprWand,
			objBasicFire,
			30,
			1, 
			0
		),
		iceShardLevel1Attack : new create_attack(
			2,
			sprWand,
			objBasicIce,
			30, 
			1,
			0
		),
		iceShardLevel2Attack : new create_attack(
			4,
			sprWand,
			objBasicIce,
			30, 
			1,
			0
		),
		iceShardLevel3Attack : new create_attack(
			6,
			sprWand,
			objBasicIce,
			30, 
			1,
			0
		),
		airCutterLevel1Attack : new create_attack(
			1,
			sprWand,
			objBasicWind,
			15,
			1, 
			0
		),
		airCutterLevel2Attack : new create_attack(
			2,
			sprWand,
			objBasicWind,
			15,
			1, 
			0
		),
		airCutterLevel3Attack : new create_attack(
			3,
			sprWand,
			objBasicWind,
			15,
			1, 
			0
		),
		
		//special attack
		fireballLevel1Attack : new create_attack(
			6,
			sprWand,
			objSpecialFire,
			180,
			1, 
			0
		),
		fireballLevel2Attack : new create_attack(
			12,
			sprWand,
			objSpecialFire,
			180,
			1, 
			0
		),
		fireballLevel3Attack : new create_attack(
			18,
			sprWand,
			objSpecialFire,
			180,
			1, 
			0
		),
		flashFreezeLevel1Attack : new create_attack(
			5,
			sprWand,
			objSpecialFlashFreeze,
			180, 
			1,
			0
		),	
		flashFreezeLevel2Attack : new create_attack(
			10,
			sprWand,
			objSpecialFlashFreeze,
			180, 
			1,
			0
		),	
		flashFreezeLevel3Attack : new create_attack(
			15,
			sprWand,
			objSpecialFlashFreeze,
			180, 
			1,
			0
		),	
		galeforceLevel1Attack : new create_attack(
			4,
			sprWand,
			objSpecialWind,
			120,
			3, 
			30
		),
		galeforceLevel2Attack : new create_attack(
			8,
			sprWand,
			objSpecialWind,
			120,
			3, 
			30
		),
		galeforceLevel3Attack : new create_attack(
			12,
			sprWand,
			objSpecialWind,
			120,
			3, 
			30
		),
		infernoLevel2Attack : new create_attack(
			10,
			sprWand,
			objSpecialInferno,
			180,
			1, 
			0
		),
		infernoLevel3Attack : new create_attack(
			15,
			sprWand,
			objSpecialInferno,
			180,
			1, 
			0
		),
		blizzardLevel2Attack : new create_attack(
			1,
			sprWand,
			objSpecialBlizzard,
			360,
			1, 
			0
		),
		blizzardLevel3Attack : new create_attack(
			2,
			sprWand,
			objSpecialBlizzard,
			360,
			1, 
			0
		),
		frostfireBlastLevel2Attack : new create_attack(
			15,
			sprWand,
			objSpecialFrostFire,
			240,
			1, 
			0
		),
		frostfireBlastLevel3Attack : new create_attack(
			30,
			sprWand,
			objSpecialFrostFire,
			240,
			1, 
			0
		),
		prismSpecialAttack : new create_attack(
			25,
			sprWand,
			objSpecialPrism,
			480,
			1, 
			0
		)
	}
//constructor template for attackList	
	function create_DOTattack(_dot = 1, _spdReduct = 1, _dmgInterval = 1, _dmgLast = 5) constructor {
		dot = _dot;					//damage over time
		spdReduct = _spdReduct;		//speed reduction - freeze is 1, 0.5 means slowdown by 50%
		dmgInterval = _dmgInterval;	//damage interval
		dmgLast = _dmgLast;			//how long does the damage last 
	}

global.dotAttackList = {
		fireBoltLevel1Attack : new create_DOTattack(
			0.5,	//dot
			0,		//speed reduction
			1,		//dmg interval
			3		//dmg last
		),
		fireBoltLevel2Attack : new create_DOTattack(
			0.6,	//dot
			0,		//speed reduction
			1,		//dmg interval
			4		//dmg last
		),
		fireBoltLevel3Attack : new create_DOTattack(
			0.7,	//dot
			0,		//speed reduction
			1,		//dmg interval
			5		//dmg last
		),
		iceShardLevel1Attack : new create_DOTattack(
			0.2,	//dot
			0.7,	//speed reduction
			1,		//dmg interval
			3		//dmg last
		),
		iceShardLevel2Attack : new create_DOTattack(
			0.3,		//dot
			0.7,	//speed reduction
			1,		//dmg interval
			4		//dmg last
		),
		iceShardLevel3Attack : new create_DOTattack(
			0.4,	//dot
			0.7,	//speed reduction
			1,		//dmg interval
			5		//dmg last
		),
		
		//special attack
		fireballLevel1Attack : new create_DOTattack(
			0.8,	//dot
			0,		//speed reduction
			1,		//dmg interval
			5		//dmg last
		),
		fireballLevel2Attack : new create_DOTattack(
			0.9,	//dot
			0,		//speed reduction
			1,		//dmg interval
			5		//dmg last
		),
		fireballLevel3Attack : new create_DOTattack(
			1,	//dot
			0,		//speed reduction
			1,	//dmg interval
			5		//dmg last
		),
		flashFreezeLevel1Attack : new create_DOTattack(
			0.5,	//dot
			1,		//speed reduction
			1,		//dmg interval
			5		//dmg last
		),	
		flashFreezeLevel2Attack : new create_DOTattack(
			0.6,	//dot
			1,		//speed reduction
			1,		//dmg interval
			5		//dmg last
		),	
		flashFreezeLevel3Attack : new create_DOTattack(
			0.7,	//dot
			1,		//speed reduction
			1,		//dmg interval
			5		//dmg last
		),	
		infernoLevel2Attack : new create_DOTattack(
			2,		//dot
			0,		//speed reduction
			0.5,	//dmg interval
			5		//dmg last
		),
		infernoLevel3Attack : new create_DOTattack(
			3,		//dot
			0,		//speed reduction
			0.5,	//dmg interval
			5		//dmg last
		),
		blizzardLevel2Attack : new create_DOTattack(
			0.8,	//dot
			1,		//speed reduction
			0.5,	//dmg interval
			5		//dmg last
		),
		blizzardLevel3Attack : new create_DOTattack(
			0.9,	//dot
			1,		//speed reduction
			0.5,	//dmg interval
			5		//dmg last
		),
		frostfireBlastLevel2Attack : new create_DOTattack(
			0.8,	//dot
			1,		//speed reduction
			0.5,	//dmg interval
			5	
		),
		frostfireBlastLevel3Attack : new create_DOTattack(
			0.9,	//dot
			1,		//speed reduction
			0.5,	//dmg interval
			5	
		),
		prismSpecialAttack : new create_DOTattack(
			1,		//dot
			1,		//speed reduction5
			0.5,	//dmg interval
			5	//dmg last
		)
	}