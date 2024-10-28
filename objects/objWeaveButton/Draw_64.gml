// Draw Self
if (canWeave){
	draw_self();
} else {
	draw_sprite_ext(sprButton, 3, x, y, 0.5, 0.5, 0, c_white, 1)
}

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