//damage setup 
get_damaged_create(global.playerMaxHp, true);

if (!variable_global_exists("moveSpd")){
	global.moveSpd = 8;
}

// varaibles for movement
	moveDir = 0;
	moveSpd = global.moveSpd
	xspd = 0;
	yspd = 0;


// Sprite Control
	centerYOffSet = -5;
	centerY = y + centerYOffSet; // set in step event
	
	weaponOffsetDist = 0;
	aimDir = 0;

	face = 3;
	sprite[0] = sprPlayerRight;
	sprite[1] = sprPlayerRight;
	sprite[2] = sprPlayerLeft;
	sprite[3] = sprPlayerLeft;
	

//wand info
	shootTimer = 0;
	
	basicAttack = global.attackList.basicAttack;
	specialAttack = global.attackList.prismSpecialAttack;
	
	chestOpened = false;
	bossEncounter = false;
	bossEnraged = false;