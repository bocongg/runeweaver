// Reset mouse_over to false, this will hide the glow effect on the card when drawing.
mouse_over = false;

// If the mouse is over this card...
if (device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
{
	// Set mouse_over to true, to enable the glow.
	mouse_over = true;
}

// Checks if card is highlighted.
if (mouse_over)
{
	// If the left mouse button has been pressed...
	if (mouse_check_button_pressed(mb_left))
	{
		// Play select sound effect.
		audio_play_sound(sndButtonClick, 0, 0, 1.0, undefined, 1.0);
		
		// Sets click state to true.
		is_clicked = true;
	}
	
	// Checks if mouse has been clicked on the card.
	if (is_clicked)
	{
		// Checks for mouse release.
		if (mouse_check_button_released(mb_left))
		{
			global.eventB3clicked = true;
			
			instance_create_layer(1920/2, 1080/2, "UpgradeScreenBase", objEventOutcomeScreen);
			instance_destroy(objEventBCard);
			instance_destroy(objCloseEvent);
			instance_destroy(objEventB1);
			instance_destroy(objEventB2);
			instance_destroy(objEventB3);
		}
	}
}