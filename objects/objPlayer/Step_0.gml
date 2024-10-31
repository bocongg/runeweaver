//check if got inputs
	rightKey = global.rightKey;
	leftKey = global.leftKey;
	upKey = global.upKey;
	downKey = global.downKey;
	basicShootKey = global.basicShootKey;
	specialShootKey = global.specialShootKey;

//player movement
#region
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
if (room != rmWinScreen && room != rmTreasure && room != rmShop && room != rmRest && room != rmRestShop && room != rmEventA && room != rmEventB && room != rmEventC && !instance_exists(objChest) && !instance_place(mouse_x, mouse_y, objPauseButton)){
	if shootTimer > 0 {shootTimer--;};
	if basicShootKey && shootTimer <= 0 {
		
		//reset the timer
		shootTimer = basicAttack.cooldown;
		
		//shooting
			var _spread = basicAttack.spread;
			var _spreadDiv = max(_spread/1 -1, 1);
		
			for (var i = 0; i < basicAttack.bulletNum ; i++) {
				//create the bullet
			var _bulletInst = instance_create_depth(x, centerY, depth-100, basicAttack.bulletObj);
			
				//change the bullet's direction
				with(_bulletInst) {
					dir = other.aimDir - _spread/2 + _spreadDiv*i; 
				}
			}
	} else if specialShootKey && shootTimer <= 0 {
		
		//reset the timer
		shootTimer = specialAttack.cooldown;
		
		//shooting
			var _spread = specialAttack.spread;
			var _spreadDiv = max(_spread/1 -1, 1);
		
		//TEST//
		if specialAttack.bulletObj == objSpecialBlizzard {
			//create the bullet
			var _bulletInst = instance_create_depth(mouse_x, mouse_y, depth-100, specialAttack.bulletObj);
		} else if specialAttack.bulletObj == objSpecialFlashFreeze {
			//create the bullet
			var _bulletInst = instance_create_depth(x, y, depth-100, specialAttack.bulletObj);
		} else if specialAttack.bulletObj == objSpecialPrism {
			//create the bullet
			var _bulletInst = instance_create_depth(x+20, y, depth-100, specialAttack.bulletObj);
			//change the bullet's direction
			with(_bulletInst) {dir = other.aimDir;}
		}	
		else {
		
			for (var i = 0; i < specialAttack.bulletNum ; i++) {
				
				//create the bullet
				var _bulletInst = instance_create_depth(x, centerY, depth-100, specialAttack.bulletObj);
			
				//change the bullet's direction
				with(_bulletInst) {
					dir = other.aimDir - _spread/2 + _spreadDiv*i; 
				}
			}
		} 
	}
}
#endregion

//death
if global.playerHp <= 0 {
	//create the game ovr object
	instance_create_layer(1920/2, 1080/2, "PauseScreen", objLoseGif);
	
	//destroy player
	instance_destroy();
}

if (!chestOpened && room != rmTraining && room != rmWinScreen && room != rmTreasure && room != rmShop && room != rmRest && room != rmRestShop && room != rmEventA && room != rmEventB && room != rmEventC && room != rmFinalBoss) {
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
if (global.attack_slot[# 0, 0] == item.prismrune3) {
	basicAttack = global.attackList.basicAttack;
}
if (global.attack_slot[# 0, 0] == item.firerune1) ||
	(global.attack_slot[# 0, 0] == item.firerune2) ||
	(global.attack_slot[# 0, 0] == item.firerune3) ||
	(global.attack_slot[# 0, 0] == item.frostfirerune2) || 
    (global.attack_slot[# 0, 0] == item.frostfirerune3){
	basicAttack = global.attackList.fireBasicAttack;
}
if ((global.attack_slot[# 0, 0] == item.windrune1) ||
	(global.attack_slot[# 0, 0] == item.windrune2) ||
	(global.attack_slot[# 0, 0] == item.windrune3) ||
	(global.attack_slot[# 0, 0] == item.infernorune2) || 
    (global.attack_slot[# 0, 0] == item.infernorune3)){
	basicAttack = global.attackList.windBasicAttack;
}
if ((global.attack_slot[# 0, 0] == item.icerune1) ||
	(global.attack_slot[# 0, 0] == item.icerune2) ||
	(global.attack_slot[# 0, 0] == item.icerune3) ||
	(global.attack_slot[# 0, 0] == item.blizzardrune2) || 
    (global.attack_slot[# 0, 0] == item.blizzardrune3)){
	basicAttack = global.attackList.iceBasicAttack;
}

// Set special attack based on rune equipped
if ((global.attack_slot[# 1, 0] == item.firerune1) || 
	(global.attack_slot[# 1, 0] == item.firerune2) ||
	(global.attack_slot[# 1, 0] == item.firerune3)) {
	specialAttack = global.attackList.fireSpecialAttack;
}
if ((global.attack_slot[# 1, 0] == item.icerune1) || 
	(global.attack_slot[# 1, 0] == item.icerune2) ||
	(global.attack_slot[# 1, 0] == item.icerune3)) {
	specialAttack = global.attackList.iceSpecialAttack;
}
if ((global.attack_slot[# 1, 0] == item.windrune1) || 
	(global.attack_slot[# 1, 0] == item.windrune2) ||
	(global.attack_slot[# 1, 0] == item.windrune3)) {
	specialAttack = global.attackList.windSpecialAttack;
}
if ((global.attack_slot[# 1, 0] == item.blizzardrune2) || 
    (global.attack_slot[# 1, 0] == item.blizzardrune3)){
	specialAttack = global.attackList.blizzardSpecialAttack;
}
if ((global.attack_slot[# 1, 0] == item.frostfirerune2) || 
    (global.attack_slot[# 1, 0] == item.frostfirerune3)){
	specialAttack = global.attackList.frostFireSpecialAttack;
}
if ((global.attack_slot[# 1, 0] == item.infernorune2) || 
    (global.attack_slot[# 1, 0] == item.infernorune3)){
	specialAttack = global.attackList.infernoSpecialAttack;
}
if (global.attack_slot[# 1, 0] == item.prismrune3) {
	specialAttack = global.attackList.prismSpecialAttack;
}