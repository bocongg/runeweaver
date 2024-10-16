draw_self();
var nodeSpr = object_get_sprite(objRmNode12);

if (global.stage > 6){
	draw_sprite(nodeSpr, 3, x, y);
	if (mouse_check_button_pressed(mb_left)) {
		// Sets click state to false.
		is_clicked = false;
	}
} else if (global.stage < 6){
	draw_sprite(nodeSpr, 2, x, y);
	if (mouse_check_button_pressed(mb_left)) {
		// Sets click state to false.
		is_clicked = false;
	}
} else if (mouse_over)
	{
		// Draws the glow highlight.
		draw_sprite(nodeSpr, 1, x, y);
}