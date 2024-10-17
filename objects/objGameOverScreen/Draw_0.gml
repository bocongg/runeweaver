//// Get the display width and height
//var display_width = 1920;
//var display_height = 1080;

////draw a black recetangle over the screen

////set the draw color to black
//draw_set_color(c_black);

////draw a filled black rectangle covering the entire screen
//draw_set_alpha(alpha * alphaMax);
//draw_rectangle(0, 0, display_width, display_height, false);

////draw the text 
//	//"game over"
//		draw_set_alpha(alpha);
	
//		//set the draw color to white (or whatever color you want for the text)
//		draw_set_color(c_white);
	
//		//set the font and ensure to use the name of your font resource
//		draw_set_font(fntLarge); 
//		draw_set_halign(fa_center);
//		draw_set_valign(fa_middle);
//		var text1 = "Game Over";

//		//get the width and height of the text
//		var text_width = string_width(text1);
//		var text_height = string_height(text1);

//		// Calculate the position to center the text
//		var text_x = (display_width / 2) - (text_width / 2);
//		var text_y = (display_height / 2) - (text_height / 2);

//		// Move the text1 up by 100 pixels (you can adjust this value)
//		text_y -= 100;

//		// Draw the centered text
//		draw_text(text_x, text_y, text1);
	
//	//"press shoot to restart"
//		//set the draw color to white
//		draw_set_color(c_white);
	
//		//set the font and ensure to use the name of your font resource
//		draw_set_font(fntMedium); 
//		var text2 = "- Press Shoot to Restart -";

//		//get the width and height of the text
//		var text_width = string_width(text2);
//		var text_height = string_height(text2);

//		// Calculate the position to center the text
//		var text_x = (display_width / 2) - (text_width / 2);
//		var text_y = (display_height / 2) - (text_height / 2);

//		// Move the text2 down by 50 pixels
//		text_y += 50; 
		
//		// Draw the centered text
//		draw_text(text_x, text_y, text2);

//	//reset the alpha
//	draw_set_alpha(1);
	
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
draw_set_font(fntLarge); 
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(1920/2, 1080/2 - 100, "Game Over");

//"press shoot to restart"
//set the draw color to white
draw_set_color(c_white);
draw_set_font(fntMedium);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(1920/2, 1080/2 + 50, "- Press Shoot to Restart -");

//reset the alpha
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);