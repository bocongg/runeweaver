// Reset mouse_over to false, this will hide the glow effect on the card when drawing.
mouse_over = false;

// If the mouse is over this card...
if (device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
{
	// Set mouse_over to true, to enable the glow.
	mouse_over = true;
}

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
			// Set variables for card stats.
			var _object = ds_map_find_value(upgrade_data, "object");
			var _key = ds_map_find_value(upgrade_data, "key");
			var _amount = ds_map_find_value(upgrade_data, "amount");
	
			// Upgrade components stats.
			_object[? _key] += _amount;
			
			// Add rune to inventory
			if (_object == global.fire) {
				scr_gain_item(item.firerune1, 1);
				
			} else if (_object == global.ice) {
				scr_gain_item(item.icerune1, 1);
		
			} else if (_object == global.wind) {
				scr_gain_item(item.windrune1, 1);
			} 
	
			// Destroys runes.
			with(objGetRunes) instance_destroy();
	
			// Destroys get runes screen.
			with(objGetRuneScreen) instance_destroy();
			
			if (room != rmMapOverview && room != rmRest && room != rmEvent) {
				instance_create_layer(1872, 1032, "Instances", objStairs);
			}
		}
	}
}
