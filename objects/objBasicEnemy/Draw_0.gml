//draw self flipped the right way
draw_sprite_ext(sprite_index, image_index, x, y, face, image_yscale, image_angle, image_blend, image_alpha);

//draw hp
// Set the color to red
draw_set_color(c_red);
draw_text( x, y, string (hp));