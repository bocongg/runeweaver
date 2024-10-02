// Assign Variable
// // Set frame.
image_index = 1;

// Draw Self
// // Draw self, this is the button sprite.
draw_self();

// Draw Sprite Transformed
// // Draw the exit icon.
draw_sprite_ext(sprExitButton, 0, x + 0, y + 0, image_xscale, image_yscale, image_angle, $FFFFFF & $ffffff, image_alpha);
