switch(state) {
	case states.OUT:
		if subImageIndex < imax + xmax {
			//increment index
			subImageIndex += subImageIndexInc + 0.5;
		} else {
			state = states.IN;
				//goto room
				if room_exists(targetRoom) room_goto(targetRoom);
		}
	break;
	case states.IN:
		if subImageIndex > 0 {
			//decrement index
			subImageIndex -= subImageIndexInc + 0.5;
		} else instance_destroy();
	break;
}