//draw self flipped the right way
draw_sprite_ext(sprite_index, image_index, x, y, face/2, image_yscale/2, image_angle, image_blend, image_alpha);

//draw_text(x, y,string(hp)+"/"+string(maxHp));

//draw hp
var _healthPercent = hp / maxHp;
var _hpImage = _healthPercent * (sprite_get_number(sprEnemyHealthBar) - 1);
draw_sprite(sprEnemyHealthBar, _hpImage, x, y - sprite_height/2 - 10);
