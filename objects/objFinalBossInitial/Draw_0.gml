//draw self flipped the right way
if (enraged == false){
	switch(state) {
		case 0:
			draw_sprite_ext(sprite_index, image_index, x, y, face, image_yscale, image_angle, image_blend, image_alpha);
			break;
		case 1:
			draw_sprite_ext(sprFinalBossInitialAttack, image_index, x, y, face, image_yscale, image_angle, image_blend, image_alpha);
			break;
	}
} else {
	switch(state) {
		case 0:
			draw_sprite_ext(sprFinalBossEnragedWalking, image_index, x, y, face*2, 2, image_angle, image_blend, image_alpha);
			break;
		case 1:
			draw_sprite_ext(sprFinalBossEnragedAttack, image_index, x, y, face*2, 2, image_angle, image_blend, image_alpha);
			break;
	}
}


//draw hp
var _healthPercent = hp / maxHp;
var _hpImage = _healthPercent * (sprite_get_number(sprEnemyHealthBar) - 1);
if (enraged == false){
	draw_sprite_ext(sprEnemyHealthBar, _hpImage, x, y - sprite_height, 2, 2, image_angle, image_blend, image_alpha);
} else {
	draw_sprite_ext(sprEnemyHealthBar, _hpImage, x, y - sprite_height, 4, 4, image_angle, image_blend, image_alpha);
}