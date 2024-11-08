// If mouse is over this instance, adjusting for the GUI layer...
if(device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
	{
		sprite_index = sprCredits;
		image_index = 1;

		// If Mouse Pressed - If left mouse button is pressed...
		if (mouse_check_button_pressed(mb_left))
		{
			// Play Audio - Play click sound effect.
			audio_play_sound(sndButtonClick, 0, 0, 1.0, undefined, 1.0);
			
			// Assign Variable - Sets click state to true.
			is_clicked = true;
		}

		// If Variable - Checks if mouse has been clicked on this button.
		if(is_clicked == true)
		{
			// If Mouse Released - If left mouse button is released...
			if (mouse_check_button_released(mb_left))
			{
				if (!instance_exists(objCreditsScreen)){
					instance_create_layer(1920/2, 1080/2, "Credits", objCreditsScreen);	
				}
			}
		}
}

// Else
else
{
	sprite_index = sprCredits;
	image_index = 0;	
}
