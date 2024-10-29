//draw self flipped the right way
switch(state) {
	case 0:
		draw_sprite_ext(sprite_index, image_index, x, y, face, image_yscale, image_angle, image_blend, image_alpha);
		break;
	case 1:
		draw_sprite_ext(sprFinalBossInitialAttack, image_index, x, y, face, image_yscale, image_angle, image_blend, image_alpha);
		break;
}


//draw hp
var _healthPercent = hp / maxHp;
var _hpImage = _healthPercent * (sprite_get_number(sprEnemyHealthBarEnragedBoss) - 1);
//draw_text(x, y,string(hp)+"/"+string(maxHp));
draw_sprite_ext(sprEnemyHealthBarEnragedBoss, _hpImage, x, y - sprite_height/2 - 10, 2, 2, image_angle, image_blend, image_alpha);
