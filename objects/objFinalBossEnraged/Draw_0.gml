//draw self flipped the right way
switch(state) {
	case 0:
		draw_sprite_ext(sprFinalBossEnragedWalking, image_index, x, y, face*2, 2, image_angle, image_blend, image_alpha);
		break;
	case 1:
		draw_sprite_ext(sprFinalBossEnragedAttack, image_index, x, y, face*2, 2, image_angle, image_blend, image_alpha);
		break;
}


//draw hp
var _healthPercent = hp / maxHp;
var _hpImage = _healthPercent * (sprite_get_number(sprEnemyHealthBar) - 1);
draw_text(x, y,string(hp)+"/"+string(maxHp));

draw_sprite_ext(sprEnemyHealthBar, _hpImage, x, y - sprite_height, 4, 4, image_angle, image_blend, image_alpha);