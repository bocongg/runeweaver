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
				if (!instance_exists(objInventory)){
					instance_destroy(objInvTooltip3);
					instance_create_layer(1920/2, 1080/2, "InventoryScreen", objInventory);
					instance_create_layer(1487, 146, "Buttons", objExitInvButton);
					instance_create_layer(960, 367, "Buttons", objWeaveButton);
					instance_deactivate_object(objGetRunes);
					instance_deactivate_object(objPlayer);
				}
				if (global.stage == 0) {
					if (!instance_exists(objInvTooltip2)){
						with(objEquipBasic) {instance_create_layer(x+61.5, y-122, "RunesInventory", objInvTooltip2)}	
					}
				}
			}
		}
}

// Else
else
{
	sprite_index = sprInvButton;
	image_index = 0;	
}
