// Assign Variable
// // Set frame based on current volume.
image_index = audio_get_master_gain(0) > 0;

// Draw Self
// // Draw self, this is the button sprite.
draw_self();

// Draw Sprite Transformed
// // Draw the little speaker icon.
draw_sprite_ext(sprSoundButton, image_index, x + 0, y + 0, image_xscale, image_yscale, image_angle, $FFFFFF & $ffffff, image_alpha);
