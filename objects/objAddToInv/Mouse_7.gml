sprite_index = sprButton;
image_index = 1;

audio_play_sound(sndRuneCardSelect, 0, 0, 1.0, undefined, 1.0);

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

with (objGetTreasure){
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
	// Add shop items
	if (_icon == sprEnergyDrinkT) {
		global.energyDrink += 1;
		global.moveSpd += global.moveSpd + (global.energyDrink*0.25*global.moveSpd);

	} else if (_icon == sprFishTreatT) {
		audio_play_sound(sndPlayerGainHealth, 0, 0, 1.0, undefined, 1.0);
				
		if (global.playerHp != global.playerMaxHp) {
			global.playerHp += (global.playerMaxHp* 0.25);
		}
		if (global.playerHp > global.playerMaxHp) {
			global.playerHp = global.playerMaxHp;	
		}

	} else if (_icon == sprLuckyBellT) {
		global.goldChance += 1
	}
}

// Destroys runes.
with(objAddRunes) instance_destroy();
with(objGetTreasure) instance_destroy();
with(objAddToInv) instance_destroy();
	
// Destroys get runes screen.
with(objEventOutcomeScreen) instance_destroy();
with(objEventOutcomeCScreen) instance_destroy();
with(objGetTreasureScreen) instance_destroy();

instance_create_layer(1920, 901, "Instances", objStairs);
