//make sure this shows up on top
depth = -9000;

//keep track of player's health
playerHp = 0;
playerMaxHp = 0;
if (!variable_global_exists("gold")){
	global.gold = 0;
}