

////var _xx = bbox_left + 236;
////var _yy = bbox_top + 480;

////instance_create_layer(_xx, _yy, "RunesInventory", objFireRune1)
////instance_create_layer(_xx + 135, _yy, "RunesInventory", objIceRune1)
//draw_set_font(fntMedium);

//for (var i = 0; i < inventorySlots; i += 1){
//	var xx = bbox_left + 236 + (i mod rowLength) * 135;
//	var yy = bbox_top + 480 + (i div rowLength) * 176;
//	if (inventory[i] != -1){
//		instance_create_layer(xx, yy, "RunesInventory", inventory[i]);
//		//draw_text(xx + 40, yy + 50,  + string(inventory[i][runeAmount]));
//	}
//}
//draw_set_font(fntMedium);