// Draw Self
// // Draw self, this is the button sprite.
draw_self();

// Set Font
// // Set font.
draw_set_font(fntMedium);

// Set Text Alignment
// // Center align drawn text horizontally and vertically.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Set Draw Colour
// // Set color to opaque white.
draw_set_colour($FFFFFFFF & $ffffff);
var l0F89EFBB_0=($FFFFFFFF >> 24);
draw_set_alpha(l0F89EFBB_0 / $ff);

// Draw Transformed Value
// // Draw start text.
draw_text_transformed(x + 0, y + 15, string("START") + "", image_xscale, image_yscale, image_angle);
