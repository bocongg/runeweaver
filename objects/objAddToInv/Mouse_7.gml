sprite_index = sprButton2;
image_index = 1;


with (objAddRunes){
	var _icon = ds_map_find_value(upgrade_data, "icon");
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
}

// Destroys runes.
with(objAddRunes) instance_destroy();
with(objAddToInv) instance_destroy();
	
// Destroys get runes screen.
with(objEventOutcomeScreen) instance_destroy();
with(objEventOutcomeCScreen) instance_destroy();
