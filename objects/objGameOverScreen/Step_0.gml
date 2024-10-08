//get the shoot key input
basicShootKey = global.basicShootKey;

//fade in 
alpha += alphaSpd;
alpha = clamp(alpha, 0, 1);

//restart
if basicShootKey && alpha >= 1
{
	room_goto(rmStartScreen);
}