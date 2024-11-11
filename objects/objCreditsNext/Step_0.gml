with(objCreditsScreen){
	if (image_index == 3){
		instance_destroy(objCreditsNext)
	}
}

// If mouse is over this instance, adjusting for the GUI layer...
if (device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
{
	sprite_index = sprPauseButtons;
	image_xscale = 0.4;
	image_yscale = 0.4;
	image_index = 1;
		
	// If left mouse button is pressed...
	if (mouse_check_button_pressed(mb_left))
	{
		sprite_index = sprPauseButtons;
		image_xscale = 0.4;
		image_yscale = 0.4;
		image_index = 2;
		
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
			with(objCreditsScreen){
				if (image_index < 3){
					image_index += 1
				}
			}
		}
	}
} else {
	sprite_index = sprPauseButtons;
	image_xscale = 0.4;
	image_yscale = 0.4;
	image_index = 0;	
}