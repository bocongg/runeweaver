image_xscale = 0.5
image_yscale = 0.5

// If mouse is over this instance, adjusting for the GUI layer...
if (device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
{
	// If left mouse button is pressed...
	if (mouse_check_button_pressed(mb_left))
	{
		// Play click sound effect.
		audio_play_sound(sndButtonClick, 0, 0, 1.0, undefined, 1.0);
	
		// Sets click state to true.
		is_clicked = true;
	}
	
	// Checks if mouse has been clicked on this button.
	if (is_clicked)
	{
		// If left mouse button is released...
		if (mouse_check_button_released(mb_left))
		{
			// Calls function to generate new upgrades.
			weaveRunes();
		}
	}
}