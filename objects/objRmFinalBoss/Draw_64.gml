/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Checks if glow highlight should show.
if (mouse_over)
{
	// Draws the glow highlight.
	draw_sprite(sprRmFinalBoss, 1, x, y);
}

var _unlocked = ds_map_find_value(global.roomNum, "roomFinalBossUnlocked");

if (!_unlocked) {
	draw_sprite(sprRmFinalBoss, 2, x, y);
	if (mouse_check_button_pressed(mb_left))
	{// Sets click state to false.
		is_clicked = false;
	}
}