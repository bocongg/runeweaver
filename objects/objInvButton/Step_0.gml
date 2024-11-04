if (global.showInvTooltip){
		if (global.stage == 0) {
			with(objInvButton) {instance_create_layer(x, y-150, "UpgradeScreenBase", objInvTooltip1)}
		} else {instance_destroy(objInvTooltip1)}
	}	

// If mouse is over this instance, adjusting for the GUI layer...
if(device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
	{
		// Assign Variable - Reduce target scale size.
		sprite_index = sprInvButton;
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
			sprite_index = sprInvButton;
			image_index = 2;
			
			// If Mouse Released - If left mouse button is released...
			if (mouse_check_button_released(mb_left))
			{
				var _camX = camera_get_view_x(view_camera[0]);
				var _camY = camera_get_view_y(view_camera[0]);

				instance_create_layer(1920/2, 1080/2, "InventoryScreen", objInventory);
				instance_create_layer(1487, 146, "Buttons", objExitInvButton);
				instance_create_layer(960, 367, "Buttons", objWeaveButton);
				instance_deactivate_layer("UpgradeScreenBase");
				instance_deactivate_layer("UpgradeScreen");
				instance_deactivate_object(objPlayer);
			}
		}
}

// Else
else
{
	sprite_index = sprInvButton;
	image_index = 0;	
}
