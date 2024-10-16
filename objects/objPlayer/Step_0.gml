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

//get damaged
#region
get_damaged(objDamagePlayer, true);

//player aiming
	centerY = y + centerYOffSet;
	
	//aim
	aimDir = point_direction(x, centerY, mouse_x, mouse_y);
	
#endregion

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
		
			for (var i = 0; i < specialAttack.bulletNum ; i++) {
				//create the bullet
			var _bulletInst = instance_create_depth(x, centerY, depth-100, specialAttack.bulletObj);
			
				//change the bullet's direction
				with(_bulletInst) {
					dir = other.aimDir - _spread/2 + _spreadDiv*i; 
				}
			}
		
		
		/*//shooting
			//create the bullet
			var _bulletInst = instance_create_depth(x, centerY, depth-100, wand.bulletObj);
		
			//change the bullet's direction
			with(_bulletInst) {
				dir = other.aimDir;
			}*/
	}
#endregion

//death
if hp <= 0 {
	//create the game ovr object
	instance_create_depth(0, 0, -10000, objGameOverScreen);
	
	//destroy player
	instance_destroy();
}



