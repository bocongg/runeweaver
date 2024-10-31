if (room == rmEventA) {
	if (global.eventA1clicked) {
		audio_play_sound(sndRuneChoice, 0, 0, 1.0, undefined, 1.0);
		eventAOption1();
	} else if (global.eventA2clicked) {
		eventAOption2();	
	}
}

if (room == rmEventB) {
	if (global.eventB1clicked) {
		audio_play_sound(sndRuneChoice, 0, 0, 1.0, undefined, 1.0);
		eventBOption1();
	} else if (global.eventB2clicked) {
		audio_play_sound(sndRuneChoice, 0, 0, 1.0, undefined, 1.0);
		eventBOption2();
	} else if (global.eventB3clicked) {
		eventBOption3();
	}
}