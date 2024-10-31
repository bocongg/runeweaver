draw_self();

// Checks if glow highlight should show.
if (!checkLevel2Rune) {
	draw_sprite(sprEventCCardOption1, 2, x, y);
} else if (mouse_over) {
	draw_sprite(sprEventCCardOption1, 1, x, y);
}