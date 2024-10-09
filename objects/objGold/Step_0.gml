//float in place
floatDir += floatSpd;
y = ystart + dsin(floatDir);

//get collected by the player
if place_meeting(x, y, objPlayer)
{
	//destroy self
	objPlayer.gold += 1;
	instance_destroy();
}