draw_set_color(c_black);
draw_set_alpha(0.7);
draw_rectangle(0, 0, 1920, 1080, false);

//draw the text 
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(fntLarge); 
draw_text(1920/2, 1080/2 - 400, "Welcome to Training Room!");

draw_set_font(fntMedium);
draw_text(1920/2, 1080/2 - 300, "Check your inventory for a surprise ;)");

draw_text(1920/2, 1080/2 - 200, "Press '1' : Spawn Lion Enemy");
draw_text(1920/2, 1080/2 - 150, "Press '2' : Spawn Lizard Enemy");
draw_text(1920/2, 1080/2 - 100, "Press '3' : Spawn Spider Enemy");
draw_text(1920/2, 1080/2 - 50, "Press '4' : Spawn Wolf Enemy");
draw_text(1920/2, 1080/2 - 0, "Press '5' : Spawn Worm Enemy");
draw_text(1920/2, 1080/2 + 50, "Press '6' : Spawn Big Bad Wolf Enemy");
draw_text(1920/2, 1080/2 + 100, "Press '7' : Spawn ENRAGED Big Bad Wolf Enemy");

draw_text(1920/2, 1080/2 + 200, "Press 'Q' : Regain full health");
draw_text(1920/2, 1080/2 + 250, "Press 'R' : Drink 1 Energy Drink");
draw_text(1920/2, 1080/2 + 300, "Press 'F' : Reset Speed");

draw_set_color(c_red);
draw_text(1920/2 - 250, 1080/2 + 400, "Press 'T' : Restart Game");
draw_set_color(c_white);
draw_text(1920/2, 1080/2 + 400, "|");
draw_set_color(c_yellow);
draw_text(1920/2 + 250, 1080/2 + 400, "Click anywhere to close");

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);