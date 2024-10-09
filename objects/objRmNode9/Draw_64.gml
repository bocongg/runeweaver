/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (global.stage > 5){
	draw_sprite(sprRmCombat, 3, x, y);
	if (mouse_check_button_pressed(mb_left)) {
		// Sets click state to false.
		is_clicked = false;
	}
} else if (global.stage < 5){
	draw_sprite(sprRmCombat, 2, x, y);
	if (mouse_check_button_pressed(mb_left)) {
		// Sets click state to false.
		is_clicked = false;
	}
} else if (mouse_over)
	{
		// Draws the glow highlight.
		draw_sprite(sprRmCombat, 1, x, y);
}