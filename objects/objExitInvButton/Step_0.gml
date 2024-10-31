// If mouse is over this instance, adjusting for the GUI layer...
if(device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
	{
		// Assign Variable - Reduce target scale size.
		target_scale = 0.9;

		// If Mouse Pressed - If left mouse button is pressed...
		if (mouse_check_button_pressed(mb_left))
		{
		// Play Audio - Play click sound effect.
			audio_play_sound(sndButtonClick, 0, 0, 1.0, undefined, 1.0);
	
			// Assign Variable - Sets click state to true.
			is_clicked = true;
	
			// Assign Variable - Reduce target scale size further.
			target_scale = 0.8;
		}

		// If Variable - Checks if mouse has been clicked on this button.
		if(is_clicked == true)
		{
		// Assign Variable - Reduce target scale size further.
			target_scale = 0.9;
	
			// If Mouse Released - If left mouse button is released...
			if (mouse_check_button_released(mb_left))
			{
				with(objInventory) instance_destroy();
				with(objWeaveButton) instance_destroy();
				with(objExitInvButton) instance_destroy();
				with(obj_slot) instance_destroy();
				with(obj_slot_Attack) instance_destroy();
				with(obj_slot_Weave) instance_destroy();
				instance_activate_layer("UpgradeScreenBase");
				instance_activate_layer("UpgradeScreen");
				instance_activate_object(objPlayer);
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
