//set the draw color to black
draw_set_color(c_black);

//draw a filled black rectangle covering the entire screen
draw_set_alpha(alpha * alphaMax);
draw_rectangle(0, 0, 1920, 1080, false);

draw_sprite(sprGainHealth, 0, 1920/2, 1080/2);


////reset the alpha
draw_set_alpha(1);
draw_set_color(c_white);