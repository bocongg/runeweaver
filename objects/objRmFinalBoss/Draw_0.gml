draw_self();

if (global.stage < 8){
	draw_sprite(sprRmFinalBoss, 2, x, y);
	if (mouse_check_button_pressed(mb_left)) {
		// Sets click state to false.
		is_clicked = false;
	}
} else if (mouse_over)
	{
		// Draws the glow highlight.
		draw_sprite(sprRmFinalBoss, 1, x, y);
}