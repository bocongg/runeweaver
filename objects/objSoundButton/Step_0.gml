// If mouse is over this instance, adjusting for the GUI layer...
if(device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
{
	// Assign Variable - Reduce target scale size.
	target_scale = 0.8;

	// If Mouse Pressed - If left mouse button is pressed...
	if (mouse_check_button_pressed(mb_left))
	{
		// Play Audio - Play click sound effect.
		audio_play_sound(sndButtonClick, 0, 0, 1.0, undefined, 1.0);
	
		// Assign Variable - Sets click state to true.
		is_clicked = true;
	
		// Assign Variable - Reduce target scale size further.
		target_scale = 0.7;
	}

	// If Variable - Checks if mouse has been clicked on this button.
	if(is_clicked == true)
	{
		// Assign Variable - Reduce target scale size further.
		target_scale = 0.8;
	
		// If Mouse Released - If left mouse button is released...
		if (mouse_check_button_released(mb_left))
		{
			// Get Master Volume - Get current volume.
			var _volume = audio_get_master_gain(0);
		
			// Set Master Volume - Toggle volume on/off.
			audio_set_master_gain(0, !_volume);
		}
	}
}

// Else
else
{
	// Assign Variable - Reset target scale size.
	target_scale = 1.0;
}

// Assign Variable - Lerp scale values to target scale.
image_xscale = lerp(image_xscale, target_scale, 0.1);
image_yscale = lerp(image_yscale, target_scale, 0.1);
