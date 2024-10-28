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
			instance_destroy(objLoseReplayButton);
			instance_destroy(objLoseQuitGameButton);
			instance_destroy(objLoseScreen);
			audio_stop_all();
			global.stage = 0;
			game_restart();
		}
	}
}