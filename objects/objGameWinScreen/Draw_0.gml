draw_set_alpha(alpha * alphaMax);
draw_sprite(sprGameWinScreen, 0, x, y);

draw_set_color(c_yellow);
draw_set_font(fntMedium);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(1920/2, 1080/2 + 300, "- Press Shoot to Exit -");

//reset everything
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_font(fntMedium);
draw_set_halign(fa_left);
draw_set_valign(fa_top);