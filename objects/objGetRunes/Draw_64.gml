// Draws the card object.
draw_self();

// Checks if glow highlight should show.
if (mouse_over)
{
	var _objectRune = ds_map_find_value(upgrade_data, "object")
	if (_objectRune == global.fire) {
		draw_sprite(sprRuneFireActive, 1, x, y);
		draw_sprite(sprFireTooltip, 0, x, y+300);
		
	} else if (_objectRune == global.ice) {
		draw_sprite(sprRuneIceActive, 1, x, y);
		draw_sprite(sprIceTooltip, 0, x, y+300);
		
		
	} else if (_objectRune == global.wind) {
		draw_sprite(sprRuneWindActive, 1, x, y);
		draw_sprite(sprWindTooltip, 0, x, y+300);
	} 
}

// Checks if the upgrade has been set.
if (upgrade_data == undefined)
{
	// Exits the event.
	exit;
}

// Draws the upgrade object.
draw_sprite(upgrade_data[? "icon"], 0, x, y)

// Set draw alpha.
draw_set_alpha(roll_alpha);

// Draw sprite.
draw_sprite(sprRuneHide, 0, x, y);

// Set draw alpha.
draw_set_alpha(1);
