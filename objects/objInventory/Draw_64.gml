draw_self();
//var _item_x = item_pos * 176;
var _xx = bbox_left + 236;
var _yy = bbox_top + 480;
//draw_sprite(spr_Inventory_Selected, item_pos_index, _xx, _yy + _item_x);
instance_create_layer(_xx, _yy, "RunesInventory", objFireRune1)
instance_create_layer(_xx + 135, _yy, "RunesInventory", objIceRune1)


//item_pos_index += 0.2;
//for(var i = 0; i < 3; i += 1)
//    {
//    if !(item_array[i, item_type] == item_none)
//        {
//			if (i == 0) {
//				item_array[0][item_type] = itemFireRune1
//				draw_sprite(item_array[i, item_sprite], 0, _xx, _yy);
//				draw_text(_xx + 40, _yy + 50,  + string(item_array[i, item_amount]));
//			}
//			if (i == 1) {
//				item_array[1][item_type] = itemFireRune2
//				draw_sprite(item_array[i, item_sprite], 0, _xx, _yy);
//				draw_text(_xx + 40, _yy + 50,  + string(item_array[i, item_amount]));
//			}
//			if (i == 2) {
//				item_array[2][item_type] = itemIceRune1
//				draw_sprite(item_array[i, item_sprite], 0, _xx, _yy);
//				draw_text(_xx + 40, _yy + 50,  + string(item_array[i, item_amount]));
//			}
//	}
//    _yy += 176;
//}