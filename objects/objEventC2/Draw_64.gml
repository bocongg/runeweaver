draw_self();

// Checks if glow highlight should show.
if (!checkLevel3Rune) {
	draw_sprite(sprEventCCardOption2, 2, x, y);
} else if (mouse_over) {
	draw_sprite(sprEventCCardOption2, 1, x, y);
}