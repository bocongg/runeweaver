// Draws the upgrade background.
draw_sprite(sprUIHomeScreen, 0, 1920 / 2, 1080 / 2);

// Sets the draw colour and alpha.
draw_set_colour(c_black);
draw_set_alpha(0.4);

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

if (((global.stage == 2 || global.stage == 3) && !global.runeScreenShownStage2n3) ||
	 (global.stage == 7 && !global.runeScreenShownStage7)){
	draw_text(1920 / 2, 175, "Choose Rune (1/2)");
	
} else if (((global.stage == 2 || global.stage == 3) && global.runeScreenShownStage2n3) ||
			(global.stage == 7 && global.runeScreenShownStage7)){
	draw_text(1920 / 2, 175, "Choose Rune (2/2)");
	
} else if (global.stage == 4 && global.runeScreenShownStage4 == 0){
	draw_text(1920 / 2, 175, "Choose Rune (1/3)");
} else if (global.stage == 4 && global.runeScreenShownStage4 == 1){
	draw_text(1920 / 2, 175, "Choose Rune (2/3)");
} else if (global.stage == 4 && global.runeScreenShownStage4 == 2){
	draw_text(1920 / 2, 175, "Choose Rune (3/3)");
	
} else {
	draw_text(1920 / 2, 175, "Choose Rune");
}

draw_set_font(fntMedium);
draw_set_halign(fa_left);
draw_set_valign(fa_top);