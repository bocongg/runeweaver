if (room == rmEventA) {
	if (global.eventA1clicked) {
		eventAOption1();
	} else if (global.eventA2clicked) {
		eventAOption2();	
	}
}

if (room == rmEventB) {
	if (global.eventB1clicked) {
		eventBOption1();
	} else if (global.eventB2clicked) {
		eventBOption2();
	} else if (global.eventB3clicked) {
		eventBOption3();
	}
}