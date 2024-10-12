enum states {
	OUT,
	IN
}
state = states.OUT;

spr = sprTransition;
sprw = sprite_get_width(spr)
sprh = sprite_get_height(spr);

//get number of sprites required
//set max sprites for x
xmax = room_width div sprw;

//set max sprites for y
ymax = room_width div sprh;
imax = sprite_get_number(spr);

//set image speed
subImageIndexInc = sprite_get_speed(spr)/room_speed;
subImageIndex = 0;

//transition colour
col = c_black;


targetRoom = noone;