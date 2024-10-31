// Draws the card object.
draw_self();

// Checks if glow highlight should show.
if (mouse_over)
{
	draw_sprite(sprRuneFireActive, 1, x, y);
}

// Checks if the upgrade has been set.
if (upgrade_data == undefined)
{
	// Exits the event.
	exit;
}

// Draws the item card.
if (global.gold >= ds_map_find_value(upgrade_data, "cost")){
	draw_sprite(upgrade_data[? "icon"], upgrade_data[? "stock"], x, y)
} else {
	draw_sprite(upgrade_data[? "icon"], 2, x, y)
}


// Set draw alpha.
draw_set_alpha(roll_alpha);

// Draw sprite.
draw_sprite(sprRuneHide, 0, x, y);

// Set draw alpha.
draw_set_alpha(1);
