if (room == rmEventC) {
	if (global.eventC1clicked) {
		audio_play_sound(sndRuneChoice, 0, 0, 1.0, undefined, 1.0);
		eventCOption1();
	} else if (global.eventC2clicked) {
		audio_play_sound(sndRuneChoice, 0, 0, 1.0, undefined, 1.0);
		eventCOption2();	
	} else if (global.eventC3clicked) {
		eventBOption3();
	}
}
