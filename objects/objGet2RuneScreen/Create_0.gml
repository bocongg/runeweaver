
// Play the rune select jingle.
// audio_play_sound(snd_win, 0, 0, 1.0, undefined, 1.0);

// Calls funtion to generate the upgrades.
if (global.stage == 6 || global.stage == 7) {
	get2RunesL2();
} else { 
	get2Runes();
}