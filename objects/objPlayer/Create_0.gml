//damage setup 
get_damaged_create(10, true);

//variable for coin
	gold = 0;

// varaibles for movement
	moveDir = 0;
	moveSpd = 8;
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
	
	//basicAttack = global.attackList.windBasicAttack;
	//specialAttack = global.attackList.fireSpecialAttack;
	
	basicAttack = global.attackList.basicAttack;
	specialAttack = global.attackList.basicAttack;
	
	chestOpened = false;