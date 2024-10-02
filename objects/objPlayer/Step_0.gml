// Check if got inputs
rightKey = keyboard_check(ord("D"));
leftKey = keyboard_check(ord("A"));
upKey = keyboard_check(ord("W"));
downKey = keyboard_check(ord("S"));


// player movement
	// get the direction
	var _horizKey = rightKey - leftKey;
	var _vertKey = downKey - upKey;
	moveDir = point_direction(0,0, _horizKey, _vertKey);
	
	// get the x and y speeds
	var _spd = 0;
	var _inputLevel = point_distance(0,0, _horizKey, _vertKey);
	// set max speed to 1 for diagonal 
	_inputLevel = clamp(_inputLevel, 0, 1);
	_spd = moveSpd * _inputLevel;
	
	xspd = lengthdir_x(_spd, moveDir);
	yspd = lengthdir_y(_spd, moveDir);
// xspd= (right_key - left_key) * move_spd;
// yspd= (down_key - up_key) * move_spd;


//mask_index = sprite[DOWN];
//if yspd == 0 {
	// if player go right then face right
	//if xspd > 0 {face = RIGHT};
	// if player go left then face left
	//if xspd < 0 {face = LEFT};
//}
// if player go right and face left then face right
//if xspd > 0 && face == LEFT {face = RIGHT};
// if player go left and face right then face left
//if xspd < 0 && face == RIGHT {face = LEFT};

//if xspd == 0 {
	// if player go down then face down
//	if yspd > 0 {face = DOWN};
	// if player go up then face up
//	if yspd < 0 {face = UP};
//}
// if player go down and face up then face down
//if yspd > 0 && face == UP {face = DOWN};
// if player go up and face down then face up
//if yspd < 0 && face == DOWN {face = UP};
//sprite_index = sprite[face];

// Collision
if place_meeting(x + xspd, y, objSolidWall) == true {xspd = 0;}
if place_meeting(x, y + yspd, objSolidWall) == true {yspd = 0;}

// move the player
x += xspd;
y += yspd;

// animate
//if xspd == 0 && yspd == 0 {
//	image_index = 0;
//}