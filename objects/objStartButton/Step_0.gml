// If Expression
// // If mouse is over this instance, adjusting for the GUI layer...
if(device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
{
	// Assign Variable
	// // Reduce target scale size.
	target_scale = 0.95;

	// If Mouse Pressed
	// // If left mouse button is pressed...
	var l34765232_0;
l34765232_0 = mouse_check_button_pressed(mb_left);
if (l34765232_0)
{
	// Play Audio
		// // Play click sound effect.
		audio_play_sound(sndButtonClick, 0, 0, 1.0, undefined, 1.0);
	
		// Assign Variable
		// // Sets click state to true.
		is_clicked = true;
	
		// Assign Variable
		// // Reduce target scale size further.
		target_scale = 0.9;
}

	// If Variable
	// // Checks if mouse has been clicked on this button.
	if(is_clicked == true)
{
	// Assign Variable
		// // Reduce target scale size further.
		target_scale = 0.9;
	
		// If Mouse Released
		// // If left mouse button is released...
		var l7066DB78_0;
l7066DB78_0 = mouse_check_button_released(mb_left);
if (l7066DB78_0)
{
	// Play Audio
			// // Play click sound effect.
			audio_play_sound(sndButtonClick, 0, 0, 1.0, undefined, 1.0);
		
			// Go To Room
			// // Go to main game room.
			room_goto(Room1);
}
}
}

// Else
else
{
	// Assign Variable
	// // Reset target scale size.
	target_scale = 1.0;
}

// Assign Variable
// // Lerp scale values to target scale.
image_xscale = lerp(image_xscale, target_scale, 0.1);
image_yscale = lerp(image_yscale, target_scale, 0.1);
