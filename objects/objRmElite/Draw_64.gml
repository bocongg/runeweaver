/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var _unlocked = undefined

if (global.stage == 0) {
		_unlocked = ds_map_find_value(global.roomNum, "roomOneUnlocked")
	} else if (global.stage == 1) {
		_unlocked = ds_map_find_value(global.roomNum, "roomOneUnlocked")
	} else if (global.stage == 2) {
		_unlocked = ds_map_find_value(global.roomNum, "roomThreeUnlocked")
	} else if (global.stage == 3) {
		_unlocked = ds_map_find_value(global.roomNum, "roomSixUnlocked")
	} else if (global.stage == 4) {
		_unlocked = ds_map_find_value(global.roomNum, "roomEightUnlocked")
	} else if (global.stage == 5) {
		_unlocked = ds_map_find_value(global.roomNum, "roomNineUnlocked")
	} else if (global.stage == 6) {
		_unlocked = ds_map_find_value(global.roomNum, "roomElevenUnlocked")
	} else if (global.stage == 7) {
		_unlocked = ds_map_find_value(global.roomNum, "roomFourteenUnlocked")
	}

if (_unlocked) {
	// Checks if glow highlight should show.
	if (mouse_over)
	{
		// Draws the glow highlight.
		draw_sprite(sprRmElite, 1, x, y);
	}
} else if (!_unlocked) {
	draw_sprite(sprRmElite, 2, x, y);
	if (mouse_check_button_pressed(mb_left))
	{// Sets click state to false.
		is_clicked = false;
	}
}