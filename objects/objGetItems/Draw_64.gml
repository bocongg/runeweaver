// Draws the card object.
draw_self();

// Checks if glow highlight should show.
if (mouse_over)
{
	//var _objectRune = ds_map_find_value(upgrade_data, "object")
	draw_sprite(sprRuneFireActive, 1, x, y);
	
	//var _icon = ds_map_find_value(upgrade_data, "icon");
	//if (_icon == sprRuneFire1) {
	//	draw_sprite(sprFireTooltip, 0, x, y+300);
	//} else if (_icon == sprRuneIce1) {
	//	draw_sprite(sprIceTooltip, 0, x, y+300);
	//} else if (_icon == sprRuneWind1) {
	//	draw_sprite(sprWindTooltip, 0, x, y+300);
	//} 
}

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
