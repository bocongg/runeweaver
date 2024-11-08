//check if got inputs
#region
	rightKey = global.rightKey;
	leftKey = global.leftKey;
	upKey = global.upKey;
	downKey = global.downKey;
	basicShootKey = global.basicShootKey;
	specialShootKey = global.specialShootKey;
#endregion

//player movement
#region
	if (canMove) {
	//get the direction
	var _horizKey = rightKey - leftKey;
	var _vertKey = downKey - upKey;
	moveDir = point_direction(0,0, _horizKey, _vertKey);
	
	//get the x and y speeds
	var _spd = 0;
	var _inputLevel = point_distance(0,0, _horizKey, _vertKey);
	
	//set max speed to 1 for diagonal 
	_inputLevel = clamp(_inputLevel, 0, 1);
	_spd = moveSpd * _inputLevel;
		
	xspd = lengthdir_x(_spd, moveDir);
	yspd = lengthdir_y(_spd, moveDir);
	
//collision
	if place_meeting(x + xspd, y, objSolidWall) == true {xspd = 0;}
	if place_meeting(x, y + yspd, objSolidWall) == true {yspd = 0;}

//move the player
	x += xspd;
	y += yspd;

} else {
	xspd = 0;
	yspd = 0;
}
canMove = true;

//depth
	depth = -bbox_bottom;

//animate
	if xspd == 0 && yspd == 0 {image_index = 0;}

#endregion

//get damaged
#region
get_damaged(objDamagePlayer, true, false);

//player aiming
	centerY = y + centerYOffSet;
	
	//aim
	aimDir = point_direction(x, centerY, mouse_x, mouse_y);
	
#endregion

//sprite control
#region
	//ensure the player is facing the correct direction
	face = round(aimDir/90);
	if face == 4 {face = 0;};
	
	//set the player sprite
	sprite_index = sprite[face];
	
#endregion

//shoot the wand
#region
if (room != rmWinScreen && room != rmTreasure && room != rmShop && room != rmRest && room != rmRestShop && room != rmEventA && room != rmEventB && room != rmEventC && !instance_exists(objChest) && !instance_place(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), objPauseButton) && !instance_exists(objPauseButtonParent) && !instance_exists(objInventory)){
	if (!instance_exists(objAiming)){
		instance_create_depth(x, y, -10000, objAiming);
	}
	
	if shootTimerBasic > 0 {shootTimerBasic--;};
	if basicShootKey && shootTimerBasic <= 0 {
		
		//reset the timer
		shootTimerBasic = basicAttack.cooldown;
		
		//shooting
			var _spread = basicAttack.spread;
			var _spreadDiv = max(_spread/1 -1, 1);
		
			for (var i = 0; i < basicAttack.bulletNum ; i++) {
				//create the bullet
			var _bulletInst = instance_create_depth(x, centerY, depth-100, basicAttack.bulletObj);
			
				//change the bullet's direction
				with(_bulletInst) {
					show_debug_message("Bullet Damage:" + string(other.basicAttack.dmg));
					damage = other.basicAttack.dmg;
					//DOT
					dotDmg = other.basicDOTAttack.dot;
					spdReduct = other.basicDOTAttack.spdReduct; 
					dmgInterval = other.basicDOTAttack.dmgInterval; 
					dmgLast = other.basicDOTAttack.dmgLast;
					dir = other.aimDir - _spread/2 + _spreadDiv*i; 
				}
			}
	}
	if (global.attack_slot[# 1, 0] != item.none){
		if shootTimerSpecial > 0 {shootTimerSpecial--;};
		if specialShootKey && shootTimerSpecial <= 0 {
		
			//reset the timer
			shootTimerSpecial = specialAttack.cooldown;
		
			//shooting
				var _spread = specialAttack.spread;
				var _spreadDiv = max(_spread/1 -1, 1);
		
			if specialAttack.bulletObj == objSpecialBlizzard {
				//create the bullet
				var _bulletInst = instance_create_depth(mouse_x, mouse_y, depth-100, specialAttack.bulletObj);
				with (_bulletInst) {
					damage = other.specialAttack.dmg;
					//DOT
					dotDmg = other.specialDOTAttack.dot;
					spdReduct = other.specialDOTAttack.spdReduct; 
					dmgInterval = other.specialDOTAttack.dmgInterval; 
					dmgLast = other.specialDOTAttack.dmgLast;
				}
			} else if specialAttack.bulletObj == objSpecialFlashFreeze {
				//create the bullet
				var _bulletInst = instance_create_depth(x, y, depth-100, specialAttack.bulletObj);
				with (_bulletInst) {
					damage = other.specialAttack.dmg;
					//DOT
					dotDmg = other.specialDOTAttack.dot;
					spdReduct = other.specialDOTAttack.spdReduct; 
					dmgInterval = other.specialDOTAttack.dmgInterval; 
					dmgLast = other.specialDOTAttack.dmgLast;
				}
			} else if specialAttack.bulletObj == objSpecialPrism {
				//create the bullet
				var _bulletInst = instance_create_depth(x+20, y, depth-100, specialAttack.bulletObj);
				//change the bullet's direction
				with(_bulletInst) {
					show_debug_message("Bullet Damage:" + string(other.specialAttack.dmg));
					damage = other.specialAttack.dmg;
					dir = other.aimDir;
					//DOT
					dotDmg = other.specialDOTAttack.dot;
					spdReduct = other.specialDOTAttack.spdReduct; 
					dmgInterval = other.specialDOTAttack.dmgInterval; 
					dmgLast = other.specialDOTAttack.dmgLast;
				}
			}	
			else {
		
				for (var i = 0; i < specialAttack.bulletNum ; i++) {
				
					//create the bullet
					var _bulletInst = instance_create_depth(x, centerY, depth-100, specialAttack.bulletObj);
			
					//change the bullet's direction
					with(_bulletInst) {
						damage = other.specialAttack.dmg;
						dir = other.aimDir - _spread/2 + _spreadDiv*i; 
						//DOT
						dotDmg = other.specialDOTAttack.dot;
						spdReduct = other.specialDOTAttack.spdReduct; 
						dmgInterval = other.specialDOTAttack.dmgInterval; 
						dmgLast = other.specialDOTAttack.dmgLast;
					}
				}
			} 
		}
	}
} else {
	instance_destroy(objAiming);
	window_set_cursor(cr_default);
}
#endregion

//death
if global.playerHp <= 0 {
	//create the game ovr object
	instance_create_layer(1920/2, 1080/2, "PauseScreen", objLoseGif);
	
	//destroy player
	instance_destroy();
}

if (!chestOpened && !instance_exists(objLoseGif) && room != rmTraining && room != rmWinScreen && room != rmTreasure && room != rmShop && room != rmRest && room != rmRestShop && room != rmEventA && room != rmEventB && room != rmEventC && room != rmFinalBoss) {
	if (instance_number(objEnemyParent) == 0){
		if (global.stage == 1){
			instance_create_layer(x, y, "Instances", objChest);
			with(objChest){instance_create_layer(x, y - 151, "Instances", objInteractableTooltip);}
			instance_create_layer(1664, 992, "UpgradeScreenBase", objInvButton);
		} else {
			instance_create_layer(x, y, "Instances", objChest);
			instance_create_layer(1664, 992, "UpgradeScreenBase", objInvButton);
		}
		chestOpened = true;
	}
}

if (room == rmTreasure && instance_number(objRock) == 0 && instance_number(objRockSmall) != 0 && instance_number(objTreasureChest) == 0){
	instance_create_layer(1920, 901, "Instances", objStairs);
}

if (instance_number(objFinalBossInitial) == 1) {
	bossEncounter = true;
}

if ((room == rmFinalBoss || room == rmTraining) && instance_number(objFinalBossInitial) == 0 && bossEncounter && !bossEnraged){
	alarm_set(0, 60);
	bossEnraged = true;	
}

//Set basic attack based on rune equipped
switch (global.attack_slot[# 0, 0]) {
    case item.none:
        basicAttack = global.attackList.sparkLevel1Attack;
		basicDOTAttack = noone;
        break;
	case item.prismrune3:
        basicAttack = global.attackList.sparkLevel3Attack;
        break;
	case item.firerune1:
        basicAttack = global.attackList.fireBoltLevel1Attack;
		basicDOTAttack = global.dotAttackList.fireBoltLevel1Attack;
        break;
	case item.firerune2:
        basicAttack = global.attackList.fireBoltLevel2Attack;
		basicDOTAttack = global.dotAttackList.fireBoltLevel2Attack;
        break;
	case item.firerune3:
        basicAttack = global.attackList.fireBoltLevel3Attack;
		basicDOTAttack = global.dotAttackList.fireBoltLevel3Attack;
        break;
	case item.frostfirerune2:
        basicAttack = global.attackList.fireBoltLevel2Attack;
		basicDOTAttack = global.dotAttackList.fireBoltLevel2Attack;
        break;
	case item.frostfirerune3:
        basicAttack = global.attackList.fireBoltLevel3Attack;
		basicDOTAttack = global.dotAttackList.fireBoltLevel3Attack;
        break;
	case item.windrune1:
        basicAttack = global.attackList.airCutterLevel1Attack;
        break;	
	case item.windrune2:
        basicAttack = global.attackList.airCutterLevel2Attack;
        break;	
	case item.windrune3:
        basicAttack = global.attackList.airCutterLevel3Attack;
        break;	
	case item.infernorune2:
        basicAttack = global.attackList.airCutterLevel2Attack;
        break;	
	case item.infernorune3:
        basicAttack = global.attackList.airCutterLevel3Attack;
        break;	
	case item.icerune1:
        basicAttack = global.attackList.iceShardLevel1Attack;
		basicDOTAttack = global.dotAttackList.iceShardLevel1Attack;
        break;
	case item.icerune2:
        basicAttack = global.attackList.iceShardLevel2Attack;
		basicDOTAttack = global.dotAttackList.iceShardLevel2Attack;
        break;	
	case item.icerune3:
        basicAttack = global.attackList.iceShardLevel3Attack;
		basicDOTAttack = global.dotAttackList.iceShardLevel3Attack;
        break;	
	case item.blizzardrune2:
        basicAttack = global.attackList.iceShardLevel2Attack;
		basicDOTAttack = global.dotAttackList.iceShardLevel2Attack;
        break;	
	case item.blizzardrune3:
        basicAttack = global.attackList.iceShardLevel3Attack;
		basicDOTAttack = global.dotAttackList.iceShardLevel3Attack;
        break;
}

switch (global.attack_slot[# 1, 0]) {
    case item.firerune1:
        specialAttack = global.attackList.fireballLevel1Attack;
		specialDOTAttack = global.dotAttackList.fireballLevel1Attack;
        break;
	case item.firerune2:
        specialAttack = global.attackList.fireballLevel2Attack;
		specialDOTAttack = global.dotAttackList.fireballLevel2Attack;
        break;
	case item.firerune3:
        specialAttack = global.attackList.fireballLevel3Attack;
		specialDOTAttack = global.dotAttackList.fireballLevel3Attack;
        break;
	case item.icerune1:
        specialAttack = global.attackList.flashFreezeLevel1Attack;
		specialDOTAttack = global.dotAttackList.flashFreezeLevel1Attack;
        break;
	case item.icerune2:
        specialAttack = global.attackList.flashFreezeLevel2Attack;
		specialDOTAttack = global.dotAttackList.flashFreezeLevel2Attack;
        break;
	case item.icerune3:
        specialAttack = global.attackList.flashFreezeLevel3Attack;
		specialDOTAttack = global.dotAttackList.flashFreezeLevel3Attack;
        break;
	case item.windrune1:
        specialAttack = global.attackList.galeforceLevel1Attack;
        break;
	case item.windrune2:
        specialAttack = global.attackList.galeforceLevel2Attack;
        break;
	case item.windrune3:
        specialAttack = global.attackList.galeforceLevel3Attack;
        break;
	case item.infernorune2:
        specialAttack = global.attackList.infernoLevel2Attack;
		specialDOTAttack = global.dotAttackList.infernoLevel2Attack;
        break;
	case item.infernorune3:
        specialAttack = global.attackList.infernoLevel3Attack;
		specialDOTAttack = global.dotAttackList.infernoLevel3Attack;
        break;
	case item.frostfirerune2:
        specialAttack = global.attackList.frostfireBlastLevel2Attack;
		specialDOTAttack = global.dotAttackList.frostfireBlastLevel2Attack;
        break;
	case item.frostfirerune3:
        specialAttack = global.attackList.frostfireBlastLevel3Attack;
		specialDOTAttack = global.dotAttackList.frostfireBlastLevel3Attack;
        break;
	case item.blizzardrune2:
        specialAttack = global.attackList.blizzardLevel2Attack;
		specialDOTAttack = global.dotAttackList.blizzardLevel2Attack;
        break;
	case item.blizzardrune3:
        specialAttack = global.attackList.blizzardLevel3Attack;
		specialDOTAttack = global.dotAttackList.blizzardLevel3Attack;
        break;
	case item.prismrune3:
        specialAttack = global.attackList.prismSpecialAttack;
		specialDOTAttack = global.dotAttackList.prismSpecialAttack;
        break;
}