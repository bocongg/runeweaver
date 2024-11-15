//draw self flipped the right way
switch(state) {
	case 0:
		draw_sprite_ext(sprite_index, image_index, x, y, face, image_yscale, image_angle, image_blend, image_alpha);
		break;
	case 1:
		draw_sprite_ext(sprEnemyWolfAttack, image_index, x, y, face, image_yscale, image_angle, image_blend, image_alpha);
		break;
}

//draw_text(x, y,string(hp)+"/"+string(maxHp));

//draw hp
var _healthPercent = hp / maxHp;
var _hpImage = _healthPercent * (sprite_get_number(sprEnemyHealthBar) - 1);
draw_sprite_ext(sprEnemyHealthBar, _hpImage, x, y - sprite_height/2 - 10, 2, 2, image_angle, image_blend, image_alpha);