//get cam coordinates
var _camX = camera_get_view_x(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);

//if (!instance_exists(objInventory)){
//	instance_create_layer(_camX + 1664, _camY + 992, "UpgradeScreenBase", objInvButton);
//}


with(objEquipBasic){
	//if (!instance_exists(objEquipBasic)){
	//	instance_create_layer(_camX+104, _camY+873, "RunesInventory", objEquipBasic)
	//}
	
	draw_sprite(sprRuneEquipBasic, 0, _camX+104, _camY+873)

	var basicAttack = global.attack_slot[# 0, 0];

	draw_sprite(spr_item, basicAttack, _camX+107, _camY+888)
}

with(objEquipSpecial){
	draw_sprite(sprRuneEquipSpecial, 0, _camX+224, _camY+873)

	var specialAttack = global.attack_slot[# 1, 0];

	draw_sprite(spr_item, specialAttack, _camX+223, _camY+888)
}

//draw player's hp
var _healthPercent = global.playerHp / global.playerMaxHp;
var _hpImage = _healthPercent * (sprite_get_number(sprPlayerHealthBar) - 1);

// Position the health bar at the top-left corner of the view
var healthbar_x = _camX + 284; 
var healthbar_y = _camY + 96;
draw_sprite(sprPlayerHealthBar, _hpImage, healthbar_x, healthbar_y);

//draw the player's gold
var _goldString = "X " + string(global.gold);
image_speed = 0.2;

// Calculate the top-right corner of the view
var gold_x = _camX + 1628;
var gold_y = _camY + 96; // Adjust the vertical offset as needed


draw_sprite(sprGold, image_index, gold_x, gold_y);
draw_set_font(fntMedium);
draw_text(gold_x + 30, gold_y - 10, _goldString);
