//draw the plater
	draw_self();

//draw the weapon
	//get the weapon off the player's body
	var _xOffset = lengthdir_x(weaponOffsetDist, aimDir);
	var _yOffset = lengthdir_y(weaponOffsetDist, aimDir);
	
	//get the weapon upright
	var _weaponYScale = 1;
	if aimDir > 90 && aimDir < 270 {_weaponYScale = -1};
	draw_sprite_ext(sprWand,0,x,centerY,1,_weaponYScale,aimDir,c_white,1);