// Reset mouse_over to false, this will hide the glow effect on the card when drawing.
mouse_over = false;

// Checks if reveal effect if visible.
if (roll_alpha >= 0)
{
	// Stops select highlight from occuring.
	mouse_over = false;
	
	// Decreases life timer.
	roll_life -= delta_time * 0.000001;
	
	// Checks if life timer is finished
	if (roll_life <= 0)
	{
		// Reduces alpha of card reveal.
		roll_alpha -= delta_time * 0.000001 * 2;
	}
}

if ((ds_map_find_value(upgrade_data, "stock") != 0)) && (global.gold >= ds_map_find_value(upgrade_data, "cost")){
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
				audio_play_sound(sndPurchase, 0, 0, 1.0);
			
				// Set variables for card stats.
				var _icon = ds_map_find_value(upgrade_data, "icon");

				// Add shop items
				if (_icon == sprEnergyDrink) {
					global.gold -= 60;
					global.energyDrink += 1;
					global.moveSpd += global.energyDrink*0.25*8;
					upgrade_data[? "stock"] -= 1;
					global.vendingTimes += 1;

				} else if (_icon == sprFishTreat) {
					audio_play_sound(sndPlayerGainHealth, 0, 0, 1.0);
				
					global.gold -= 60;
					if (global.playerHp != global.playerMaxHp) {
						global.playerHp += (global.playerMaxHp* 0.25);
					}
					if (global.playerHp > global.playerMaxHp) {
						global.playerHp = global.playerMaxHp;	
					}
					upgrade_data[? "stock"] -= 1;
					global.vendingTimes += 1;

				} else if (_icon == sprLuckyBell) {
					global.gold -= 20;
					global.goldChance += 1
					upgrade_data[? "stock"] -= 1;
					global.vendingTimes += 1;
				}
				
				if (audio_is_playing(sndVendingMachineAmbient)){
					audio_stop_sound(sndVendingMachineAmbient);
				}
				
				// Destroys shop items.
				with(objGetItems) instance_destroy();
	
				// Destroys get items screen.
				with(objGetShopItemsScreen) instance_destroy();
			
				with(objCloseShop) instance_destroy();
			}
		}
	}	
}
