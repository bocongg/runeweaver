//get cam coordinates
var _camX = camera_get_view_x(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);

with(objEquipBasic){
	draw_sprite(sprRuneEquipBasic, 0, _camX+104, _camY+873)

	var basicAttack = global.attack_slot[# 0, 0];

	draw_sprite(spr_item, basicAttack, _camX+107, _camY+888)
	
	if (instance_exists(objPlayer)){
		var _cdPercent = objPlayer.shootTimerBasic / objPlayer.basicAttack.cooldown;
		var _cdImage = _cdPercent * (sprite_get_number(spr_item_cooldown) - 1);
		draw_sprite(spr_item_cooldown, _cdImage, _camX+107, _camY+888);
		
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(_camX+104, _camY+873+90,string(objPlayer.shootTimerBasic));
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		
	}
}

with(objEquipSpecial){
	draw_sprite(sprRuneEquipSpecial, 0, _camX+224, _camY+873)

	var specialAttack = global.attack_slot[# 1, 0];

	draw_sprite(spr_item, specialAttack, _camX+223, _camY+888)
	if (instance_exists(objPlayer) && global.attack_slot[# 1, 0] != item.none){
		var _cdPercent = objPlayer.shootTimerSpecial / objPlayer.specialAttack.cooldown;
		var _cdImage = _cdPercent * (sprite_get_number(spr_item_cooldown) - 1);
		draw_sprite(spr_item_cooldown, _cdImage, _camX+223, _camY+888);
		
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(_camX+224, _camY+873+90,string(objPlayer.shootTimerSpecial));
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	}
}

//draw player's hp
var _healthPercent = global.playerHp / global.playerMaxHp;
var _hpImage = _healthPercent * (sprite_get_number(sprPlayerHealthBar) - 1);

// Position the health bar at the top-left corner of the view
var healthbar_x = _camX + 284; 
var healthbar_y = _camY + 96;
draw_sprite(sprPlayerHealthBar, _hpImage, healthbar_x, healthbar_y);

//draw shop items
draw_sprite(sprHUDEnergyDrink, 0, _camX + 450, _camY + 134);
var _drinkString = "x " + string(global.energyDrink);
draw_set_font(fntMedium);
draw_text(_camX + 450 + 20, _camY + 134 - 10, _drinkString);

draw_sprite(sprHUDLuckyBell, 0, _camX + 361, _camY + 134);
var _bellString = "x " + string(global.goldChance);
draw_set_font(fntMedium);
draw_text(_camX + 361 + 20, _camY + 134 - 10, _bellString);

//draw the player's gold
var _goldString = "x " + string(global.gold);
image_speed = 0.2;

// Calculate the top-right corner of the view
var gold_x = _camX + 1628;
var gold_y = _camY + 96; // Adjust the vertical offset as needed


draw_sprite(sprGold, image_index, gold_x, gold_y);
draw_set_font(fntMedium);
draw_text(gold_x + 30, gold_y - 10, _goldString);
