switch(state) {
	case states.OUT:
		if subImageIndex < imax + xmax {
			//increment index
			subImageIndex += subImageIndexInc;
		} else {
			state = states.IN;
				//goto room
				if room_exists(targetRoom) room_goto(targetRoom);
		}
	break;
	case states.IN:
		if subImageIndex > 0 {
			//decrement index
			subImageIndex -= subImageIndexInc;
		} else instance_destroy();
	break;
}