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
		audio_play_sound(sndRuneCardSelect, 0, 0, 1.0, undefined, 1.0);
		
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
			//var _key = ds_map_find_value(upgrade_data, "key");
			//var _amount = ds_map_find_value(upgrade_data, "amount");
			var _icon = ds_map_find_value(upgrade_data, "icon");
	
			//// Upgrade components stats.
			//_object[? _key] += _amount;
			
			// Add rune to inventory
			if (_icon == sprRuneFire1) {
				scr_gain_item(item.firerune1, 1);

			} else if (_icon == sprRuneIce1) {
				scr_gain_item(item.icerune1, 1);
		
			} else if (_icon == sprRuneWind1) {
				scr_gain_item(item.windrune1, 1);
				
			} else if (_icon == sprRuneFire2) {
				scr_gain_item(item.firerune2, 1);
				
			} else if (_icon == sprRuneIce2) {
				scr_gain_item(item.icerune2, 1);
		
			} else if (_icon == sprRuneWind2) {
				scr_gain_item(item.windrune2, 1);
			} 
			
			if (global.stage == 0) {
				with(objInvButton) {instance_create_layer(x, y-150, "UpgradeScreenBase", objInvTooltip1)}
			}
			
			// Destroys runes.
			with(objGetRunes) instance_destroy();
	
			// Destroys get runes screen.
			with(objGet3RuneScreen) instance_destroy();
			with(objGet2RuneScreen) instance_destroy();
			
			// Show rune screen twice for stages 2 & 3
			if (global.stage == 2 || global.stage == 3){
				if (!global.runeScreenShownStage2n3){
					instance_create_layer(1920/2, 1080/2, "UpgradeScreenBase", objGet2RuneScreen);
					global.runeScreenShownStage2n3 = true;
				} else if (room != rmMapOverview && room != rmRest && room != rmEventA && room != rmEventB && room != rmEventC) {
					instance_create_layer(room_width - 118, room_height - 122, "Instances", objStairs);
				}
			// Show rune screen thrice for stage 4
			} else if (global.stage == 4){
				if (global.runeScreenShownStage4 == 0){
					instance_create_layer(1920/2, 1080/2, "UpgradeScreenBase", objGet2RuneScreen);
					global.runeScreenShownStage4++;
				} else if (global.runeScreenShownStage4 == 1){
					instance_create_layer(1920/2, 1080/2, "UpgradeScreenBase", objGet2RuneScreen);
					global.runeScreenShownStage4++;
				} else if (room != rmMapOverview && room != rmRest && room != rmEventA && room != rmEventB && room != rmEventC) {
					instance_create_layer(room_width - 118, room_height - 122, "Instances", objStairs);
				}
			// Show (L2) rune screen twice for stage 7			
			} else if (global.stage == 7){
				if (!global.runeScreenShownStage7){
					instance_create_layer(1920/2, 1080/2, "UpgradeScreenBase", objGet2RuneScreen);
					global.runeScreenShownStage7 = true;
				} else if (room != rmMapOverview && room != rmRest && room != rmEventA && room != rmEventB && room != rmEventC) {
					instance_create_layer(room_width - 118, room_height - 122, "Instances", objStairs);
				}
			} else if (room != rmMapOverview && room != rmRest && room != rmEventA && room != rmEventB && room != rmEventC) {
				instance_create_layer(room_width - 118, room_height - 122, "Instances", objStairs);
				if (global.stage == 1){
					with(objPlayer){
						instance_create_layer(x + 62.5, y, "Instances", objProceedSign);
						
						with(objProceedSign) {
							image_angle = point_direction(x, y, objStairs.x, objStairs.y)
							depth = -y;
							
						}
					}
				}
			}
		}
	}
}
