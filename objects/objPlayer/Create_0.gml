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
	
	weaponOffsetDist = 4;
	aimDir = 0;

	face = 3;
	sprite[0] = sprPlayerRight;
	sprite[1] = sprPlayerRight;
	sprite[2] = sprPlayerLeft;
	sprite[3] = sprPlayerLeft;
	

//wand info
	shootTimer = 0;
	shootCooldown = 15; //higher number means inbetween shots is longer
	
	bulletObj = objLevel1Fire;