draw_self();

draw_set_color(c_red);
draw_set_font(fntPause);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x + 0, y + 0,  + string(text));

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);