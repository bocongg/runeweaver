function runeHoverTooltip(iid){
	if ((iid == item.firerune1) ||(iid == item.firerune2) || (iid == item.firerune3)){
		var _x_topleft = x - 144
		var _y_topleft = y - 490
		var _x_btmright = x + 144
		var _y_btmright = y - 58
		
		draw_set_colour(c_white);
		draw_rectangle(_x_topleft, _y_topleft, _x_btmright, _y_btmright, false);
		draw_set_colour(c_black);
		draw_text(_x_topleft + 10, _y_topleft + 10, global.item_index[# iid, item_stat.name]);
		draw_text(_x_topleft + 10, _y_topleft + 50, global.item_index[# iid, item_stat.basicAttackName]);
		draw_text(_x_topleft + 10, _y_topleft + 90, global.item_index[# iid, item_stat.basicAttackDescription]);
		draw_text(_x_topleft + 10, _y_topleft + 210, global.item_index[# iid, item_stat.specialAttackName]);
		draw_text(_x_topleft + 10, _y_topleft + 250, global.item_index[# iid, item_stat.specialAttackDescription]);
		draw_set_colour(c_white);
	}
	if ((iid == item.icerune1) || (iid == item.icerune2) || (iid == item.icerune3)){
		var _x_topleft = x - 144
		var _y_topleft = y - 450
		var _x_btmright = x + 144
		var _y_btmright = y - 58
		
		draw_set_colour(c_white);
		draw_rectangle(_x_topleft, _y_topleft, _x_btmright, _y_btmright, false);
		draw_set_colour(c_black);
		draw_text(_x_topleft + 10, _y_topleft + 10, global.item_index[# iid, item_stat.name]);
		draw_text(_x_topleft + 10, _y_topleft + 50, global.item_index[# iid, item_stat.basicAttackName]);
		draw_text(_x_topleft + 10, _y_topleft + 90, global.item_index[# iid, item_stat.basicAttackDescription]);
		draw_text(_x_topleft + 10, _y_topleft + 210, global.item_index[# iid, item_stat.specialAttackName]);
		draw_text(_x_topleft + 10, _y_topleft + 250, global.item_index[# iid, item_stat.specialAttackDescription]);
		draw_set_colour(c_white);
	}
	if ((iid == item.windrune1) || (iid == item.windrune2) || (iid == item.windrune3)){
		var _x_topleft = x - 144
		var _y_topleft = y - 420
		var _x_btmright = x + 144
		var _y_btmright = y - 58
		
		draw_set_colour(c_white);
		draw_rectangle(_x_topleft, _y_topleft, _x_btmright, _y_btmright, false);
		draw_set_colour(c_black);
		draw_text(_x_topleft + 10, _y_topleft + 10, global.item_index[# iid, item_stat.name]);
		draw_text(_x_topleft + 10, _y_topleft + 50, global.item_index[# iid, item_stat.basicAttackName]);
		draw_text(_x_topleft + 10, _y_topleft + 90, global.item_index[# iid, item_stat.basicAttackDescription]);
		draw_text(_x_topleft + 10, _y_topleft + 210, global.item_index[# iid, item_stat.specialAttackName]);
		draw_text(_x_topleft + 10, _y_topleft + 250, global.item_index[# iid, item_stat.specialAttackDescription]);
		draw_set_colour(c_white);
	}
	if ((iid == item.frostfirerune2) || (iid == item.frostfirerune3)){
		var _x_topleft = x - 144
		var _y_topleft = y - 350
		var _x_btmright = x + 144
		var _y_btmright = y - 58
		
		draw_set_colour(c_white);
		draw_rectangle(_x_topleft, _y_topleft, _x_btmright, _y_btmright, false);
		draw_set_colour(c_black);
		draw_text(_x_topleft + 10, _y_topleft + 10, global.item_index[# iid, item_stat.name]);
		draw_text(_x_topleft + 10, _y_topleft + 50, global.item_index[# iid, item_stat.specialAttackName]);
		draw_text(_x_topleft + 10, _y_topleft + 120, global.item_index[# iid, item_stat.specialAttackDescription]);
		draw_set_colour(c_white);
	}
	if ((iid == item.blizzardrune2) || (iid == item.blizzardrune3)){
		var _x_topleft = x - 144
		var _y_topleft = y - 290
		var _x_btmright = x + 144
		var _y_btmright = y - 58
		
		draw_set_colour(c_white);
		draw_rectangle(_x_topleft, _y_topleft, _x_btmright, _y_btmright, false);
		draw_set_colour(c_black);
		draw_text(_x_topleft + 10, _y_topleft + 10, global.item_index[# iid, item_stat.name]);
		draw_text(_x_topleft + 10, _y_topleft + 50, global.item_index[# iid, item_stat.specialAttackName]);
		draw_text(_x_topleft + 10, _y_topleft + 90, global.item_index[# iid, item_stat.specialAttackDescription]);
		draw_set_colour(c_white);
	}
	if ((iid == item.infernorune2) || (iid == item.infernorune3)){
		var _x_topleft = x - 144
		var _y_topleft = y - 320
		var _x_btmright = x + 144
		var _y_btmright = y - 58
		
		draw_set_colour(c_white);
		draw_rectangle(_x_topleft, _y_topleft, _x_btmright, _y_btmright, false);
		draw_set_colour(c_black);
		draw_text(_x_topleft + 10, _y_topleft + 10, global.item_index[# iid, item_stat.name]);
		draw_text(_x_topleft + 10, _y_topleft + 50, global.item_index[# iid, item_stat.specialAttackName]);
		draw_text(_x_topleft + 10, _y_topleft + 90, global.item_index[# iid, item_stat.specialAttackDescription]);
		draw_set_colour(c_white);
	}
	if (iid == item.prismrune3){
		var _x_topleft = x - 144
		var _y_topleft = y - 380
		var _x_btmright = x + 144
		var _y_btmright = y - 58
		
		draw_set_colour(c_white);
		draw_rectangle(_x_topleft, _y_topleft, _x_btmright, _y_btmright, false);
		draw_set_colour(c_black);
		draw_text(_x_topleft + 10, _y_topleft + 10, global.item_index[# iid, item_stat.name]);
		draw_text(_x_topleft + 10, _y_topleft + 50, global.item_index[# iid, item_stat.specialAttackName]);
		draw_text(_x_topleft + 10, _y_topleft + 120, global.item_index[# iid, item_stat.specialAttackDescription]);
		draw_set_colour(c_white);
	}
}