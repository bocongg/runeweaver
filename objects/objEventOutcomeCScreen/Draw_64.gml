// Draws the upgrade background.
draw_sprite(sprUIHomeScreen2, 0, 1920 / 2, 1080 / 2);

// Sets the draw colour and alpha.
draw_set_colour(c_black);
draw_set_alpha(0.4);

//// Draws rectangle over screen.
//draw_rectangle(261, 148, 1659, 932, 0);
// Draws rectangle over screen.
draw_rectangle(0, 0, 1920, 1080, 0);

// Sets the draw colour and alpha.
draw_set_colour(c_white);
draw_set_alpha(1);

// Sets the heading font.
draw_set_font(fntLarge);

// Sets the text alighnment.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draws the heading.
draw_text(1920 / 2 - 380, 175, "You offered");
draw_sprite(spr_item, global.eventCRuneID, 1920 / 2, 175)
draw_text(1920 / 2 + 400, 175, "and received:");

draw_set_font(fntMedium);
draw_set_halign(fa_left);
draw_set_valign(fa_top);