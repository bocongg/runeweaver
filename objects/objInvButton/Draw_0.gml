// Draw Self
draw_self();

// Set Font
draw_set_font(fntMedium);

// Set Text Alignment
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw Value
draw_text(x + 0, y + 0,  + string(text));

// Set Text Alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_font(fntMedium)