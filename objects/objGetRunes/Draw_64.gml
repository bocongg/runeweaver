// Draws the upgrade object.
draw_self();

// Checks if glow highlight should show.
if (mouse_over)
{
	// Draws the glow highlight.
	draw_sprite(sprRuneFire1, 1, x, y);
}

// Checks if the upgrade has been set.
if (upgrade_data == undefined)
{
	// Exits the event.
	exit;
}

// Set draw alpha.
draw_set_alpha(roll_alpha);

// Draw sprite.
draw_sprite(sprRuneHide, 0, x, y);

// Set draw alpha.
draw_set_alpha(1);
