//float in place
floatDir += floatSpd;
y = ystart + dsin(floatDir);

//get collected by the player
if place_meeting(x, y, objPlayer)
{
	//destroy self
	global.gold += goldValue + (global.goldChance*0.25*goldValue);
	audio_play_sound(sndCoinCollection, 0, 0, 0.5);
	instance_destroy();
}