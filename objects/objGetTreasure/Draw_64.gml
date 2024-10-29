// Draws the card object.
draw_self();

// Checks if the upgrade has been set.
if (upgrade_data == undefined)
{
	// Exits the event.
	exit;
}

// Draws the rune card.
draw_sprite(upgrade_data[? "icon"], 0, x, y)

// Set draw alpha.
draw_set_alpha(roll_alpha);

// Draw sprite.
draw_sprite(sprRuneHide, 0, x, y);

// Set draw alpha.
draw_set_alpha(1);