// Get the display width and height
var display_width = 1920;
var display_height = 1080;

//draw a black recetangle over the screen

//set the draw color to black
draw_set_color(c_black);

//draw a filled black rectangle covering the entire screen
draw_set_alpha(alpha * alphaMax);
draw_rectangle(0, 0, 1920, 1080, false);

//draw the text 
//"game over"
draw_set_alpha(alpha);
draw_set_color(c_white);
draw_set_font(fntMedium); 
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(1920/2, 1080/2 - 100, "You gained 25% heatlh successfully!");

//"press shoot to restart"
//set the draw color to white
draw_set_color(c_white);
draw_set_font(fntMedium);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(1920/2, 1080/2 + 50, "- Press Shoot to Continue -");

//reset the alpha
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);