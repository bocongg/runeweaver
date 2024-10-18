// Reset mouse_over to false, this will hide the overlay effect on map node.
mouse_over = false;

var nodeSpr = object_get_sprite(objRmNode6);

if  (!instance_exists(objGetRuneScreen)){

	// If the mouse is over this card...
	if (device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
	{
		// Set mouse_over to true, to enable the overlay.
		mouse_over = true;
	}

	// Checks if overlay appears
	if (mouse_over)
	{
		// If the left mouse button has been pressed...
		if (mouse_check_button_pressed(mb_left))
		{
			// Play upgrade sound effect.
			audio_play_sound(sndButtonClick, 0, 0, 1.0, undefined, 1.0);
		
			// Sets click state to true.
			is_clicked = true;
		}
	
		// Checks if mouse has been clicked on this button.
		if (is_clicked)
		{
			// Checks for mouse release.
			if (mouse_check_button_released(mb_left))
			{
				var roomID = object_get_name(objRmNode6);
				ds_list_add(global.stagesCleared, roomID);
				
				if !instance_exists(objTransition) {
					var _inst = instance_create_layer(x, y, "Instances", objTransition);
					if (nodeSpr == sprRmRest) {
						_inst.targetRoom = rmRest;
					} else 
					if (nodeSpr == sprRmEvent) {
						_inst.targetRoom = rmEvent;
					} else _inst.targetRoom = Room1;
				}
			}
		}
	}
}