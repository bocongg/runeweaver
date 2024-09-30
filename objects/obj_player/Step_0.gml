right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

xspd= (right_key - left_key) * move_spd;
yspd= (down_key - up_key) * move_spd;

// set sprite
// Grid showing how the object move in GMS
//   y
// x 0 1 2 3
//   1
//   2
//   3

mask_index = sprite[DOWN];
if yspd == 0 {
	// if player go right then face right
	if xspd > 0 {face = RIGHT};
	// if player go left then face left
	if xspd < 0 {face = LEFT};
}
// if player go right and face left then face right
if xspd > 0 && face == LEFT {face = RIGHT};
// if player go left and face right then face left
if xspd < 0 && face == RIGHT {face = LEFT};

if xspd == 0 {
	// if player go down then face down
	if yspd > 0 {face = DOWN};
	// if player go up then face up
	if yspd < 0 {face = UP};
}
// if player go down and face up then face down
if yspd > 0 && face == UP {face = DOWN};
// if player go up and face down then face up
if yspd < 0 && face == DOWN {face = UP};
sprite_index = sprite[face];

// Collision
if place_meeting(x + xspd, y, obj_wall) == true {xspd = 0;}
if place_meeting(x, y + yspd, obj_wall) == true {yspd = 0;}

x += xspd;
y += yspd;

// animate
if xspd == 0 && yspd == 0 {
	image_index = 0;
}