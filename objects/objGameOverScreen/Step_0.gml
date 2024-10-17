//get the shoot key input
basicShootKey = global.basicShootKey;

//fade in 
alpha += alphaSpd;
alpha = clamp(alpha, 0, 1);

//restart
if basicShootKey && alpha >= 1
{
	audio_stop_all();
	game_restart();
	//Triggering the game_restart() function resets all variables and object states but not global variables
	//including the built-in global variables of objects.
	
	//room_goto(rmStartScreen);
}