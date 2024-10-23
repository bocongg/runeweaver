// Variable for upgrade data.
upgrade_data = undefined;

// Variables for moused state.
mouse_over = false;
is_clicked = false;

// Variables used for hide reveal on upgrades.
roll_life = 0;
roll_alpha = 1;

// For multiple rune screens
global.runeScreenShownStage2n3 = false;
if !variable_global_exists("runeScreenShownStage4") {
	global.runeScreenShownStage4 = 0;
}
global.runeScreenShownStage7 = false;