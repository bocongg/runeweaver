// Draws the upgrade object.
draw_self();

// Checks if glow highlight should show.
if (mouse_over)
{
	// Draws the glow highlight.
	draw_sprite(sprRmEvent, 1, x, y);
}