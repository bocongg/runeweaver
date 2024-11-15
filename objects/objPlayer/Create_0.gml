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
	canMove = true;


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
	shootTimerBasic = 0;
	shootTimerSpecial = 0;
	
	basicAttack = global.attackList.sparkLevel1Attack;
	specialAttack = global.attackList.sparkLevel3Attack;
	
	chestOpened = false;
	bossEncounter = false;
	bossEnraged = false;
	
	
//Dot info
basicDOTAttack = global.dotAttackList.fireBoltLevel1Attack;
specialDOTAttack = global.dotAttackList.fireballLevel1Attack;